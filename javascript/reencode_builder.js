// reencode_manager_replace.js
// Updates triads via "script replace" in the exact style of spat_decode_manager.js
// Boxes (with optional [1], [2], ...):
//   view_ReEncode
//   spat_decode_ReEncode
//   spat_encode_ReEncode
//
// Inlet 0: int = order (1..9)
// Outlet 0: status/debug (symbol)
// Outlet 1: K (mapped number)

inlets = 1;
outlets = 2;

autowatch = 1;

var NAME_VIEW = "view_ReEncode";
var NAME_DEC  = "spat_decode_ReEncode";
var NAME_ENC  = "spat_encode_ReEncode";

var MAX_COPIES = 64;

// Compact, stable size (same idea as your working script)
var W = 5, H = 12;

// order → K lookup
var LUT = {1:4, 2:12, 3:24, 4:36, 5:49, 6:64, 7:81, 8:100, 9:144};
var O = 5;                // order
var K = LUT[O];           // mapped number

function status(s){ outlet(0, s); post("[reencode_replace] " + s + "\n"); }
function clamp(v,a,b){ return Math.max(a, Math.min(b, v)); }
function nm(base,i){ return (i===0)? base : base+"["+i+"]"; }

function getbox(name){
    try { return this.patcher.getnamed(name); } catch(e){ return null; }
}

function box_xy(box){
    var x = 0, y = 0;
    try {
        if (box && box.rect && box.rect.length === 4) {
            x = box.rect[0];
            y = box.rect[1];
        }
    } catch(e){}
    return [x,y];
}

function clamp_rect(name, x, y){
    // Force the exact compact size after replace (prevents any growth)
    try {
        this.patcher.message("script", "sendbox", name, "rect", x, y, x + W, y + H);
    } catch(e){}
}

// ---------- replace helpers (mirror your basis exactly) ----------
function replace_view(name, x, y){
    // ONE-atom init string (no literal quotes)
    var init_atom = "/source/number " + K;
    this.patcher.message(
        "script", "replace", name,
        "newex", x, y, W, H,
        "spat5.viewer",
        "@initwith", init_atom
    );
    clamp_rect(name, x, y);
}

function replace_decoder(name, x, y){
    // match your earlier requirement: "/method SAD"
    var init_atom = "/method SAD";
    this.patcher.message(
        "script", "replace", name,
        "newex", x, y, W, H,
        "spat5.hoa.decoder~",
        "@order", O,
        "@outputs", K,
        "@dimension", "3D",
        "@mc", 1,
        "@initwith", init_atom
    );
    clamp_rect(name, x, y);
}

function replace_encoder(name, x, y){
    this.patcher.message(
        "script", "replace", name,
        "newex", x, y, W, H,
        "spat5.hoa.encoder~",
        "@dimension", 3,
        "@inputs", K,
        "@order", O,
        "@mc", 1
    );
    clamp_rect(name, x, y);
}

// ---------- per-index update ----------
function update_index(i){
    var nV = nm(NAME_VIEW, i);
    var nD = nm(NAME_DEC,  i);
    var nE = nm(NAME_ENC,  i);

    var bV = getbox(nV);
    var bD = getbox(nD);
    var bE = getbox(nE);

    if (!bV && !bD && !bE) return false;

    if (bV) { var p = box_xy(bV); replace_view(nV, p[0], p[1]); }
    if (bD) { var q = box_xy(bD); replace_decoder(nD, q[0], q[1]); }
    if (bE) { var r = box_xy(bE); replace_encoder(nE, r[0], r[1]); }

    return true;
}

// ---------- apply all ----------
function apply_all(){
    var foundAny = false;
    for (var i = 0; i < MAX_COPIES; i++) {
        var hit = update_index(i);
        if (i > 0 && !hit && !foundAny) break; // stop when sequential copies end
        if (hit) foundAny = true;
    }
    outlet(1, K);
    status("applied O="+O+" → K="+K + (foundAny ? "" : " (no named boxes found)"));
}

// ---------- inlet ----------
function msg_int(n){
    var o = clamp(parseInt(n,10), 1, 9);
    if (isNaN(o)) return;
    O = o; K = LUT[O];
    apply_all();
}

function bang(){ apply_all(); }
function getstate(){ outlet(1,K); status("state O="+O+" K="+K); }
function loadbang(){ apply_all(); }