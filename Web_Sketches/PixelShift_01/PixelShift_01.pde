/*
PLEASE READ INFO TAB
*/

/////////////////////////// GLOBALS ////////////////////////////
import controlP5.*;
ControlP5 INTERFACES;
ControlWindow CW;

PImage IMG;
float R, G, B, H;
int IMGINDEX, INDEXRED, INDEXGREEN, INDEXBLUE,
TRAMEX, TRAMEY;
//int indexHUE;
/////////////////////////// SETUP ////////////////////////////

void setup() {
  background(255);
  smooth();
  ControlInit();
  noStroke();
  IMG = loadImage("Drunken_Prototype_setup_01.jpg");
  size(IMG.width, IMG.height, P2D);
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(255);
  loadPixels();
    noStroke();
   //indexHUE = (int)map(mouseX, 0, width, 1, 50);
  for (int y=0; y<IMG.height-1; y+=TRAMEY) {
    for (int x=0; x<IMG.width-1; x+=TRAMEX) {
      // Calculate image pixel array index position based on image size
      IMGINDEX = y * IMG.width + x; 
      
      // Update colour pixels
      R = red(IMG.pixels[ IMGINDEX +INDEXRED ]);
      G = green(IMG.pixels[ IMGINDEX +INDEXGREEN ]);
      B = blue(IMG.pixels[ IMGINDEX +INDEXBLUE ]);
      fill(R, G, B);
      rect(x, y, TRAMEX, TRAMEY);       
    }
  }
  updatePixels();
}

/////////////////////////// FUNCTIONS ////////////////////////////
void keyPressed() {
  if (key == 's') {
    save("normal_###.png");
    SaveHiRes(3);
    exit();
  }
}

void SaveHiRes(int scaleFactor) {
  PGraphics hires = createGraphics(width*scaleFactor, height*scaleFactor, P2D);
  beginRecord(hires);
  hires.scale(scaleFactor);
  draw();
  endRecord();
  hires.save("hires_###.png");
}





