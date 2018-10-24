/*
USING FONTS

Example on showing and displaying external fonts.

This font is from the family "Lato" from Google fonts at https://fonts.google.com .
Pick a font, add to your "collection" and download the collection.
Add.ttf file to your data folder.

See more on how Processing handles .ttf at https://processing.org/reference/createFont_.html 
 */

PFont lato; //creates a font with PFont class and names it lato

void setup() {
  size(800, 800);
  background(0);

  lato = createFont("Lato-Regular.ttf", 144); //Converts font from file to specified text size and assigns to lato
  textFont(lato); //Sets the current font to be drawn with the text() function
  textAlign(CENTER, CENTER); 
} 

void draw() {
  background(0);
  text ("font!", width/2, height/2);
}
