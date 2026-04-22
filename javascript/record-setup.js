// record_script_manager.js

inlets = 1;
outlets = 0;

var C = 36;                 // default number of channels
var MAX_COPIES = 64;       // scan cap
var W = 60, H = 12;        // compact size

function loadbang() {
    update_all_records();
}

// inlet 0: channels
function msg_int(n) {
    if (inlet === 0) {
        C = n;
        update_all_records();
    }
}

function update_all_records() {
    var foundAny = false;
    for (var i = 0; i < MAX_COPIES; i++) {
        var name = (i === 0) ? "record_script" : ("record_script[" + i + "]");
        var box = this.patcher.getnamed(name);

        var x = 0, y = 0;
        if (box && box.rect && box.rect.length === 4) {
            x = box.rect[0];
            y = box.rect[1];
        } else if (!box && i > 0 && !foundAny) {
            break; // stop when we stop finding sequential copies
        }

        replace_record(name, x, y, W, H);

        // clamp size to keep it tiny
        this.patcher.message("script", "sendbox", name, "rect", x, y, x + W, y + H);
        foundAny = true;
    }
}

function replace_record(name, x, y, w, h) {
    this.patcher.message(
        "script", "replace", name,
        "newex", x, y, w, h,
        "spat5.sfrecord~",
        "@channels", C,
        "@mc", 1
    );
}