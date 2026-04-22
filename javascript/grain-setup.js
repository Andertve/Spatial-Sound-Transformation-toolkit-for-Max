// granul-encoder_setup.js
// Creates/replaces two objects with stable scripting names:
// 1) spat5.granulator~ (name: "spat_gran") -> @mc 1 @outputs N @initwith "<params>"
// 2) spat5.hoa.encoder~ (name: "gran_enc") -> @mc 1 @inputs N @order O @dimension 3
//
// Inlets:
//   inlet 0: N (outputs/inputs count) -> updates BOTH objects
//   inlet 1: O (HOA order)            -> updates encoder only

inlets = 2;
outlets = 0;

var N = 36; // default outputs/inputs
var O = 5;  // default HOA order

var W = 60, H = 12; // compact UI size

// Single-atom init string (DON'T add extra quotes when passing to @initwith)
var GRAN_INIT =
    "/gain/compensation 0., " +
    "/grains/speed/variation 0., " +
    "/grains/position -10, " +
    "/delay/length 1000., " +
    "/grains/duration 102, " +
    "/grains/duration/variation 116.";

function loadbang() {
    update_gran();
    update_enc();
}

function msg_int(v) {
    if (inlet === 0) {
        N = Math.max(1, parseInt(v, 10) || N);
        update_gran();
        update_enc();
    } else if (inlet === 1) {
        O = Math.max(0, parseInt(v, 10) || O);
        update_enc();
    }
}

// If you want to accept floats too, uncomment:
// function msg_float(f) { msg_int(Math.round(f)); }

function update_gran() {
    // Preserve current position if it exists
    var x = 0, y = 0;
    var box = this.patcher.getnamed("spat_gran");
    if (box && box.rect && box.rect.length === 4) { x = box.rect[0]; y = box.rect[1]; }

    // script replace <name> newex x y w h class args...
    this.patcher.message(
        "script", "replace", "spat_gran",
        "newex", x, y, W, H,
        "spat5.granulator~",
        "@mc", 1,
        "@outputs", N,
        "@initwith", GRAN_INIT // pass as a single atom (no extra quotes)
    );

    // clamp size (in case long attr text expands the box)
    this.patcher.message("script", "sendbox", "spat_gran", "rect", x, y, x + W, y + H);
}

function update_enc() {
    var x = 0, y = 0;
    var box = this.patcher.getnamed("gran_enc");
    if (box && box.rect && box.rect.length === 4) { x = box.rect[0]; y = box.rect[1]; }

    this.patcher.message(
        "script", "replace", "gran_enc",
        "newex", x, y, W, H,
        "spat5.hoa.encoder~",
        "@mc", 1,
        "@inputs", N,      // variable
        "@order", O,       // variable
        "@dimension", 3    // fixed
    );

    this.patcher.message("script", "sendbox", "gran_enc", "rect", x, y, x + W, y + H);
}