// tester_focus.js
// Sync all spat5.hoa.focus~ named hoa_focus, hoa_focus[1], ...

inlets = 1;
outlets = 0;

var O = 5;            // HOA order (variable)
var MAX_COPIES = 64;  // scan cap
var W = 20, H = 12;   // compact size

function loadbang() { update_all(); }

function msg_int(n) {
    if (inlet === 0) {
        O = Math.max(0, parseInt(n,10) || O);
        update_all();
    }
}

function update_all() {
    for (var i = 0; i < MAX_COPIES; i++) {
        var name = (i === 0) ? "hoa_focus" : ("hoa_focus[" + i + "]");
        var box = this.patcher.getnamed(name);

        var x = 0, y = 0;
        if (box && box.rect && box.rect.length === 4) {
            // preserve position; size will be clamped after replace
            x = box.rect[0];
            y = box.rect[1];
        } else if (!box && i > 0) {
            // stop once sequential copies end
            break;
        }

        replace_one(name, x, y, W, H);
        // force compact rect even if attribute string is long
        this.patcher.message("script", "sendbox", name, "rect", x, y, x + W, y + H);
    }
}

function replace_one(name, x, y, w, h) {
    // script replace <name> newex x y w h class args...
    this.patcher.message(
        "script", "replace", name,
        "newex", x, y, w, h,
        "spat5.hoa.focus~",
        "@order", O,
        "@dimension", 3,   // 3D mode -> use 3 (as with other spat5.* objs)
        "@mc", 1
    );
}