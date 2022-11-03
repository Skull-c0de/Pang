boolean battlepassActivated;

// Skins Disponibles
boolean skinRed;
boolean skinGreen;
boolean skinPink;
boolean noSkin;

// Skins Level
int skinredLevel = 20;
int skingreenLevel = 5;
int skinpinkLevel = 10;

int c1;
int c2;
int c3;

// Item obtention

void LevelCheck() {
  
 if(score == skinredLevel) {
   skinRed = true;
   skinPink = false;
 }
 if(score == skingreenLevel) {
   skinGreen = true;
   noSkin = false;
 }
 if(score == skinpinkLevel) {
   skinPink = true;
   skinGreen = false;
 }
 if(score <= 0) {
   noSkin = true;
 }
  
}

// WhatSkin
void SkinVar() {
  
if (skinGreen == true) {
  c1 = 0;
  c2 = 255;
  c3 = 0;
}
if (noSkin == true) {
  c1 = 255;
  c2 = 255;
  c3 = 255;
}
if (skinRed == true) {
  c1 = 255;
  c2 = 0;
  c3 = 0;
}
if (skinPink == true) {
  c1 = 245;
  c2 = 40;
  c3 = 145;
}

}
