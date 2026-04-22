// simpleharmGenerator.js
autowatch = 1;
inlets = 3; // 0 = list, 1 = listLength, 2 = spread option
outlets = 1;

var listLength = 36;
var spread = 1;

// ==============================
// ===== HELPER FUNCTIONS =======
function ratioToCents(r){
    return 1200 * Math.log(r)/Math.log(2);
}

// ==============================
// ===== MAIN LIST FUNCTION =====
function list(){
    if(arguments.length < 1){
        post("Send numbers or fractions: 1/1 3/2 9/8 -12 2 7 ...\n");
        return;
    }

    var vals = [];

    for(var i=0; i<arguments.length; i++){
        var val = arguments[i];

        if(typeof val === "string" && val.indexOf("/") >= 0){
            // Fraction → JI ratio → cents
            var parts = val.split("/");
            var num = parseFloat(parts[0]);
            var den = parseFloat(parts[1]);
            if(den === 0){
                post("Warning: denominator is zero at index " + i + "\n");
                val = 0;
            } else {
                val = ratioToCents(num/den);
            }
        } else {
            // Number → interval × 100 cents
            val = parseFloat(val) * 100;
        }

        vals.push(val);
    }

    // Map to output array
    var output = [];
    for(var i=0;i<listLength;i++) output[i] = 0;

    var N = vals.length;

    if(N === 1){
        output[0] = vals[0];
    } else {
        if(spread){
            // Evenly spread across array
            for(var i=0;i<N;i++){
                var idx = Math.round(i*(listLength-1)/(N-1));
                output[idx] = vals[i];
            }
        } else {
            // Place values sequentially starting at 0
            for(var i=0;i<N;i++){
                if(i >= listLength) break;
                output[i] = vals[i];
            }
        }
    }

    outlet(0,"list",output);
    post("Intervals output, length " + listLength + ", spread: " + (spread? "yes":"no") + "\n");
}

// ==============================
// ===== SET LIST LENGTH =========
function msg_int(val){
    if(inlet === 1){
        listLength = Math.max(1, parseInt(val));
        post("List length set to: " + listLength + "\n");
    } else if(inlet === 2){
        spread = val ? 1 : 0;
        post("Spread option set to: " + (spread ? "yes" : "no") + "\n");
    }
}

// ==============================
// ===== BANG OUTPUT ============
function bang(){
    post("Send fractions or numbers as intervals\n");
}