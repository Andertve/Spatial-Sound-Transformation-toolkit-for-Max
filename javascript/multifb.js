// Build + auto-wire around a waveshaper "minus W" path based on ambisonic order.
//
// Scripting names this JS manages (must be in the SAME patcher):
//   fromAmbiAll_fb               : mc.unpack~  (O+1)^2          // unpack all HOA (incl W)
//   toAmbiAll_fb                 : mc.pack~    (O+1)^2          // pack all HOA (incl W)
//   toAmbiWaveshapeminusW_fb     : mc.pack~    (O+1)^2 - 1      // pack non-W to feed waveshaper
//   fromAmbiWaveshapeminusW_fb   : mc.unpack~  (O+1)^2 - 1      // unpack processed non-W back
//
// Wiring done by this script:
//   1) fromAmbiAll outlet 0            -> toAmbiAll inlet 0           (W preserved)
//   2) fromAmbiAll outlets 1..N-1      -> toAmbiWaveshapeminusW 0..N-2 (feed waveshaper)
//   3) fromAmbiWaveshapeminusW 0..N-2  -> toAmbiAll inlets 1..N-1      (return processed)
//
// Inlet 0: integer O (ambisonic order, O >= 0)

inlets = 1;
outlets = 0;

var O = 5;               // default order
var BOX_W = 60, BOX_H = 12;

// Retry timing (for growing orders, we keep attempting)
var FIRST_DELAY_MS = 20;
var RETRY_EVERY_MS = 20;
var MAX_TRIES      = 100;

var _task = null;
var _tries = 0;
var _didCleanup = false;

function loadbang() {
    _rebuild_then_wire();
}

function msg_int(n) {
    O = Math.max(0, parseInt(n,10) || 0);
    _rebuild_then_wire();
}

// Optional alias
function setorder(n){ msg_int(n); }
function forceconnect(){ _schedule_wire(1); }

// -------------------- internals --------------------

function _rebuild_then_wire() {
    var total  = (O + 1) * (O + 1);
    var minusW = Math.max(0, total - 1);

    // Ensure all four boxes exist with correct arg counts; keep positions if present
    _replace_with_rect("fromAmbiAll_fb",             "mc.unpack~", Math.max(1, total));
    _replace_with_rect("toAmbiAll_fb",               "mc.pack~",   Math.max(1, total));
    _replace_with_rect("toAmbiWaveshapeminusW_fb",   "mc.pack~",   Math.max(1, minusW));
    _replace_with_rect("fromAmbiWaveshapeminusW_fb", "mc.unpack~", Math.max(1, minusW));

    _didCleanup = false;
    _schedule_wire(FIRST_DELAY_MS);
}

function _replace_with_rect(name, klass, argN) {
    var p = this.patcher;
    var box = p.getnamed(name);
    var x = 0, y = 0;
    try { if (box && box.rect && box.rect.length === 4) { x = box.rect[0]; y = box.rect[1]; } } catch(e){}
    // Replace/create with compact size
    p.message("script", "replace", name, "newex", x, y, BOX_W, BOX_H, klass, argN);
    p.message("script", "sendbox", name, "rect", x, y, x + BOX_W, y + BOX_H);
}

function _schedule_wire(delay) {
    _tries = 0;
    if (!_task) _task = new Task(_wire_attempt, this);
    _task.schedule(delay);
}

function _wire_attempt() {
    var done = _try_wire_now();
    if (done) return;
    if (++_tries < MAX_TRIES) _task.schedule(RETRY_EVERY_MS);
    else post("[ambi-router] gave up after ", MAX_TRIES, " tries (O=", O, ")\n");
}

function _try_wire_now() {
    var p = this.patcher;

    // Ensure all names exist before wiring attempt
    var a  = p.getnamed("fromAmbiAll_fb");
    var pa = p.getnamed("toAmbiAll_fb");
    var pm = p.getnamed("toAmbiWaveshapeminusW_fb");
    var fm = p.getnamed("fromAmbiWaveshapeminusW_fb");
    if (!a || !pa || !pm || !fm) return false;

    // One-time, silent cleanup just between the pairs we manage
    if (!_didCleanup) {
        try { p.disconnect(a,  -1, pa, -1); } catch(e){}
        try { p.disconnect(a,  -1, pm, -1); } catch(e){}
        try { p.disconnect(fm, -1, pa, -1); } catch(e){}
        _didCleanup = true;
    }

    var total  = (O + 1) * (O + 1);
    var minusW = Math.max(0, total - 1);

    // 1) W path: outlet 0 -> inlet 0 (do this every pass; Max will ignore duplicates)
    try { p.message("script", "connect", "fromAmbiAll_fb", 0, "toAmbiAll_fb", 0); } catch(e){}

    // 2) Feed minus-W to waveshaper pack: outlets 1..total-1 -> inlets 0..minusW-1
    for (var k = 0; k < minusW; k++) {
        try { p.message("script", "connect", "fromAmbiAll_fb", k + 1, "toAmbiWaveshapeminusW_fb", k); } catch(e){}
    }

    // 3) Return processed minus-W back into full pack: fm 0..minusW-1 -> pa 1..total-1
    for (var j = 0; j < minusW; j++) {
        try { p.message("script", "connect", "fromAmbiWaveshapeminusW_fb", j, "toAmbiAll_fb", j + 1); } catch(e){}
    }

    // On growth (e.g., 3->5), earlier passes might be ignored until IO appears; retries will fill in.
    // Quiet success note (optional):
    // post("[ambi-router] wired O=", O, " total=", total, " minusW=", minusW, " (pass ", _tries, ")\n");
    return true;
}