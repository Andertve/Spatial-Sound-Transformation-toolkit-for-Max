/*
SPTT_RouterManager.js
Robust, deferred rebuild of router boxes + optional calls to a Combiner
(local or remote via named bus).

Managed compact (60x12) boxes:
  mc.unpack~   SPTT_3D      // total channels (all ambisonics)
  mc.unpack~   HorisOnly    // horizontal-only (no W)
  mc.unpack~   ElOnly       // elevated-only
  mc.pack~     SPTT_2D      // 2D incl. W
  mc.pack~     El_only      // elevated-only
  mc.pack~     HplusE       // all channels (merge)

Public API (messages to [js SPTT_RouterManager]):
  setIOFromOrder <O>
  setIOCount <N>
  setAutoConnect <0|1>         // enable/disable post-rebuild auto-connect
  setUseLocal <0|1>            // call local combiner JS by scripting name
  setUseBus <0|1>              // also broadcast on named bus (safe if no receiver)
  setCombinerName <js_varname> // local combiner JS scripting name
  setCombinerBus <symbol>      // bus name for messnamed (default "SPTT_COMBINER_API")
*/

inlets = 1;
outlets = 0;

// ---------- Sizes ----------
var ROUTER_W = 40, ROUTER_H = 12;

// ---------- Auto-connect strategy ----------
var AUTO_CONNECT = 1;                 // default: on
var USE_LOCAL = 0;                    // call local combiner JS by name?
var USE_BUS = 1;                      // broadcast via messnamed?
var LOCAL_COMBINER_NAME = "SPTT_CombinerJS";
var COMBINER_BUS = "SPTT_COMBINER_API";

// Timing
var AUTOCONNECT_DELAY_MS = 10;        // first wait after rebuild
var CHECK_INTERVAL_MS = 10;           // poll cadence
var CHECK_TRIES_MAX = 80;             // ~800ms max wait
var REBUILD_DELAY_MS = 5;             // debounce rebuild

// ---------- State ----------
var useOrderMode = true;              // default: order-based
var orderO = 1;
var manualCount = 2;

var cntTotal3D = manualCount;   // total channels
var cntHorisOnly = manualCount; // horizontal-only (no W)
var cntElev = manualCount;      // elevated-only
var cntPack2D = manualCount;    // 2D incl. W
var cntPackEl = manualCount;    // elevated-only

// Schedulers
var rebuildTask = null;
var postConnectTask = null;
var rebuildInProgress = false;
var checkTries = 0;

// ---------- Lifecycle ----------
function loadbang() {
    _recompute_counts();
    _schedule_rebuild();
}

// ---------- Public API ----------
function setIOFromOrder(o) {
    var v = parseInt(o,10);
    if (isNaN(v) || v < 0) { post("RouterManager: setIOFromOrder invalid\n"); return; }
    useOrderMode = true;
    orderO = v;
    _recompute_counts();
    _schedule_rebuild();
}

function setIOCount(n) {
    var v = parseInt(n,10);
    if (isNaN(v) || v <= 0) { post("RouterManager: setIOCount invalid\n"); return; }
    useOrderMode = false;
    manualCount = v;
    _recompute_counts();
    _schedule_rebuild();
}

function setAutoConnect(v) { AUTO_CONNECT = (parseInt(v,10) === 1) ? 1 : 0; post("AUTO_CONNECT = "+AUTO_CONNECT+"\n"); }
function setUseLocal(v)    { USE_LOCAL    = (parseInt(v,10) === 1) ? 1 : 0; post("USE_LOCAL = "+USE_LOCAL+"\n"); }
function setUseBus(v)      { USE_BUS      = (parseInt(v,10) === 1) ? 1 : 0; post("USE_BUS = "+USE_BUS+"\n"); }

function setCombinerName(s) {
    if (typeof s === "string" && s.length) { LOCAL_COMBINER_NAME = s; post("LOCAL_COMBINER_NAME = "+LOCAL_COMBINER_NAME+"\n"); }
}
function setCombinerBus(s) {
    if (typeof s === "string" && s.length) { COMBINER_BUS = s; post("COMBINER_BUS = "+COMBINER_BUS+"\n"); }
}

