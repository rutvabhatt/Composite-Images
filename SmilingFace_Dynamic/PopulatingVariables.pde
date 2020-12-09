void populatingVariables() {
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
  mouthX1 = width/2;
  mouthX2 = height/2;
  mouthY2 = height/2;
  mouthY1 = width/2;
  mouthThick = 1;
  //
  measlesX = 2;
  measlesY = 2;
  measlesDiameter = 5;
  measlesDiameter = 6;
  reset = 1;
} //End populatingVariables()
