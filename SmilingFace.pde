//Global Variables

float faceSquareX, faceSquareY, faceSquareSide;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, lEyeDiameter;
float rightEyeX, rightEyeY, rEyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2;
float measlesX, measlesY, measlesDiameter;
float mouthThick;
//
//Display Geometry
size(600, 400); //fullScreen(); displayWidth & displayHeight //General Geomtery: landscape, portrait, or square
//if (width > height) shortSide = height; //Shorter Side
//println(shortSide);
//Populating Variables
faceSquareX = width*1/2-height*1/2;
faceSquareY = height*0;
faceSquareSide = height; //Shorter side
faceX = width*1/2;
faceY = height*1/2;
faceDiameter = height; //Variable shortSide
leftEyeX = 2;
leftEyeY = 2;
lEyeDiameter = 2;
rEyeDiameter = 2;
rightEyeX = 2;
rightEyeY = 2;
lEyeDiameter = 2;
rEyeDiameter = 2;
noseX1 = 2;
noseY1 = 2;
noseX2 = 2;
noseY2 = 2;
noseX3 = 2;
noseY3 = 2;
mouthX1 = 2;
mouthY2 = 2;
mouthX2 = 2;
mouthY1 = 2;
measlesX = 2;
measlesY = 2;
measlesDiameter = 5;
measlesDiameter = 6;
mouthThick = 1;
//
//The Face
//
//Face
rect(faceSquareX, faceSquareY, faceSquareSide, faceSquareSide);
ellipse(faceX, faceY, faceDiameter, faceDiameter);

//Left Eye
ellipse(leftEyeX, leftEyeY, lEyeDiameter, lEyeDiameter);
//Right Eye
ellipse(rightEyeX, rightEyeY, rEyeDiameter, rEyeDiameter);
//Nose
triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
//Mouth
//strokeCap(); //Default ROUND
strokeWeight(mouthThick);
line(mouthX1, mouthY1, mouthX2, mouthY2);
//
//The Measles
ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
//
