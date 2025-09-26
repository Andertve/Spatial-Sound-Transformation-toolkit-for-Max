// spectr_matrix_pack_manager_idx_locksize.js
// Indexed manager that changes channel count K without changing size/position.
// Manages pairs:
//   spectr_matrix, spectr_matrix[1], ...
//   spectr_pack,   spectr_pack[1], ...
//
// For each index i:
//   spectr_matrix[i] -> matrix~ 1 K @ramp 1500
//   spectr_pack[i]   -> mc.pack~ K
//   Auto-connect outlet j -> inlet j (j = 0..K-1)
//
// Inlet 0 (int): K (1..512) applied to ALL copies.
// Outlet 0: status/debug (symbol)
//
// ES3-safe (Max JS). No modern syntax.

inlets = 1;
outlets = 1;
autowatch = 1;

var BASE_MATRIX = "spectr_matrix";
var BASE_PACK   = "spectr_pack";
var MAX_COPIES  = 64;

var K      = 64;
var K_MIN  = 1;
var K_MAX  = 512;

// Fallback size if a rect is truly missing (rare)
var W_FALLBACK = 60;
var H_FALLBACK = 12;

// Defer to stomp any autosize after replace
var DEFER_MS = 25;

// Per-box frozen geometry & style: by varname
var BOXSTATE = {}; // name -> {x,y,w,h, pres, px,py,pw,ph, fontname, fontsize}

function status(s){ outlet(0, s); post("[spectr_locksize] " + s + "\n"); }
function clamp(v,a,b){ return Math.max(a, Math.min(b, v)); }
function nm(base,i){ return (i===0)? base : (base + "[" + i + "]"); }

function getbox(name){ try { return this.patcher.getnamed(name); } catch(e){ return null; } }

function snap_box(name, box){
    // Store the box's rect, presentation rect, and font once (if not already stored)
    if (!box) return;
    if (BOXSTATE[name]) return;

    var x=0,y=0,w=W_FALLBACK,h=H_FALLBACK;
    var pres=false, px=0,py=0,pw=0,ph=0;
    var fn=null, fs=null;

    try {
        if (box.rect && box.rect.length===4){
            x = box.rect[0]; y = box.rect[1];
            w = Math.max(1, box.rect[2]-box.rect[0]);
            h = Math.max(1, box.rect[3]-box.rect[1]);
        }
    } catch(e){}

    try { pres = !!box.getattr("presentation"); } catch(e){}
    if (pres){
        try {
            var pr = box.getattr("presentation_rect");
            if (pr && pr.length===4){
                px=pr[0]; py=pr[1]; pw=Math.max(1,pr[2]-pr[0]); ph=Math.max(1,pr[3]-pr[1]);
            }
        } catch(e){}
    }

    try { fn = box.getattr("fontname"); } catch(e){}
    try { fs = box.getattr("fontsize"); } catch(e){}

    BOXSTATE[name] = { x:x,y:y,w:w,h:h, pres:pres, px:px,py:py,pw:pw,ph:ph, fontname:fn, fontsize:fs };
}

function restore_box_now(name){
    var s = BOXSTATE[name];
    if (!s) return;
    try { this.patcher.message("script","sendbox",name,"rect", s.x, s.y, s.x+s.w, s.y+s.h); } catch(e){}
    try {
        if (s.pres) {
            this.patcher.message("script","sendbox",name,"presentation", 1);
            this.patcher.message("script","sendbox",name,"presentation_rect", s.px, s.py, s.px+s.pw, s.py+s.ph);
        }
    } catch(e){}
    try { if (s.fontname) this.patcher.message("script","sendbox",name,"fontname", s.fontname); } catch(e){}
    try { if (typeof s.fontsize === "number") this.patcher.message("script","sendbox",name,"fontsize", s.fontsize); } catch(e){}
}

