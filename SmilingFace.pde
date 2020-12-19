//Global Variables
float faceSquareX, faceSquareY, faceSquareSide;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, lEyeDiameter;
float rightEyeX, rightEyeY, rEyeDiameter;
float pupilLeftEyeX, pupilLeftEyeY, pupilLEyeDiameter;
float pupilRightEyeX, pupilRightEyeY, pupilREyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2;
float measlesX, measlesY, measlesDiameter;
float mouthThick;
//
color yellow = #FFD70D, blue = #90E2FF, pink = #D135B4, green = #124D15, peach = #F2DEC9;
color measlesColor = yellow, eyesColor = blue, noseColor = pink, mouthColor = green, face = peach;
//
int resetWhite, resetBlack, reset;
int display;
//
void setup() {
  fullScreen(display);
  //if (width > height) shortSide = height; //Shorter Side
  //println(shortSide);
  //Populating Variables
  faceSquareX = width*1/2-height*1/2;
  faceSquareY = height*0;
  faceSquareSide = height; //Shorter side
  faceX = width*1/2;
  faceY = height*1/2;
  faceDiameter = height; //Variable shortSide
  //
  leftEyeX = width*3/8;
  leftEyeY = height*1/4;
  lEyeDiameter = height/5;
  //
  rightEyeX = width*5/8;
  rightEyeY = height*1/4;
  rEyeDiameter = lEyeDiameter;
  //
  noseX1 = width/2;
  noseY1 = height*2/5;
  noseX2 = width*7/16;
  noseY2 = height*3/5;
  noseX3 = width*9/16;
  noseY3 = height*3/5;
  //
  mouthX1 = leftEyeX;
  mouthX2 = rightEyeX;
  mouthY1 = height*3/4;
  mouthY2 = mouthY1;
  mouthThick = height*1/20;
  //
  measlesX = 2;
  measlesY = 2;
  measlesDiameter = 5;
  measlesDiameter = 6;
  //
  //Face
  rect(faceSquareX, faceSquareY, faceSquareSide, faceSquareSide);
  fill(face);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  fill(resetWhite);
} //End Setup

void draw() {
  measlesX = random(faceSquareX+measlesDiameter, faceSquareX+faceSquareSide-measlesDiameter);
  measlesY = random(faceSquareY, faceSquareY+faceSquareSide);
  measlesDiameter = random(height*1/20, height*1/10);
  fill(measlesColor+blue);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(resetWhite);
  //
  fill(eyesColor);
  ellipse(leftEyeX, leftEyeY, lEyeDiameter, lEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rEyeDiameter, rEyeDiameter);
  fill(resetWhite);
  //
  fill(noseColor);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  fill(resetWhite);
  //
  stroke(yellow);
  fill(mouthColor);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(resetWhite);
  fill(resetWhite);
} //End Draw
