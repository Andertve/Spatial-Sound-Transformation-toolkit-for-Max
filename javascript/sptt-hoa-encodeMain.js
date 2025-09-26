// encoder_inputs_and_order.js
inlets = 2;  // <- two inlets now
outlets = 0;

var O = 1;     // hoa order
var N = 1;     // inputs
var W = 20, H = 12;

function loadbang() { update_encodeMain(); }

function msg_int(n) {
  if (inlet === 0) { N = Math.max(1, parseInt(n,10) || N); }
  else if (inlet === 1) { O = Math.max(0, parseInt(n,10) || O); }
  update_encodeMain();
}

function update_encodeMain() {
  var p = this.patcher;
  var x = 0, y = 0;
  var box = p.getnamed("encoder_script");
  if (box && box.rect && box.rect.length === 4) { x = box.rect[0]; y = box.rect[1]; }

  p.message("script","replace","encoder_script",
    "newex", x, y, W, H,
    "spat5.hoa.encoder~",
    "@order", O,
    "@inputs", N,
    "@dimension", 3,
    "@mc", 1
  );
  p.message("script","sendbox","encoder_script","rect", x, y, x+W, y+H);
}