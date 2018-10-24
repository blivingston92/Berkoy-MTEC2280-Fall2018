/*
Testing how the time Strings display
 */

PFont lato; //creates a font with PFont class and names it lato


//button
boolean button=false; 
int buttonWidth= 115;
int buttonHeight=115; 

//MUCH better to put these strings into an array, but we are not there yet!
String timeText1= "IT'S TIME"; 
String timeText2= "TO TAKE A PRODUCTIVITY INVENTORY."; 
String timeText3= "IF YOU ARE AN AVERAGE HUMAN:"; 
String timeText4= "TODAY YOU WILL";
String trivia1= "BREATHE IN 23,040 TIMES."; 
String trivia2= "BLINK 28,800 TIMES."; 
String trivia3= "SWALLOW AT LEAST 900 TIMES."; 

//variables to track which text will be displayed
String whichTimeText= " "; 
int timeText= 1; 


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
  displayButton();
  time();
  println ("timeText: " + timeText);
}


void mousePressed() {
  if (mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY> height-100 - buttonHeight/2 && mouseY< height-100 + buttonHeight/2) {
    button=true;

    //which texts to display (this code mess is better handled by arrays)
    if (timeText==1) {
      whichTimeText= timeText1;
    } else if (timeText==2) {
      whichTimeText= timeText2;
    } else if (timeText==3) {
      whichTimeText= timeText3;
    } else if (timeText==4) {
      whichTimeText= timeText4;
    }
    
    timeText++; //increments which text is displayed
  }

  button=false; //returns button state to false;
}

void displayButton() {
  //button 
  fill(0);
  stroke(255);
  rect(width/2, height-100, buttonWidth, buttonHeight);
  fill (255);
  text("?", width/2, height-100);
}

void time() {
  text (whichTimeText, width/2, height/3, 600, 600); //last two parameters set width, height of text bounding box
}
