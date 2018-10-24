/*
TESTING BUTTON TRIGGER
*/

int buttonWidth=115;
int buttonHeight=115; 

boolean button=false;

void setup() {
  size(700, 700);
  background(0);

//button
  textAlign(CENTER, CENTER); 
  rectMode(CENTER); 
  textSize(77);
} 

void draw() {
  background(0);

  //button 
  fill(0);
  stroke(255);
  rect(width/2, height-100, buttonWidth, buttonHeight);
  fill (255);
  text("?", width/2, height-100);
}

void mousePressed() {
  if (mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY> height-100 - buttonHeight/2 && mouseY< height-100 + buttonHeight/2) {
    button=true;
  }
  //(place whatever button should trigger here)
  println (button); 
  button=false; //returns button state to false;
}
