/*
   USE A DIGITAL SENSOR (BUTTON) TO TURN LED ON AND OFF.
   USE AN ANALOG SENSOR (FSR) TO FADE A SECOND LED.

   PRINT SENSOR VALUES TO SERIAL.

*/

//set up variables for pin numbers
const int LED1 = 13;
const int LED2 = 10;  //use a PWM~ pin for sending a range of values
const int BUTTON = 8;
const int FSR = A0; //use an analog pin for analog sensors

//set up variables for sensor input values
int valButton = LOW;
int valFSR = 0;


void setup() {
  //assign pins as inputs or outputs
  pinMode (LED1, OUTPUT);
  pinMode (LED2, OUTPUT);
  pinMode (BUTTON, INPUT);
  pinMode (FSR, INPUT);

  //begin serial communication
  Serial.begin (9600);
}

void loop() {
  //read and save incoming values from sensors
  valButton = digitalRead (BUTTON);
  valFSR = analogRead (FSR);

  //remap the values from 0-1023 to 0-255
  valFSR = map (valFSR, 0, 1023, 0, 255);

  if (valButton == HIGH) {  //if button is pressed
    digitalWrite (LED1, HIGH);  //turn on LED1
  } else {
    digitalWrite (LED1, LOW);  //else keep it off
  }

  analogWrite (LED2, valFSR);  //use value from analog sensor to control LED2


  //print values to Serial Monitor
  Serial.println (valFSR);
  //Serial.println (valButton);
}
