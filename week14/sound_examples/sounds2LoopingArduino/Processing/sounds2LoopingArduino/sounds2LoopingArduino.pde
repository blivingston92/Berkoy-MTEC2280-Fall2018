/* 
 Loops 2 sounds, controlled by Arduino button trigger.
 
 When button is not pressed, sample 2 loops.
 When button is pressed, sample 1 loops.
 */


import processing.sound.*;   //imports Sound library from Processing
import processing.serial.*;  //imports Serial library from Processing

Serial myPort;  // creates Serial object called myPort
int val;      // creates variable for data coming from serial port

SoundFile sample1;  //creates SoundFile object called sample1;
SoundFile sample2;

String looping= "sample1";  //create variable to track which sound is looping

void setup() {
  //Load SoundFiles and designate path
  sample1 = new SoundFile(this, "sample1.aiff");
  sample2 = new SoundFile(this, "sample2.aiff");

  /*
  We must tell Processing which port to read from. 
   Run the sketch and check your console to see the results of printArray(Serial.list()); 
   and that is how you know the port to use.
   On my Mac, it is port 2 and so I open Serial.list()[2]. 
   */

  printArray(Serial.list());  // this line prints the port list to the console
  String portName = Serial.list()[1]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);

  // Play sample1 in a loop to start
  sample1.loop();
}      


void draw() {
  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.read();         // read it and store it in val
  }
  
  // control sounds via sensor
  if (val==0) {
    if (looping=="sample1") {
      sample1.stop();
      sample2.loop(); 
      looping="sample2";
    }
  } else if (val==1 && looping== "sample2") {
    sample2.stop();
    sample1.loop();
    looping= "sample1";
  }


  println("looping: " + looping + "  val: " + val);
}
