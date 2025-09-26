
inlets = 1;
outlets = 0;

var O = 1;                 // HOA order

var MAX_COPIES = 64;       // scan cap
var W = 60, H = 12;        // compact size

function loadbang() {
    update_all_encoders();
}

// inlet 0: order
function msg_int(n) {
    if (inlet === 0) {
        O = n;
        update_all_encoders();
    }
}

function update_all_encoders() {
    var foundAny = false;
    for (var i = 0; i < MAX_COPIES; i++) {
        var name = (i === 0) ? "encode_split" : ("encode_split[" + i + "]");
        var box = this.patcher.getnamed(name);

        var x = 0, y = 0;
        if (box && box.rect && box.rect.length === 4) {
            x = box.rect[0];
            y = box.rect[1];
        } else if (!box && i > 0 && !foundAny) {
            break; // stop when no sequential copies are found
        }

        replace_encoder(name, x, y, W, H);
        // clamp size to keep it tiny
        this.patcher.message("script", "sendbox", name, "rect", x, y, x + W, y + H);
        foundAny = true;
    }
}

function replace_encoder(name, x, y, w, h) {
    this.patcher.message(
        "script", "replace", name,
        "newex", x, y, w, h,
        "spat5.hoa.encoder~",
        "@order", O,
        "@dimension", 3,
        "@inputs", 50,
        "@mc", 1
    );
}