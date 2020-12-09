//Global Variables
//floatShortSide;
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
size(600, 600); //fullScreen(); displayWidth & displayHeight //General Geomtery: landscape, portrait, or square?
//Square
//if (width > height) shortSide = height; //Shorter Side
//println(shortSide);
//Populating Variables
faceSquareX = width*1/2-height*1/2;
faceSquareY = height*0;
faceSquareSide = height; //Shorter side
faceX = width*1/2;
faceY = height*1/2;
faceDiameter = height; //Variable shortSide

leftEyeX = width*3/8;
leftEyeY = height*1/4;
lEyeDiameter = height/5;

rightEyeX = width*5/8;
rightEyeY = height*1/4;
rEyeDiameter = lEyeDiameter;

noseX1 = width/2;
noseY1 = height*2/5;
noseX2 = width*7/16;
noseY2 = height*3/5;
noseX3 = width*9/16;
noseY3 = height*3/5;

mouthX1 = leftEyeX;
mouthX2 = height*3/4;
mouthY2 = rightEyeX;
mouthY1 = mouthX2;
mouthThick = height*1/20;

measlesX = 2;
measlesY = 2;
measlesDiameter = 5;
measlesDiameter = 6;
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
measlesX = random(width);
measlesY = random(height);
measlesDiameter = random(height*1/10, height*1/20);
//
