/*
TESTING LAYOUT OF TEXT + BUTTON
 */

PFont lato; //creates a font with PFont class and names it lato

int buttonWidth= 115;
int buttonHeight=115;

String test= "IF YOU ARE AN AVERAGE HUMAN";

void setup() {
  size(700, 700);
  background(0);

  lato = createFont("Lato-Regular.ttf", 144); //Converts font from file to specified text size and assigns to lato
  textFont(lato); //Sets the current font to be drawn with the text() function
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

  //text
  fill (255);
  text (test, width/2, height/3, 600, 600); //last two parameters set width, height of text bounding box
  text("?", width/2, height-100);
}