function restore_box_deferred(name){
    var self = this;
    var t = new Task(function(){
        restore_box_now.call(self, name);
    }, this);
    t.schedule(DEFER_MS);
}

// ---- replace helpers: use frozen w/h so size can’t change ----
function replace_matrix(name){
    var s = BOXSTATE[name];
    var x,y,w,h;
    if (s){ x=s.x; y=s.y; w=s.w; h=s.h; }
    else {
        // If somehow not snapped yet, try to snap now from current box
        var b = getbox(name);
        snap_box(name, b);
        s = BOXSTATE[name];
        if (s){ x=s.x; y=s.y; w=s.w; h=s.h; } else { x=0; y=0; w=W_FALLBACK; h=H_FALLBACK; }
    }

    this.patcher.message(
        "script","replace",name,
        "newex", x, y, w, h,
        "matrix~", 1, K,
        "@ramp", 1500
    );
    // force geometry/style right away and after autosize
    restore_box_now(name);
    restore_box_deferred(name);
}

function replace_pack(name){
    var s = BOXSTATE[name];
    var x,y,w,h;
    if (s){ x=s.x; y=s.y; w=s.w; h=s.h; }
    else {
        var b = getbox(name);
        snap_box(name, b);
        s = BOXSTATE[name];
        if (s){ x=s.x; y=s.y; w=s.w; h=s.h; } else { x=0; y=0; w=W_FALLBACK; h=H_FALLBACK; }
    }

    this.patcher.message(
        "script","replace",name,
        "newex", x, y, w, h,
        "mc.pack~", K
    );
    restore_box_now(name);
    restore_box_deferred(name);
}

// ---- wiring helpers ----
function rewire_pair(mname, pname, k){
    var m = getbox(mname);
    var p = getbox(pname);
    if (!m || !p) return;
    var j;
    // bulk disconnect first; ignore errors if not connected
    for (j=0; j<k; j++){
        try { this.patcher.disconnect(m, j, p, j); } catch(e){}
    }
    for (j=0; j<k; j++){
        try { this.patcher.connect(m, j, p, j); } catch(e){}
    }
}

// ---- per-index update ----
function update_index(i){
    var mname = nm(BASE_MATRIX, i);
    var pname = nm(BASE_PACK,   i);

    var mbox = getbox(mname);
    var pbox = getbox(pname);

    if (!mbox && !pbox) return false;

    // Snap (freeze) geometry once, then always use that
    if (mbox) snap_box(mname, mbox);
    if (pbox) snap_box(pname, pbox);

    if (mbox) replace_matrix(mname);
    if (pbox) replace_pack(pname);

    // rewire after replace
    rewire_pair(mname, pname, K);

    return true;
}

// ---- apply to all copies ----
function apply_all(){
    var found=false;
    for (var i=0; i<MAX_COPIES; i++){
        var hit = update_index(i);
        if (i>0 && !hit && !found) break;
        if (hit) found=true;
    }
    status("applied K="+K + (found ? "" : " (no named boxes found)"));
}

// ---- inlet handlers ----
function msg_int(v){
    var k = clamp(parseInt(v,10), K_MIN, K_MAX);
    if (isNaN(k)) return;
    if (k === K){ status("K unchanged ("+K+")"); return; }
    K = k;
    apply_all();
}

function bang(){ apply_all(); }
function getstate(){ status("K="+K); }
function loadbang(){ apply_all(); }

// Optional: recapture current rects/fonts for all seen boxes
function recapture(){
    for (var name in BOXSTATE){
        if (BOXSTATE.hasOwnProperty(name)){
            var b = getbox(name);
            if (b){
                // overwrite stored state with current box properties
                BOXSTATE[name] = undefined;
                delete BOXSTATE[name];
                snap_box(name, b);
            }
        }
    }
    status("recaptured geometry/styles");
}

// Optional: set defer time (ms) if your UI still nudges
function setdefer(ms){ DEFER_MS = parseInt(ms,10) || 0; }