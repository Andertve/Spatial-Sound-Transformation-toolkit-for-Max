// tester_blur.js
// Sync all spat5.hoa.blur~ named hoa_blur, hoa_blur[1], ...

inlets = 1;
outlets = 0;

var O = 5;            // HOA order (variable)
var MAX_COPIES = 64;  // scan cap
var W = 20, H = 12;   // compact size

// Single-atom init string for @initwith (no literal quotes around it here)
var BLUR_INIT = "/mode linear-spread";

function loadbang() { update_all(); }

function msg_int(n) {
    if (inlet === 0) {
        O = Math.max(0, parseInt(n, 10) || O);
        update_all();
    }
}

function update_all() {
    for (var i = 0; i < MAX_COPIES; i++) {
        var name = (i === 0) ? "hoa_blur" : ("hoa_blur[" + i + "]");
        var box = this.patcher.getnamed(name);

        var x = 0, y = 0;
        if (box && box.rect && box.rect.length === 4) {
            // preserve position; clamp size afterwards
            x = box.rect[0];
            y = box.rect[1];
        } else if (!box && i > 0) {
            // stop once sequential copies end
            break;
        }

        replace_one(name, x, y, W, H);
        // force compact rect even if attr text is long
        this.patcher.message("script", "sendbox", name, "rect", x, y, x + W, y + H);
    }
}

function replace_one(name, x, y, w, h) {
    // script replace <name> newex x y w h class args...
    this.patcher.message(
        "script", "replace", name,
        "newex", x, y, w, h,
        "spat5.hoa.blur~",
        "@order", O,            // variable
        "@dimension", 3,        // fixed (3D)
        "@mc", 1,               // fixed
        "@initwith", BLUR_INIT  // passed as a single atom (keeps quotes semantics)
    );
}