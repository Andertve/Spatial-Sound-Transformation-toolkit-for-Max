// spat_decode_manager.js
// Manages spat5.hoa.decoder~ instances named:
//   spat_decode_script, spat_decode_script[1], spat_decode_script[2], ...
// Two variables: @order (O) and @outputs (K)
// Fixed: @dimension 3D, @mc 1
// Also sets @initwith as ONE atom: "/method energypreserving, /type inphasemaxre"

inlets = 2;
outlets = 0;

var K = 1;   // outputs
var O = 1;   // order

var MAX_COPIES = 64; // scan cap
var W = 60, H = 12;  // compact size

function loadbang() {
    update_all_decoders();
    update_all_binaural(); // <-- added
}

// inlet 0: outputs (K), inlet 1: order (O)
function msg_int(n) {
    if (inlet === 0) {
        K = n;
        update_all_decoders();
        // binaural doesn't use K, so no need to update it here
    } else if (inlet === 1) {
        O = n;
        update_all_decoders();
        update_all_binaural(); // <-- added
    }
}

function update_all_decoders() {
    var foundAny = false;
    for (var i = 0; i < MAX_COPIES; i++) {
        var name = (i === 0) ? "spat_decode_script" : ("spat_decode_script[" + i + "]");
        var box = this.patcher.getnamed(name);

        var x = 0, y = 0;
        if (box && box.rect && box.rect.length === 4) {
            x = box.rect[0];
            y = box.rect[1];
        } else if (!box && i > 0 && !foundAny) {
            break; // stop when we stop finding sequential copies
        }

        replace_decoder(name, x, y, W, H);
        // Clamp size right after replace to keep it tiny
        this.patcher.message("script", "sendbox", name, "rect", x, y, x + W, y + H);
        foundAny = true;
    }
}

function replace_decoder(name, x, y, w, h) {
    // ONE-atom init string (don’t add literal quotes here)
    var initwith_atom = "/method energypreserving, /type inphasemaxre";

    this.patcher.message(
        "script", "replace", name,
        "newex", x, y, w, h,
        "spat5.hoa.decoder~",
        "@order", O,
        "@outputs", K,
        "@dimension", "3D",
        "@mc", 1,
        "@initwith", initwith_atom
    );
}

// ===== added: binaural manager (minimal change) =====

function update_all_binaural() {
    var foundAny = false;
    for (var i = 0; i < MAX_COPIES; i++) {
        var name = (i === 0) ? "spat_binaural" : ("spat_binaural[" + i + "]");
        var box = this.patcher.getnamed(name);

        var x = 0, y = 0;
        if (box && box.rect && box.rect.length === 4) {
            x = box.rect[0];
            y = box.rect[1];
        } else if (!box && i > 0 && !foundAny) {
            break; // stop when we stop finding sequential copies
        }

        replace_binaural(name, x, y, W, H);
        // Clamp size right after replace to keep it tiny
        this.patcher.message("script", "sendbox", name, "rect", x, y, x + W, y + H);
        foundAny = true;
    }
}

function replace_binaural(name, x, y, w, h) {
    this.patcher.message(
        "script", "replace", name,
        "newex", x, y, w, h,
        "spat5.hoa.binaural~",
        "@order", O,
        "@dimension", "3D",
        "@mc", 1
    );
}