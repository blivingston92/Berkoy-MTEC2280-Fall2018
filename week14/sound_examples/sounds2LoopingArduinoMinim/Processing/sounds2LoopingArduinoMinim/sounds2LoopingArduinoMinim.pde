
/* 
 Loops 2 audio files, controlled by sensor.
 Uses Minim Library. Install from Processing Contributed Libraries.
 Reference at http://code.compartmental.net/minim/ under AudioPlayer
 */


import ddf.minim.*; //imports minim library from Processing
import processing.serial.*;  //imports Serial library from Processing

Serial myPort;  // creates Serial object called myPort
int val;      // creates variable for data coming from serial port

Minim minim; 
AudioPlayer sample1;  //creates AudioPlayer object called sample1;
AudioPlayer sample2;

String looping= "sample1";  //creates variable to track which sound is looping

void setup() {
  minim = new Minim(this);
  //Load files and designate path
  sample1 = minim.loadFile("sample1.aiff");
  sample2 = minim.loadFile("sample2.aiff");

  /*
  We must tell Processing which port to read from. 
   Run the sketch and check your console to see the results of printArray(Serial.list()); 
   and that is how you know the port to use.
   On my Mac, it is port 2 and so I open Serial.list()[2]. 
   */

  printArray(Serial.list());  // this line prints the port list to the console
  String portName = Serial.list()[1]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);

  // Loop sample1 
  sample1.loop();
}      


void draw() {

  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.read();         // read it and store it in val
  }

  // control sounds via sensor

  if (val==0) {
    if (looping=="sample1") { //only trigger if sample1 is looping
      sample1.pause();
      sample2.loop(); 
      looping="sample2";
    }
  } else if (val==1 && looping== "sample2") {
    sample2.pause();
    sample1.loop();
    looping= "sample1";
  }


  println("looping: " + looping + "  val: " + val);
}
