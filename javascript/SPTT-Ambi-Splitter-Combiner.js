/*
AmbisonicSplitter-combiner.js
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
    connections: {},
    connectWEnabled: false // <- W wiring off by default
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
//
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
    setObjects(); // refresh after router replaces

    if (!t.src3D || !t.dst2D) {
        post("connect3Dto2D: missing SPTT_3D or SPTT_2D\n");
        return;
    }
    if (t.ambiOrder < 0) {
        post("connect3Dto2D: ambiOrder < 0 (invalid)\n");
        return;
    }

    var p = this.patcher;
    var oc = t.src3D.outletcount || 0;  // (O+1)^2
    var ic = t.dst2D.inletcount  || 0;  // (2*O+1)

    var O = t.ambiOrder;
    var expTotal = (O + 1) * (O + 1);
    var exp2D    = 2 * O + 1;

    if (oc < expTotal) post("connect3Dto2D: WARNING src3D outlets=", oc, " < ", expTotal, " (O=", O, ")\n");
    if (ic < exp2D)    post("connect3Dto2D: WARNING dst2D inlets=", ic, " < ", exp2D, " (O=", O, ")\n");

    t.connections["2D"] = [];
    var from = 0;

    for (var i = 0; i < O; i++) {
        try { p.connect(t.src3D, from,     t.dst2D, i * 2);
              t.connections["2D"].push(["SPTT_3D:" + from,     "SPTT_2D:" + (i * 2)]); }
        catch (e) { post("connect3Dto2D: fail ", from, "->", (i * 2), " [", e, "]\n"); }

        try { p.connect(t.src3D, from + 1, t.dst2D, i * 2 + 1);
              t.connections["2D"].push(["SPTT_3D:" + (from + 1), "SPTT_2D:" + (i * 2 + 1)]); }
        catch (e) { post("connect3Dto2D: fail ", (from + 1), "->", (i * 2 + 1), " [", e, "]\n"); }

        from += 1 + (i + 1) * 2;
    }

    try { p.connect(t.src3D, from, t.dst2D, 2 * O);
          t.connections["2D"].push(["SPTT_3D:" + from, "SPTT_2D:" + (2 * O)]); }
    catch (e) { post("connect3Dto2D: fail ", from, "->", (2 * O), " [", e, "]\n"); }

    post("connect3Dto2D completed (O=", O, ", src outs=", oc, ", dst inlets=", ic, ")\n");
}

function connectElOnly() {
    setObjects(); // refresh

    if (!t.src3D || !t.dstElCollector) return;

    var total = (t.ambiOrder > 0) ? totalChannelsFromOrder() : t.src3D.outletcount;
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
            } catch (e) {
                post("connectElOnly: fail ", i, "->", dstIndex, " [", e, "]\n");
            }
        }
    }
    post("connectElOnly done: connected " + dstIndex + " channels into El_only\n");
}

function connectW() {
    setObjects(); // refresh

    if (!t.src3D || !t.dstW) return;
    try {
        this.patcher.connect(t.src3D, 0, t.dstW, 0);
        t.connections["W_only"] = [["SPTT_3D:0", "W_only:0"]];
        post("connectW done\n");
    } catch (e) {
        post("connectW: fail 0->0 [", e, "]\n");
    }
}

function connectHplusE() {
    setObjects(); // refresh

    if (!t.dstHplusE || !t.dstW || !t.srcHorisOnly || !t.srcElOnly || t.ambiOrder <= 0) return;

    var p = this.patcher;
    var dst = t.dstHplusE;
    t.connections["HplusE"] = [];

    // W to inlet 0 if W_only exists and enabled
    if (t.connectWEnabled && t.dstW) {
        try {
            p.connect(t.dstW, 0, dst, 0);
            t.connections["HplusE"].push(["W_only:0", "HplusE:0"]);
        } catch (e) {
            post("connectHplusE: fail W_only:0 -> HplusE:0 [", e, "]\n");
        }
    }

    // Horizontal indices: skip W at 0
    var horizontalIndices = compute2DSourceIndices().slice(1);

    // HorisOnly starting at inlet matching index
    for (var i = 0; i < horizontalIndices.length; i++) {
        try {
            p.connect(t.srcHorisOnly, i, dst, horizontalIndices[i]);
            t.connections["HplusE"].push(["HorisOnly:" + i, "HplusE:" + horizontalIndices[i]]);
        } catch (e) {
            post("connectHplusE: fail HorisOnly:", i, " -> HplusE:", horizontalIndices[i], " [", e, "]\n");
        }
    }

    // Elevated indices: everything except 0 and horizontalIndices
    var totalChannels = totalChannelsFromOrder();
    var elevatedIndices = [];
    for (var idx = 1; idx < totalChannels; idx++) {
        if (horizontalIndices.indexOf(idx) === -1) elevatedIndices.push(idx);
    }

    // ElOnly into elevated positions
    for (var j = 0; j < elevatedIndices.length; j++) {
        try {
            p.connect(t.srcElOnly, j, dst, elevatedIndices[j]);
            t.connections["HplusE"].push(["ElOnly:" + j, "HplusE:" + elevatedIndices[j]]);
        } catch (e) {
            post("connectHplusE: fail ElOnly:", j, " -> HplusE:", elevatedIndices[j], " [", e, "]\n");
        }
    }

    post("connectHplusE done: (W ", (t.connectWEnabled? "ON" : "OFF"),
         ") + Horizontal(" + horizontalIndices.length + ") + Elevated(" + elevatedIndices.length + ")\n");
}

// -------------------------------
// Convenience
// -------------------------------
function connectAllGroups() {
    setObjects();       // refresh pointers after router replacements
    clearConnections();
    connect3Dto2D();
    connectElOnly();
    // W wiring is optional; disabled by default:
    if (t.connectWEnabled) connectW();
    connectHplusE();
    post("connectAllGroups completed\n");
}

// -------------------------------
// Toggle: enable/disable W wiring globally
// -------------------------------
function setConnectW(v) {
    t.connectWEnabled = (parseInt(v,10) === 1 || v === true);
    post("connectWEnabled = " + t.connectWEnabled + "\n");
}

// -------------------------------
// Lowercase aliases
// -------------------------------
function setobjects() { setObjects(); }
function setambiorder(n) { setAmbiOrder(n); }
function connect3dto2d() { connect3Dto2D(); }
function connectelonly() { connectElOnly(); }
function connectw() { connectW(); }
function connecthpluse() { connectHplusE(); }
function connectallgroups() { connectAllGroups(); }
function clearconnections() { clearConnections(); }
function reportconnections() { reportConnections(); }
function setconnectw(v) { setConnectW(v); }