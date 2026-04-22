// encoder_inputs_and_order.js
inlets = 2;  // <- two inlets now
outlets = 0;

var O = 1;     // hoa order
var N = 1;     // inputs
var W = 20, H = 12;         // encoder size (original)
var VW = 10, VH = 12;     // viewer size (fixed, like W/H)
var SEP = 12;               // default spacing if viewer needs a first-time position

function loadbang() { update_encodeMain(); }

function msg_int(n) {
  if (inlet === 0) { N = Math.max(1, parseInt(n,10) || N); }
  else if (inlet === 1) { O = Math.max(0, parseInt(n,10) || O); }
  update_encodeMain();
}

function update_encodeMain() {
  var p = this.patcher;

  // --- encoder position (original pattern) ---
  var x = 0, y = 0;
  var box = p.getnamed("encoder_script");
  if (box && box.rect && box.rect.length === 4) { x = box.rect[0]; y = box.rect[1]; }

  // --- (re)create encoder (unchanged) ---
  p.message("script","replace","encoder_script",
    "newex", x, y, W, H,
    "spat5.hoa.encoder~",
    "@order", O,
    "@inputs", N,
    "@dimension", 3,
    "@mc", 1
  );
  p.message("script","sendbox","encoder_script","rect", x, y, x+W, y+H);

  // --- viewer position: keep existing x,y if present; else place to the right ---
  var vx = x + W + SEP, vy = y;
  var vbox = p.getnamed("viewer_script");
  if (vbox && vbox.rect && vbox.rect.length === 4) {
    vx = vbox.rect[0];
    vy = vbox.rect[1];
  }

  // IMPORTANT: single atom WITHOUT literal quotes; e.g. "/source/number 7"
  var initArg = "/source/number " + N;

  // --- (re)create viewer (same pattern as encoder) ---
  p.message("script","replace","viewer_script",
    "newex", vx, vy, VW, VH,
    "spat5.viewer",
    "@initwith", initArg
  );
  p.message("script","sendbox","viewer_script","rect", vx, vy, vx+VW, vy+VH);
}