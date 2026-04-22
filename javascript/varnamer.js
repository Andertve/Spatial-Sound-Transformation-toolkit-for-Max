// inside bpatcher patch
function loadbang(){
    var host = this.patcher.box; // the bpatcher object in the parent
    var suffix = host ? host.id : Math.floor(Math.random()*1e9);
    var d = this.patcher.getnamed("drywet"); // original varname
    if (d) d.varname = "drywet[" + suffix + "]";
}