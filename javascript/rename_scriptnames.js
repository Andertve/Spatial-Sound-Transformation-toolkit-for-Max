// parent_sync_bpatchers.js
// Sync inner varnames (e.g. 'drywet') to follow each bpatcher instance index.
// Only acts on bpatchers with @name "SSTT-Mixer.maxpat".

autowatch = 1; inlets = 1; outlets = 0;

var TARGET_BPATCHER_NAME = "SSTT-Mixer.maxpat";
var TARGET_BASES = ["drywet"];   // long name bases to affect, e.g. "drywet", add more if needed

var RETRIES = 8;     // run a few times after load/duplication
var RETRY_MS = 60;

function _extract_index(str) {
    if (!str) return null;
    var m = String(str).match(/\[(\d+)\]$/);
    return m ? m[1] : null;
}

function _base_of(longname) {
    if (!longname) return null;
    return String(longname).replace(/\[\d+\]$/,"");
}

function _sync_one_bpatcher(bp, fallbackSeq) {
    try {
        if (!bp || bp.maxclass !== "bpatcher") return;

        // only our target subpatch
        var bpname = bp.getattr && bp.getattr("name");
        if (bpname !== TARGET_BPATCHER_NAME) return;

        var sp = bp.subpatcher();
        if (!sp) return;

        // use bpatcher's own [n] if present; else fallback to enumeration order
        var host_ln = (bp.getattr && bp.getattr("longname")) ? bp.getattr("longname") : bp.varname;
        var idx = _extract_index(host_ln) || String(fallbackSeq);

        for (var o = sp.firstobject; o; o = o.nextobject) {
            try {
                var ln = (o.getattr && o.getattr("longname")) ? o.getattr("longname") : null;
                if (!ln && o.getattr) ln = o.getattr("parameter_longname"); // older Live builds
                if (!ln) continue;

                var base = _base_of(ln);
                if (!base) continue;

                // only touch our target bases (e.g. "drywet")
                var match = false;
                for (var i = 0; i < TARGET_BASES.length; i++) {
                    if (base === TARGET_BASES[i]) { match = true; break; }
                }
                if (!match) continue;

                var desired = base + "[" + idx + "]";
                if (o.varname !== desired) {
                    o.varname = desired;
                    // post("Set varname -> " + desired + "\n");
                }
            } catch (e) { /* per-object guard */ }
        }
    } catch (e) { /* per-bpatcher guard */ }
}

function _sync_all_once() {
    var seq = 0;
    for (var b = this.patcher.firstobject; b; b = b.nextobject) {
        try {
            if (b.maxclass !== "bpatcher") continue;
            // increment a sequence for fallback indexing across only our target bpatchers
            var isTarget = (b.getattr && b.getattr("name") === TARGET_BPATCHER_NAME);
            if (!isTarget) continue;
            _sync_one_bpatcher(b, ++seq);
        } catch (e) {}
    }
}

function _sync_with_retries() {
    var tries = 0;
    function step() {
        _sync_all_once();
        tries++;
        if (tries < RETRIES) {
            var t = new Task(step, this);
            t.schedule(RETRY_MS);
        }
    }
    var t0 = new Task(step, this);
    t0.schedule(1); // one scheduler tick
}

function loadbang() { _sync_with_retries(); }
function bang()     { _sync_with_retries(); }

// Optional: change targets at runtime, e.g. "setbases drywet gain pan"
function setbases() {
    TARGET_BASES = [];
    for (var i = 0; i < arguments.length; i++) TARGET_BASES.push(String(arguments[i]));
    bang();
}