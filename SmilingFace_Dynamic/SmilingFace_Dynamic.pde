//Global Variables
int reset;
int display;
float faceSquareX, faceSquareY, faceSquareSide;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, lEyeDiameter;
float rightEyeX, rightEyeY, rEyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2;
float measlesX, measlesY, measlesDiameter;
float mouthThick;
color green = #124D15, blue = #90E2FF, orange = #F07D24 ;
color measlesColor = green, eyesColor = blue, noseColor = orange;

void setup() {
  fullScreen(display);  //
  //Variable Population
  populatingVariables();
  //
  //Inital Visual Data
  rect(faceSquareX, faceSquareY, faceSquareSide, faceSquareSide);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //Left Eye
  fill(eyesColor);
  ellipse(leftEyeX, leftEyeY, lEyeDiameter, lEyeDiameter);
  //Right Eye
  ellipse(rightEyeX, rightEyeY, rEyeDiameter, rEyeDiameter);
  fill(reset);
  //Nose
  fill(noseColor);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  fill(reset);
  //Mouth
  //strokeCap(); //Default ROUND
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  //
  //The Measles
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
} //End steup()

void draw() {
  measlesX = random(width);
  measlesY = random(height);
  measlesDiameter = random(height*1/20,height*1/10);
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
} //End draw()

void keyPressed() {
} //End keyPressed()

void mousePressed() {
} //End mousePressed()
