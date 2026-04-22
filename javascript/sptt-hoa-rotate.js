// tester_rotate.js
// Sync all spat5.hoa.rotate~ named rotate_script, rotate_script[1], ...

inlets = 1;
outlets = 0;

var O = 1;           // HOA order
var MAX_COPIES = 64; // scan cap
var W = 20, H = 12; // compact size

function loadbang() { update_all(); }

function msg_int(n) {
    if (inlet === 0) {
        O = n;
        update_all();
    }
}

function update_all() {
    for (var i = 0; i < MAX_COPIES; i++) {
        var name = (i === 0) ? "rotate_script" : ("rotate_script[" + i + "]");
        var box = this.patcher.getnamed(name);

        var x = 0, y = 0, w = W, h = H;
        if (box && box.rect && box.rect.length === 4) {
            // preserve position; size will be clamped below
            x = box.rect[0];
            y = box.rect[1];
        } else if (!box && i > 0) {
            // stop once we stop finding sequential copies
            break;
        }

        replace_one(name, x, y, w, h);
        // force compact rect even if text is long
        this.patcher.message("script", "sendbox", name, "rect", x, y, x + W, y + H);
    }
}

function replace_one(name, x, y, w, h) {
    this.patcher.message(
        "script", "replace", name,
        "newex", x, y, w, h,
        "spat5.hoa.rotate~",
        "@order", O,
        "@dimension", 3,
        "@mc", 1
    );
}