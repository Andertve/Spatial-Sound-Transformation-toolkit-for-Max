inlets = 1;
outlets = 0;

// DSP objects
var objects = [
    "mc.abl.dsp.prism~",
    "mc.abl.dsp.darkhall~",
    "mc.abl.dsp.shimmer~",
    "mc.abl.dsp.quartz~",
    "mc.abl.dsp.tides~"
];

// Attributes
var attrs = ["mix", "size", "decay", "damping", "chans", "freeze"];

// State
var currentObj = null;
var attrUIs = [];
var inletObj = null;
var outletObj = null;
var channelCountObj = null;
var prependObj = null;

// Layout
var baseX = 430;
var baseY = 200;
var spacingY = 30;

// -------------------- INIT --------------------

function init()
{
    findIO();
    createAttrUI();
}

// -------------------- DSP REPLACE ONLY --------------------

function clearDSP()
{
    if (currentObj) this.patcher.remove(currentObj);
    if (prependObj) this.patcher.remove(prependObj);

    currentObj = null;
    prependObj = null;
}

// -------------------- FINDERS --------------------

function findObjectByText(match)
{
    var obj = this.patcher.firstobject;
    while (obj) {
        try {
            if (obj.maxclass === "newobj" && obj.text) {
                if (obj.text.indexOf(match) !== -1) return obj;
            }
        } catch (e) {}
        obj = obj.nextobject;
    }
    return null;
}

function findIO()
{
    var obj = this.patcher.firstobject;

    inletObj = null;
    outletObj = null;

    while (obj) {
        try {
            if (!inletObj && obj.maxclass === "inlet") inletObj = obj;
            if (!outletObj && obj.maxclass === "outlet") outletObj = obj;
        } catch (e) {}
        obj = obj.nextobject;
    }
}

// -------------------- ATTRUI (PERSISTENT) --------------------

function createAttrUI()
{
    if (attrUIs.length > 0) return; // prevent duplicates

    for (var i = 0; i < attrs.length; i++) {

        var y = baseY + (i + 1) * spacingY;

        var a = this.patcher.newdefault(baseX, y, "attrui");
        a.setattr("attr", attrs[i]);

        attrUIs.push(a);
    }
}

// reconnect UI → DSP
function reconnectAttrUI()
{
    if (!currentObj) return;

    for (var i = 0; i < attrUIs.length; i++) {
        this.patcher.connect(attrUIs[i], 0, currentObj, 0);
    }
}

// -------------------- DSP BUILD --------------------

function buildDSP(index)
{
    clearDSP();

    // create DSP object
    currentObj = this.patcher.newdefault(baseX, baseY, objects[index]);

    // audio routing
    if (inletObj) this.patcher.connect(inletObj, 0, currentObj, 0);
    if (outletObj) this.patcher.connect(currentObj, 0, outletObj, 0);

    reconnectAttrUI();

    // mc.channelcount~ → chans
    channelCountObj = findObjectByText("mc.channelcount~");

    if (channelCountObj) {

        prependObj = this.patcher.newdefault(baseX - 150, baseY - 40, "prepend", "chans");

        this.patcher.connect(channelCountObj, 0, prependObj, 0);
        this.patcher.connect(prependObj, 0, currentObj, 0);
    }
}

// -------------------- ENTRY --------------------

function msg_int(v)
{
    if (v < 1 || v > objects.length) return;

    findIO();
    createAttrUI();
    buildDSP(v - 1);
}

// optional manual init call
function loadbang()
{
    init();
}