// ---------- Internals ----------
function _recompute_counts() {
    if (useOrderMode) {
        var O = orderO;
        var total = (O + 1) * (O + 1); // (O+1)^2
        var twoD  = 2 * O + 1;         // includes W
        var horis = 2 * O;             // excludes W
        var elev  = total - twoD;      // elevated only

        cntTotal3D   = total;  // SPTT_3D (unpack), HplusE (pack)
        cntHorisOnly = horis;  // HorisOnly (unpack)
        cntElev      = elev;   // ElOnly (unpack)
        cntPack2D    = twoD;   // SPTT_2D (pack)
        cntPackEl    = elev;   // El_only (pack)

        post("RouterManager: O="+O+" → total="+total+", 2D="+twoD+", HorisOnly="+horis+", Elev="+elev+"\n");
    } else {
        cntTotal3D = cntHorisOnly = cntElev = cntPack2D = cntPackEl = manualCount;
        post("RouterManager: manual counts = "+manualCount+"\n");
    }
}

function _schedule_rebuild() {
    if (!rebuildTask) rebuildTask = new Task(_do_rebuild, this);
    rebuildTask.schedule(REBUILD_DELAY_MS);
}

function _do_rebuild() {
    if (rebuildInProgress) return;
    rebuildInProgress = true;

    _disconnectAllRouterWires();

    _replace_with_rect("SPTT_3D",   "mc.unpack~", cntTotal3D);
    _replace_with_rect("HorisOnly", "mc.unpack~", cntHorisOnly);
    _replace_with_rect("ElOnly",    "mc.unpack~", cntElev);

    _replace_with_rect("SPTT_2D",   "mc.pack~",   cntPack2D);
    _replace_with_rect("El_only",   "mc.pack~",   cntPackEl);
    _replace_with_rect("HplusE",    "mc.pack~",   cntTotal3D);

    rebuildInProgress = false;
    _schedule_post_connect();
}

function _replace_with_rect(varname, classname, argN) {
    var p = this.patcher;
    var box = p.getnamed(varname);
    var x = 0, y = 0;
    try { if (box && box.rect && box.rect.length === 4) { x = box.rect[0]; y = box.rect[1]; } } catch (e) {}

    p.message("script", "replace", varname, "newex", x, y, ROUTER_W, ROUTER_H, classname, argN);
    p.message("script", "sendbox", varname, "rect", x, y, x + ROUTER_W, y + ROUTER_H);
}

function _disconnectAllRouterWires() {
    var p  = this.patcher;
    var A  = p.getnamed("SPTT_3D");
    var P2 = p.getnamed("SPTT_2D");
    var EL = p.getnamed("El_only");
    var W  = p.getnamed("W_only");
    var H  = p.getnamed("HorisOnly");
    var E  = p.getnamed("ElOnly");
    var HP = p.getnamed("HplusE");
    function disc(a,b){ try{ if(a&&b)p.disconnect(a,-1,b,-1); }catch(e){} }
    disc(A,P2); disc(A,EL); disc(A,W); disc(W,HP); disc(H,HP); disc(E,HP);
}

// ---------- Post-connect orchestration ----------
function _schedule_post_connect() {
    if (!AUTO_CONNECT) return;
    checkTries = 0;
    if (!postConnectTask) postConnectTask = new Task(_wait_counts_then_connect, this);
    postConnectTask.schedule(AUTOCONNECT_DELAY_MS);
}
function _wait_counts_then_connect() {
    if (_counts_ready()) _call_combiner_setorder_and_connect();
    else if (checkTries++ < CHECK_TRIES_MAX) postConnectTask.schedule(CHECK_INTERVAL_MS);
    else post("RouterManager: counts not ready; skip auto-connect\n");
}
function _counts_ready() {
    var p = this.patcher, A = p.getnamed("SPTT_3D"), P2 = p.getnamed("SPTT_2D");
    if (!A || !P2) return false;
    var outlets = A.outletcount||0, inlets = P2.inletcount||0;
    var O = useOrderMode ? orderO : null;
    var targetOut = useOrderMode ? (O+1)*(O+1) : cntTotal3D;
    var targetIn  = useOrderMode ? (2*O+1)     : cntPack2D;
    return (outlets >= targetOut) && (inlets >= targetIn);
}
function _call_combiner_setorder_and_connect() {
    // Local call?
    if (USE_LOCAL) {
        var box = this.patcher.getnamed(LOCAL_COMBINER_NAME);
        if (box) {
            try {
                if (useOrderMode) box.message("setAmbiOrder", orderO);
                box.message("connectAllGroups");
            } catch(e){ post("RouterManager: local combiner call failed: ", e, "\n"); }
        } else {
            post("RouterManager: local combiner '"+LOCAL_COMBINER_NAME+"' not found\n");
        }
    }
    // Bus broadcast? (safe if no receiver)
    if (USE_BUS) {
        try {
            if (useOrderMode) messnamed(COMBINER_BUS, "setambiorder", orderO);
            messnamed(COMBINER_BUS, "connectallgroups");
        } catch(e) { /* harmless if no receivers */ }
    }
}