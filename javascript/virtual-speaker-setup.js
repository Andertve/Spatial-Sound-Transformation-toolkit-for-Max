// spat_virtual_script_manager.js


inlets = 1;
outlets = 0;

var S = 24;                 // default number of speakers
var MAX_COPIES = 64;       // scan cap
var W = 60, H = 12;        // compact size

function loadbang() {
    update_all_virtual();
}

// inlet 0: speakers
function msg_int(n) {
    if (inlet === 0) {
        S = n;
        update_all_virtual();
    }
}

function update_all_virtual() {
    var foundAny = false;
    for (var i = 0; i < MAX_COPIES; i++) {
        var name = (i === 0) ? "spat_virtual_script" : ("spat_virtual_script[" + i + "]");
        var box = this.patcher.getnamed(name);

        var x = 0, y = 0;
        if (box && box.rect && box.rect.length === 4) {
            x = box.rect[0];
            y = box.rect[1];
        } else if (!box && i > 0 && !foundAny) {
            break; // stop when we stop finding sequential copies
        }

        replace_virtual(name, x, y, W, H);

        // clamp size to keep it tiny regardless of attribute text
        this.patcher.message("script", "sendbox", name, "rect", x, y, x + W, y + H);
        foundAny = true;
    }
}

function replace_virtual(name, x, y, w, h) {
    this.patcher.message(
        "script", "replace", name,
        "newex", x, y, w, h,
        "spat5.virtualspeakers~",
        "@speakers", S,
        "@mc", 1
    );
}