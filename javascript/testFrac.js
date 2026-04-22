// testFrac_SN3D_norm.js
// Max JS for fractional and harmonic input → SN3D ambisonic weighting
// Outlet 0: SN3D-weighted bins
// Outlet 1: mapped back to original positions (normalized 0–1)

outlets = 2;

var output = [];

// main input handlers
function list() {
    processValues(arrayfromargs(arguments));
}

function msg_float(v) {
    processValues([v]);
}

function msg_int(v) {
    processValues([v]);
}

function anything() {
    processValues(arrayfromargs(arguments));
}

// core processing
function processValues(args) {
    output = [];
    var maxChannel = -1;

    // --- build fractional field ---
    for (var i = 0; i < args.length; i++) {
        var val = parseFloat(args[i]);
        if (isNaN(val) || val <= 0) continue;

        // handle subharmonics
        if (val < 1) val = 1 / val;

        var base = Math.floor(val);
        var lowerIdx = base - 1; // zero-based
        var frac = val - base;

        if (Math.abs(frac) < 1e-9) {
            output[lowerIdx] = (output[lowerIdx] || 0) + 1;
            if (lowerIdx > maxChannel) maxChannel = lowerIdx;
        } else {
            output[lowerIdx] = (output[lowerIdx] || 0) + (1 - frac);
            output[lowerIdx + 1] = (output[lowerIdx + 1] || 0) + frac;
            if (lowerIdx + 1 > maxChannel) maxChannel = lowerIdx + 1;
        }
    }

    // --- densify array ---
    if (maxChannel >= 0) {
        var dense = new Array(maxChannel + 1);
        for (var j = 0; j <= maxChannel; j++) {
            dense[j] = output[j] || 0;
        }
        output = dense;
    }

    // --- SN3D normalization per order ---
    // first bin = order 0 (adjust if your bin indexing differs)
    for (var i = 0; i < output.length; i++) {
        var l = i; // zero-based order
        output[i] *= Math.sqrt(2 * l + 1);
    }

    // --- map back to original input positions ---
    var mapped = mapBack(args, output);

    // --- normalize mapped values to 0–1 ---
    var maxVal = Math.max.apply(null, mapped);
    if (maxVal > 0) {
        for (var i = 0; i < mapped.length; i++) {
            mapped[i] /= maxVal;
        }
    }

    // --- output ---
    outlet(0, output); // SN3D-weighted bins
    outlet(1, mapped); // normalized amplitudes per input
}

// --- resample fractional field at original positions ---
function mapBack(args, field) {
    var result = new Array(args.length);

    for (var i = 0; i < args.length; i++) {
        var val = parseFloat(args[i]);
        if (isNaN(val) || val <= 0) {
            result[i] = 0;
            continue;
        }

        if (val < 1) val = 1 / val;

        var idx = val - 1;
        var i0 = Math.floor(idx);
        var frac = idx - i0;

        var v0 = field[i0] || 0;
        var v1 = field[i0 + 1] || 0;

        // linear interpolation
        result[i] = v0 * (1 - frac) + v1 * frac;
    }

    return result;
}

function bang() {
    if (output.length > 0) {
        outlet(0, output);
    }
}