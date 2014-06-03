/////////////////////////// FUNCTIONS ////////////////////////////
// Initialise our graphics
void  InitGraphics() {
  if (BG) {
    background(255);
  }
  // Initialise geomerative
  RG.init(this);
  RCommand.setSegmentLength(6);
  FONT = new RFont("Lato-Hairline.ttf", 260);
  GRP = FONT.toGroup("PRINT");
  VEC = new FontAgent[0];
  PNTS = GRP.getPoints();
  
  // Initialise our vectors !
  VEC = new FontAgent[PNTS.length];
  for (int i=0; i<PNTS.length;i++) {
    VEC[i] = new FontAgent(PNTS[i].x, PNTS[i].y);
  }
}

/////////////////////// KEYS
void keyPressed() {
  if (key == 'f') FREEZE = !FREEZE;
  if (FREEZE)
    noLoop(); 
  else loop();

  if (key == 'q') {
    InitGraphics();
  }
  if (key == 'b') {
    beginRecord(PDF, "Export_###.pdf");
  }

  if (key == 'e') {
    endRecord(); 
    println("DONE");
  }
  if (key == 's') {
    saveFrame("Capture_###.png");
  }
}
///////////////////// END

