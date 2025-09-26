/*
AmbisonicSplitter-Recombiner.js
Max/MSP JS - Ambisonics routing
*/

inlets = 1;
outlets = 0;

var t = {
    src3D: null,
    dst2D: null,
    dstElCollector: null, // El_only
    dstW: null,           // W_only
    srcHorisOnly: null,   // HorisOnly
    srcElOnly: null,      // ElOnly
    dstHplusE: null,      // HplusE
    ambiOrder: 0,
    connections: {}
};

// -------------------------------
// Utilities
// -------------------------------
function setObjects() {
    var p = this.patcher;
    t.src3D          = p.getnamed("SPTT_3D");
    t.dst2D          = p.getnamed("SPTT_2D");
    t.dstElCollector = p.getnamed("El_only");
    t.dstW           = p.getnamed("W_only");
    t.srcHorisOnly   = p.getnamed("HorisOnly");
    t.srcElOnly      = p.getnamed("ElOnly");
    t.dstHplusE      = p.getnamed("HplusE");

    if (t.src3D && t.src3D.outletcount) {
        var oc = t.src3D.outletcount;
        t.ambiOrder = Math.round(Math.sqrt(oc) - 1);
        post("ambiOrder auto-detected = " + t.ambiOrder + "\n");
    } else {
        post("ambiOrder not auto-detected — use setAmbiOrder(n) if needed\n");
    }
}

function setAmbiOrder(n) {
    var v = parseInt(n, 10);
    if (!isNaN(v) && v >= 0) {
        t.ambiOrder = v;
        post("ambiOrder manually set to " + t.ambiOrder + "\n");
    } else {
        post("setAmbiOrder: invalid value\n");
    }
}

function totalChannelsFromOrder() {
    return (t.ambiOrder + 1) * (t.ambiOrder + 1);
}

function compute2DSourceIndices() {
    var arr = [];
    var from = 0;
    for (var i = 0; i < t.ambiOrder; i++) {
        arr.push(from);
        arr.push(from + 1);
        from += 1 + (i + 1) * 2;
    }
    arr.push(from);
    return arr;
}

// -------------------------------
// Clear & report
// -------------------------------
function clearConnections() {
    var p = this.patcher;
    try {
        if (t.src3D && t.dst2D) p.disconnect(t.src3D, -1, t.dst2D, -1);
        if (t.src3D && t.dstElCollector) p.disconnect(t.src3D, -1, t.dstElCollector, -1);
        if (t.src3D && t.dstW) p.disconnect(t.src3D, -1, t.dstW, -1);
        if (t.srcHorisOnly && t.dstHplusE) p.disconnect(t.srcHorisOnly, -1, t.dstHplusE, -1);
        if (t.srcElOnly && t.dstHplusE) p.disconnect(t.srcElOnly, -1, t.dstHplusE, -1);
        post("Cleared known connections\n");
    } catch (e) {
        post("clearConnections error: " + e + "\n");
    }
    t.connections = {};
}

function reportConnections() {
    post("==== Connection Report ====\n");
    for (var key in t.connections) {
        if (!t.connections.hasOwnProperty(key)) continue;
        post("[" + key + "]\n");
        var arr = t.connections[key];
        for (var i = 0; i < arr.length; i++) {
            post("  " + arr[i][0] + " -> " + arr[i][1] + "\n");
        }
    }
    post("===========================\n");
}

// -------------------------------
// Core connections
// -------------------------------
function connect3Dto2D() {
    if (!t.src3D || !t.dst2D) setObjects();
    if (!t.src3D || !t.dst2D || t.ambiOrder <= 0) return;

    var p = this.patcher;
    var from = 0;
    t.connections["2D"] = [];

    for (var i = 0; i < t.ambiOrder; i++) {
        try {
            p.connect(t.src3D, from,     t.dst2D, i * 2);
            p.connect(t.src3D, from + 1, t.dst2D, i * 2 + 1);
            t.connections["2D"].push(["SPTT_3D:" + from, "SPTT_2D:" + (i * 2)]);
            t.connections["2D"].push(["SPTT_3D:" + (from + 1), "SPTT_2D:" + (i * 2 + 1)]);
        } catch (e) {}
        from += 1 + (i + 1) * 2;
    }
    try {
        p.connect(t.src3D, from, t.dst2D, 2 * t.ambiOrder);
        t.connections["2D"].push(["SPTT_3D:" + from, "SPTT_2D:" + (2 * t.ambiOrder)]);
    } catch (e) {}
    post("connect3Dto2D completed\n");
}

