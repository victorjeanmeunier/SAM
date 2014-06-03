/////////////////////////// FUNCTIONS ////////////////////////////

//////////////////// KEYS
void keyPressed() {
  if (key == 's') {
    save("normal_###.png");
    SaveHiRes(2);
    exit();
  }
}

// HI_RES OUTPUT - Note that the program exits once this operation has finished. Wait for export !
void SaveHiRes(int scaleFactor) {
  PGraphics hires = createGraphics(width*scaleFactor, height*scaleFactor, JAVA2D);
  beginRecord(hires);
  hires.scale(scaleFactor);
  draw();
  endRecord();
  hires.save("hires_###.png");
}

// Graphic functions
void xCross(int x, int y, float len, color c) {
  pushMatrix();
  translate(x, y);
  stroke(c);
  strokeWeight(0.3);
  line(0-len, 0-len, 0+len, 0+len); 
  line(0-len, 0+len, 0+len, 0-len);
  popMatrix();
}

void dots(int x, int y, float dia, color c) {
  pushMatrix();
  translate(x, y);
  fill(c);
  noStroke();
  ellipse(0, 0, dia, dia);
  popMatrix();
}

