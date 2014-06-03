/*
PLEASE READ INFO TAB 
*/


/////////////////////////// GLOBALS ////////////////////////////
import geomerative.*;
import processing.pdf.*;
import controlP5.*;

ControlP5 INTERFACES;
ControlWindow CW;

// VARS CONTROLP5
float OFFXFAC, OFFYFAC, NOISEXFAC, NOISEYFAC, NOISEAMMX;
boolean BG, ANIME1, ANIME2, ANIME3;

RFont FONT;
RGroup GRP;
RPoint[] PNTS;
FontAgent[] VEC;
boolean FREEZE = false;


color[] MYCOLOURS = {
  //  #31515C, #F5EBE1, #A69B8D, #261B17, #0D0D0D, #584359, #4CB8A4, #381C36, #7A4D24
  #381C36, #7A4D24, #B89333, #A6C73C, #335E4D
};

/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(960, 560);
  background(255);
  smooth();
  ControlInit(); // Initialise ControlP5
  InitGraphics(); // Initialise our graphics
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  translate(73, height/1.7);
  smooth();

  for (int i=0; i<PNTS.length;i++) {
    VEC[i].Render();
    //VEC[i].Update();
    if (ANIME1) {
      VEC[i].Animate1();
    }
    if (ANIME2) {
      VEC[i].Animate2();
    }
    if (ANIME3) {
      VEC[i].Animate3();
    }
  }
}

///////////////////////////////////////////// END
