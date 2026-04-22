// harmGen.js - Harmonic Generator with negative support (wrap-around)
autowatch = 1;

inlets = 3;
outlets = 1;

var listLength = 36;
var intervals = [0, 3, 5];
var outputPositions = null;

// --- Helper: zero array ---
function createZeroArray(len){
    var arr = new Array(len);
    for(var i = 0; i < len; i++) arr[i] = 0;
    return arr;
}

// --- Helper: wrap index (handles negatives) ---
function wrapIndex(pos){
    var p = pos % listLength;
    if(p < 0) p += listLength;
    return p;
}

// --- Bang ---
function bang(){
    generateAndOutput();
}

// --- Int ---
function msg_int(val){
    if(inlet === 1){
        listLength = Math.max(1, parseInt(val));
        post("List length set to: " + listLength + "\n");
        generateAndOutput();
    } else if(inlet === 2){
        intervals = [parseInt(val)];
        outputPositions = null;
        generateAndOutput();
    } else {
        generateAndOutput();
    }
}

// --- Float ---
function msg_float(val){
    msg_int(Math.round(val));
}

// --- Inlets ---
function inlet0(){ generateAndOutput(); }
function inlet1(val){ msg_int(val); }
function inlet2(){}

// --- List input (IMPORTANT FIX) ---
function list(){
    if(inlet === 2){
        intervals = [];
        outputPositions = [];
        
        for(var i = 0; i < arguments.length; i++){
            var val = parseFloat(arguments[i]); // allow floats too
            intervals.push(val);
            outputPositions.push(val);
        }
        
        post("Intervals set: " + intervals.join(", ") + "\n");
        generateAndOutput();
    }
}

// --- Messages ---
function anything(msg, args){
    msg = msg.toString();
    
    if(msg === "length" && args.length > 0){
        listLength = Math.max(1, parseInt(args[0]));
        post("List length set to: " + listLength + "\n");
    } 
    else if(msg === "intervals" && args.length > 0){
        intervals = [];
        outputPositions = [];
        
        for(var i = 0; i < args.length; i++){
            var val = parseFloat(args[i]);
            intervals.push(val);
            outputPositions.push(val);
        }
        
        post("Intervals set: " + intervals.join(", ") + "\n");
    } 
    else if(msg === "root" && args.length > 0){
        root(args[0]);
        return;
    } 
    else if(msg === "reset"){
        reset();
        return;
    }
    
    generateAndOutput();
}

// --- Core ---
function generateAndOutput(){
    var output = createZeroArray(listLength);

    for(var i = 0; i < intervals.length; i++){
        var val = intervals[i];
        var pos = outputPositions ? outputPositions[i] : val;

        var wrapped = wrapIndex(Math.floor(pos));
        
        output[wrapped] = val;
    }

    outlet(0, "list", output);
}

// --- Root shift (also wraps) ---
function root(rootVal){
    var r = parseInt(rootVal);
    var output = createZeroArray(listLength);

    for(var i = 0; i < intervals.length; i++){
        var pos = r + intervals[i];
        var wrapped = wrapIndex(Math.floor(pos));
        
        output[wrapped] = intervals[i];
    }

    outlet(0, "list", output);
}

// --- Reset ---
function reset(){
    listLength = 36;
    intervals = [0, 3, 5];
    outputPositions = null;
    post("Reset to defaults\n");
}