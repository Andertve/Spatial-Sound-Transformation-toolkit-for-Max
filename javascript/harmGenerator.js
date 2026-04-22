autowatch = 1;

inlets = 4; 
// 0 = values
// 1 = listLength
// 2 = spread (0.0–1.0)
// 3 = interpolation (0.0–1.0)

outlets = 2;

var listLength = 49;
var spread = 1;
var interp = 1;

// state
var lastInput = [];
var lastMode = "normal"; // "normal" or "harmonic"
var lastHarmonicN = 2;
var lastSpread = -1;
var lastInterp = -1;

// ==============================
// Helpers
// ==============================
function parseValue(val){
    if(typeof val === "number") return {type:"interval", value: val};
    var s = val.toString();
    if(s.indexOf("/") >= 0){
        var parts = s.split("/");
        return {type:"ratio", value: parseFloat(parts[0])/parseFloat(parts[1])};
    }
    return {type:"interval", value: parseFloat(s)};
}

function toCents(obj){
    if(obj.type === "ratio"){
        return 1200 * Math.log(obj.value)/Math.log(2);
    } else {
        return obj.value * 100;
    }
}

function applySN3D(arr){
    var sn3d = [];
    for(var i=0;i<arr.length;i++){
        sn3d[i] = arr[i] * Math.sqrt(2*i + 1);
    }
    return sn3d;
}

function normalizeArray(arr){
    if(arr.length===0) return [];

    var absArr = [];
    for(var i=0;i<arr.length;i++){
        absArr[i] = Math.abs(arr[i]);
    }

    var min = Math.min.apply(null, absArr);
    var max = Math.max.apply(null, absArr);
    if(max === min) max = min + 1;

    var norm = [];
    for(var i=0;i<absArr.length;i++){
        norm[i] = (absArr[i] - min)/(max - min);
    }

    for(var i=0;i<norm.length;i++){
        norm[i] = 1 - norm[i];
    }

    return norm;
}

function makeZeroArray(len){
    var arr = new Array(len);
    for(var i=0;i<len;i++) arr[i] = 0;
    return arr;
}

// ==============================
// Core Processing - Normal List
// ==============================
function processList(args){
    if(args.length===0) return;

    lastInput = args.slice();
    lastMode = "normal";

    var vals = [];
    for(var i=0;i<args.length;i++){
        vals.push(toCents(parseValue(args[i])));
    }

    var output = makeZeroArray(listLength);
    var N = vals.length;

    if(N === 1){
        output[0] = vals[0];
    } else {

        for(var i=0;i<N;i++){

            var seqIdx = i;
            var spreadIdx = (N > 1)
                ? i * (listLength - 1) / (N - 1)
                : 0;

            var interpIdx = (1 - spread) * seqIdx + spread * spreadIdx;
            var idx = Math.round(interpIdx);

            if(idx < 0) idx = 0;
            if(idx >= listLength) idx = listLength - 1;

            output[idx] += vals[i];
        }
    }

    // APPLY GLOBAL INTERPOLATION
    for(var i=0;i<output.length;i++){
        output[i] *= interp;
    }

    outlet(0,"list",output);

    var sn3dVals = applySN3D(output);
    var normVals = normalizeArray(sn3dVals);
    outlet(1,"list",normVals);
}

// ==============================
// Core Processing - Harmonic Mode
// ==============================
function harmonic(n){
    n = parseInt(n);
    if(isNaN(n) || n < 1) return;

    lastMode = "harmonic";
    lastHarmonicN = n;

    var output = makeZeroArray(listLength);
    output[0] = 0; // fundamental

    for(var i=1;i<listLength;i++){
        output[i] = (n + (i-1)) * 100;
    }

    // APPLY GLOBAL INTERPOLATION
    for(var i=0;i<output.length;i++){
        output[i] *= interp;
    }

    outlet(0,"list",output);

    var sn3dVals = applySN3D(output);
    var normVals = normalizeArray(sn3dVals);
    outlet(1,"list",normVals);
}

// ==============================
// Message Handlers
// ==============================
function list(){
    processList(arrayfromargs(arguments));
}

function msg_int(v){
    handleValue(v);
}

function msg_float(v){
    handleValue(v);
}

function handleValue(v){
    if(inlet === 1){
        listLength = Math.max(1, parseInt(v));
    } 
    else if(inlet === 2){
        var newSpread = Math.max(0, Math.min(1, parseFloat(v)));
        if(Math.abs(newSpread - lastSpread) > 0.0001){
            spread = newSpread;
            lastSpread = newSpread;
            if(lastMode === "normal" && lastInput.length>0) processList(lastInput);
        }
    } 
    else if(inlet === 3){
        var newInterp = Math.max(0, Math.min(1, parseFloat(v)));
        if(Math.abs(newInterp - lastInterp) > 0.0001){
            interp = newInterp;
            lastInterp = newInterp;
            if(lastMode === "normal" && lastInput.length>0) processList(lastInput);
            else if(lastMode === "harmonic") harmonic(lastHarmonicN);
        }
    } 
    else {
        processList([v]);
    }
}

function anything(){
    var args = arrayfromargs(messagename, arguments);
    if(args[0] === "harmonic"){
        harmonic(args[1]);
    } else {
        processList(args);
    }
}