function connectElOnly() {
    if (!t.src3D || !t.dstElCollector) setObjects();
    if (!t.src3D || !t.dstElCollector) return;

    var total = t.ambiOrder > 0 ? totalChannelsFromOrder() : t.src3D.outletcount;
    var twoD = compute2DSourceIndices();
    var is2D = {};
    for (var k = 0; k < twoD.length; k++) is2D[twoD[k]] = true;

    var p = this.patcher;
    t.connections["El_only"] = [];
    var dstIndex = 0;
    for (var i = 0; i < total; i++) {
        if (!is2D[i] || i === 0) {
            try {
                p.connect(t.src3D, i, t.dstElCollector, dstIndex);
                t.connections["El_only"].push(["SPTT_3D:" + i, "El_only:" + dstIndex]);
                dstIndex++;
            } catch (e) {}
        }
    }
    post("connectElOnly done: connected " + dstIndex + " channels into El_only\n");
}

function connectW() {
    if (!t.src3D || !t.dstW) setObjects();
    if (!t.src3D || !t.dstW) return;
    try {
        this.patcher.connect(t.src3D, 0, t.dstW, 0);
        t.connections["W_only"] = [["SPTT_3D:0","W_only:0"]];
        post("connectW done\n");
    } catch (e) {}
}

function connectHplusE() {
    if (!t.dstHplusE || !t.dstW || !t.srcHorisOnly || !t.srcElOnly) setObjects();
    if (!t.dstHplusE || !t.dstW || !t.srcHorisOnly || !t.srcElOnly || t.ambiOrder <= 0) return;

    var p = this.patcher;
    var dst = t.dstHplusE;
    t.connections["HplusE"] = [];

    // Connect W from W_only to inlet 0
    try {
        p.connect(t.dstW, 0, dst, 0);
        t.connections["HplusE"].push(["W_only:0", "HplusE:0"]);
    } catch (e) {}

    // Horizontal indices: skip W at 0
    var horizontalIndices = compute2DSourceIndices().slice(1);

    // Connect HorisOnly starting at inlet 1
    for (var i = 0; i < horizontalIndices.length; i++) {
        try {
            p.connect(t.srcHorisOnly, i, dst, horizontalIndices[i]);
            t.connections["HplusE"].push(["HorisOnly:" + i, "HplusE:" + horizontalIndices[i]]);
        } catch (e) {}
    }

    // Elevated indices: everything except 0 and horizontalIndices
    var totalChannels = totalChannelsFromOrder();
    var elevatedIndices = [];
    for (var idx = 1; idx < totalChannels; idx++) {
        if (horizontalIndices.indexOf(idx) === -1) elevatedIndices.push(idx);
    }

    // Connect ElOnly
    for (var j = 0; j < elevatedIndices.length; j++) {
        try {
            p.connect(t.srcElOnly, j, dst, elevatedIndices[j]);
            t.connections["HplusE"].push(["ElOnly:" + j, "HplusE:" + elevatedIndices[j]]);
        } catch (e) {}
    }

    post("connectHplusE done: W(1) + Horizontal(" + horizontalIndices.length + ") + Elevated(" + elevatedIndices.length + ") channels\n");
}

// -------------------------------
// Convenience
function connectAllGroups() {
    clearConnections();
    connect3Dto2D();
    connectElOnly();
    connectW();
    connectHplusE();
    post("connectAllGroups completed\n");
}

// -------------------------------
// Lowercase aliases
function setobjects() { setObjects(); }
function setambiorder(n) { setAmbiOrder(n); }
function connect3dto2d() { connect3Dto2D(); }
function connectelonly() { connectElOnly(); }
function connectw() { connectW(); }
function connecthpluse() { connectHplusE(); }
function connectallgroups() { connectAllGroups(); }
function clearconnections() { clearConnections(); }
function reportconnections() { reportConnections(); }