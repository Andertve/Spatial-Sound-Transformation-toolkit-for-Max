// ambi_minusW_autopack_blindwire_quiet.js
// Resize + blind wiring with quiet (silent) disconnects and retry connects.
//
// Objects (same patch as this JS):
//   Ambi_minus_W : mc.unpack~  -> (O+1)^2 - 1 outlets (excludes W)
//   AmbiAll      : mc.pack~    -> (O+1)^2   inlets   (includes W)
//
// Wiring: for k = 0 .. (O+1)^2-2, connect Ambi_minus_W k -> AmbiAll (k+1).
// AmbiAll inlet 0 is always left free.
//
// Inlet 0: integer ambisonic order O (>=0)

inlets = 1;
outlets = 0;

var O = 5;                 // default order
var BOX_W = 60, BOX_H = 12;

// Retry budget
var FIRST_DELAY_MS = 20;
var RETRY_EVERY_MS = 20;
var MAX_TRIES      = 80;

var _task = null;
var _tries = 0;
var _didCleanupThisCycle = false; // <-- only disconnect once per resize

function loadbang() {
    _resize_then_wire();
}

function msg_int(n) {
    O = Math.max(0, parseInt(n,10) || 0);
    _resize_then_wire();
}

// convenience
function setorder(n){ msg_int(n); }
function forceconnect(){ _schedule_wire(1); }

// -------------------- internals --------------------

function _resize_then_wire() {
    var total  = (O + 1) * (O + 1);
    var minusW = Math.max(0, total - 1);

    _replace_with_rect("Ambi_minus_W", "mc.unpack~", Math.max(1, minusW));
    _replace_with_rect("AmbiAll",      "mc.pack~",   Math.max(1, total));

    _didCleanupThisCycle = false;
    _schedule_wire(FIRST_DELAY_MS);
}

function _replace_with_rect(name, klass, argN) {
    var p = this.patcher;
    var box = p.getnamed(name);
    var x = 0, y = 0;
    try { if (box && box.rect && box.rect.length === 4) { x = box.rect[0]; y = box.rect[1]; } } catch(e){}
    p.message("script", "replace", name,
              "newex", x, y, BOX_W, BOX_H,
              klass, argN);
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
    else post("[Ambi] wiring: gave up after ", MAX_TRIES, " tries (O=", O, ")\n");
}

function _try_wire_now() {
    var p   = this.patcher;
    var src = p.getnamed("Ambi_minus_W");
    var dst = p.getnamed("AmbiAll");
    if (!src || !dst) return false;

    // One-time silent cleanup between the pair (no console spam)
    if (!_didCleanupThisCycle) {
        try { p.disconnect(src, -1, dst, -1); } catch(e){}
        try { p.disconnect(src, -1, dst,  0); } catch(e){} // ensure inlet 0 free
        _didCleanupThisCycle = true;
    }

    // Blind-connect the intended set for this order (name-based, robust)
    var total  = (O + 1) * (O + 1);
    var want   = Math.max(0, total - 1);  // k=0..want-1  -> inlet (k+1)

    var sent = 0;
    for (var k = 0; k < want; k++) {
        try {
            p.message("script", "connect", "Ambi_minus_W", k, "AmbiAll", k + 1);
            sent++;
        } catch(e){}
    }

    // If we issued all intended connects this pass, consider done;
    // subsequent passes (after growth) will add any that were ignored earlier.
    // We don't print disconnect warnings anymore.
    // Uncomment the next line if you want a quiet progress ping:
    // post("[Ambi] pass ", _tries, ": attempted ", sent, "/", want, " connects\n");

    return (sent === want);
}