//Global Variables
float faceSquareX, faceSquareY, faceSquareSide;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, lEyeDiameter;
float rightEyeX, rightEyeY, rEyeDiameter;
float pupilLeftEyeX, pupilLeftEyeY, pupilLEyeDiameter;
float pupilRightEyeX, pupilRightEyeY, pupilREyeDiameter;
float reflectionREyeX, reflectionREyeY, reflectionREyeDiameter;
float reflectionLEyeX, reflectionLEyeY, reflectionLEyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2;
float measlesX, measlesY, measlesDiameter;
float mouthThick;
color yellow = #FFD70D, blue = #90E2FF, pink = #D135B4, green = #124D15, peach = #F2DEC9, white = #FFFFFF, black = #000000;
color measlesColor = yellow, eyesColor = blue, noseColor = pink, mouthColor = green, face = peach, reflection = white, pupil = black;
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
  reflectionLEyeX = width*3.25/8;
  reflectionLEyeY = height*1/4.5;
  reflectionLEyeDiameter = height/20;
  pupilLeftEyeX = width*3/8;
  pupilLeftEyeY = height*1/4;
  pupilLEyeDiameter = height/10;
  leftEyeX = width*3/8;
  leftEyeY = height*1/4;
  lEyeDiameter = height/5;
  //
  reflectionREyeX = width*5.25/8;
  reflectionREyeY = height*1/4.5;
  reflectionREyeDiameter = height/20;
  pupilRightEyeX = width*5/8;
  pupilRightEyeY = height*1/4;
  pupilREyeDiameter = pupilLEyeDiameter;
  rightEyeX = width*5/8;
  rightEyeY = leftEyeY;
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
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(resetWhite);
  //
  fill(eyesColor);
  ellipse(leftEyeX, leftEyeY, lEyeDiameter, lEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rEyeDiameter, rEyeDiameter);
  fill(reset);
  //
  fill(black);
  ellipse(pupilLeftEyeX, pupilLeftEyeY, pupilLEyeDiameter, pupilLEyeDiameter);
  ellipse(pupilRightEyeX, pupilRightEyeY, pupilREyeDiameter, pupilREyeDiameter);
  fill(reset);
  //
  fill(white);
  ellipse(reflectionREyeX, reflectionREyeY, reflectionREyeDiameter, reflectionREyeDiameter);
  ellipse(reflectionLEyeX, reflectionLEyeY, reflectionLEyeDiameter, reflectionLEyeDiameter);
  //
  fill(noseColor);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  fill(resetWhite);
  //
  stroke(green);
  fill(mouthColor);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(resetWhite);
  fill(resetWhite);
} //End Draw
