// in_bpatcher_var_longname.js
// Inside a bpatcher: find object by varname (default "drywet") in THIS subpatch
// and output its Long Name (or parameter_longname) on load/bang.

autowatch = 1;
inlets = 1;
outlets = 1;

var TARGET = "drywet";
var RETRIES = 10;
var RETRY_MS = 50;

// Set target at runtime: [target myvarname(
function target(name){ TARGET = String(name); }

function loadbang(){ _schedule_lookup(); }
function bang(){ _schedule_lookup(); }

function _schedule_lookup(){
    var tries = 0, self = this;
    function step(){
        if (_emit_once(self.patcher)) return;          // success
        if (++tries < RETRIES){
            var t = new Task(step, self); t.schedule(RETRY_MS);
        }
    }
    var t0 = new Task(step, this); t0.schedule(1);     // defer one tick
}

function _emit_once(p){
    var box = _find_here(p, TARGET);
    if (!box) return false;

    var ln = null;
    try { ln = box.getattr("longname"); } catch(e){}
    if (!ln) { try { ln = box.getattr("parameter_longname"); } catch(e){} }

    if (ln){
        outlet(0, ln);
        return true;
    }
    return false;
}

function _find_here(p, name){
    // Fast path
    try { var o = p.getnamed(name); if (o) return o; } catch(e){}
    // Fallback scan (same level only)
    for (var o = p.firstobject; o; o = o.nextobject){
        try { if (o.varname === name) return o; } catch(e){}
    }
    return null;
}