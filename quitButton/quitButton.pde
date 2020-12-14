//Global Variables
//Prototyping exit with key board
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColor, blue = #5EA7FC, orange = #FCC55E, resetWhite = #FFFFFF;
//Note - Not night mode b/c blue value is high

void setup() {
  size(600, 600); //fullScreen(displayWidth, displayHeight); 
  buttonX = width*1/4;
  buttonY = height*1/4;
  buttonWidth = width*1/2;
  buttonHeight = height*1/2;
} //End setup

void draw() {
  println(mouseX, mouseY);
  if (mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) { 
    buttonColor = orange;
  } else { 
    buttonColor = blue;
  } //End If  
  fill(buttonColor);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetWhite);
} //End draw

void keyPressed() {
  if (key == 'q' || key == 'Q' ); 
  exit(); //key, not keCode
} //End keyPressed

void mousePressed() {
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) exit();
} //End mousePressed  
