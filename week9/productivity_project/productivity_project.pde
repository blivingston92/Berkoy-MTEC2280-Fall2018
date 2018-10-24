/*
PRODUCTIVITY PROJECT
(Baking the cake)
 */

PFont lato; //creates a font with PFont class and names it lato

String state= "start"; //tracking program state

//button
boolean button=false; 
int buttonWidth= 115;
int buttonHeight=115; 

//for button fade
float opacity=0;
float fade = 1.5;

int goodLuckFall=0; //animation of good luck text

//background color
float r=0;
float g=0;
float b=0;

//fill color
float r2=0;
float g2=0;
float b2=0;

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
String whichTriviaText= " "; 
int timeText= 1; 
int triviaText= 1; 


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
  if (state=="start") {
    displayButton();
  } else if (state=="clock") {
    clock();
    displayButton();
  } else if (state=="time") {
    time();
    displayButton();
  } else if (state=="trivia") {
    trivia();
    displayButton();
  } else if (state=="end") {
    end();
  }

  println ("state: " + state);
  println ("timeText: " + timeText);
  println ("triviaText: " + triviaText);
}

void mousePressed() {
  if (mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY> height-100 - buttonHeight/2 && mouseY< height-100 + buttonHeight/2) {
    button=true;

    //state navigation
    if (state=="start") {
      state= "clock";
    } else if (state=="clock") {
      state="time";
    } else if (state=="time") {
      timeText++; //increments which text is displayed
      if (timeText>4) {
        state= "trivia";
        timeText=1; //reset before we switch states
      }
    } else if (state=="trivia") {
      triviaText= int(random(1, 4)); //returns trivia at random
      state= "end";
      triviaText=1;  //reset before we switch states
    }

    //color stuff
    r=random(255);
    g=random(255);
    b=random(255);
    r2=random(255);
    g2=random(255);
    b2=random(255);

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
    if (triviaText==1) {
      whichTriviaText= trivia1;
    } else if (triviaText==2) {
      whichTriviaText= trivia2;
    } else if (triviaText==3) {
      whichTriviaText= trivia3;
    }
  }

  button=false; //returns button state to false;
}

void displayButton() {
  //button 
  fill(0);
  stroke(255);
  rect(width/2, height-100, buttonWidth, buttonHeight);
  fill (opacity);
  text("?", width/2, height-100);
  //button fade
  opacity= opacity+fade;
  if (opacity> 255 || opacity< 0) {
    fade= -fade;
  }
}

void clock() {
  fill (255);
  text ("IT'S " + hour() + ":" + minute() + ":" + second(), width/2, height/3, 600, 600); //last two parameters set width, height of text bounding box
}

void time() {
  background (r, g, b);
  fill (r2, g2, b2);
  text (whichTimeText, width/2, height/3, 600, 600); //last two parameters set width, height of text bounding box
}

void trivia() {
  fill (255);
  text (whichTriviaText, width/2, height/3, 600, 600); //last two parameters set width, height of text bounding box
}

void end() {
  background(0);
  fill(255);
  text ("GOOD LUCK", width/2, height/3+goodLuckFall, 600, 600); 
  goodLuckFall++;
  if (goodLuckFall>height) {
    state="start";
    goodLuckFall=0;
  }
}
