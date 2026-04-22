inlets = 1;
outlets = 1;

// defaults
var count = 14;
var maxval = 1000.;

// constructor args: [js randomlist.js <count> <maxval>]
if (jsarguments.length > 1) {
    count = jsarguments[1];
}
if (jsarguments.length > 2) {
    maxval = jsarguments[2];
}

function bang() {
    var out = [];
    for (var i = 0; i < count; i++) {
        out.push(Math.random() * maxval);
    }
    outlet(0, out);
}