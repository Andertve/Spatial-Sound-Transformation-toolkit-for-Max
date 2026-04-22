// sptt-spectral-interp_spat

inlets = 2;
outlets = 0;

var N = 1; // inputs / source number
var O = 1; // hoa order

var MAX_COPIES = 64;
var W_VIEW = 60, H_VIEW = 12;
var W_ENC  = 60, H_ENC  = 12;

function loadbang() {
    update_all_viewers();
    update_all_encoders();
}

function msg_int(n) {
    if (inlet === 0) {
        N = n;
        update_all_viewers();
        update_all_encoders();
    } else if (inlet === 1) {
        O = n;
        update_all_encoders();
    }
}

// ===== VIEWERS =====
function update_all_viewers() {
    var foundAny = false;
    for (var i = 0; i < MAX_COPIES; i++) {
        var name = (i === 0) ? "view_spectrum" : ("view_spectrum[" + i + "]");
        var box = this.patcher.getnamed(name);

        var x = 0, y = 0;
        if (box && box.rect && box.rect.length === 4) {
            x = box.rect[0];
            y = box.rect[1];
        } else if (!box && i > 0 && !foundAny) {
            break;
        }

        // Always replace with FIXED compact size 
        replace_viewer(name, x, y, W_VIEW, H_VIEW);
        force_rect(name, x, y, W_VIEW, H_VIEW);
        foundAny = true;
    }
}

function replace_viewer(name, x, y, w, h) {
    var initwith_atom = "/source/number " + N; // one atom (space inside, no quotes)
    this.patcher.message(
        "script", "replace", name,
        "newex", x, y, w, h,
        "spat5.viewer",
        "@initwith", initwith_atom
    );
}

// ===== ENCODERS =====
function update_all_encoders() {
    var foundAny = false;
    for (var i = 0; i < MAX_COPIES; i++) {
        var name = (i === 0) ? "encode_spectrum" : ("encode_spectrum[" + i + "]");
        var box = this.patcher.getnamed(name);

        var x = 0, y = 0;
        if (box && box.rect && box.rect.length === 4) {
            x = box.rect[0];
            y = box.rect[1];
        } else if (!box && i > 0 && !foundAny) {
            break;
        }

        // Always replace with FIXED compact size
        replace_encoder(name, x, y, W_ENC, H_ENC);
        force_rect(name, x, y, W_ENC, H_ENC);
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
        "@inputs", N,
        "@mc", 1
    );
}

// ===== UTILS =====
function force_rect(name, x, y, w, h) {
    // Clamp patching rect immediately after replace to defeat autosizing
    this.patcher.message("script", "sendbox", name, "rect", x, y, x + w, y + h);
}