//Global Variables
float shortSide;
float moonSquareX, moonSquareY, moonSquareSide;
float moonX, moonY, moonDiameter; 
float stringThin;
float stringX1, stringY1, stringX2, stringY2;
//
//Display Geometry
fullScreen(); //displayWidth & displayHeight
//if (width > height) shortSide = height; //Shorter Side
//println(shortSide);

//Populating Variables
moonSquareX = width*1/2-height*1/2;
moonSquareY = height;
moonSquareSide = height; //Shorter side
moonX = width*1/4;
moonY = height*1/4;
moonDiameter = height; //Variable shortSide
stringThin = ;
stringX1 = ;
stringY1 = ;
stringX2 = ;
stringY2 = ;

//
//Moon
rect(moonSquareX, moonSquareY, moonSquareSide, moonSquareSide);
ellipse(moonX, moonY, moonDiameter, moonDiameter);
//
//Balloon
//strokeCap(); //Default 
strokeWeight(stringThin);
line(stringX1, stringY1, stringX2, stringY2); 
//
