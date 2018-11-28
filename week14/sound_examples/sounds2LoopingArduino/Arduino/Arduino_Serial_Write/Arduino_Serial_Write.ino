// DEMO FOR SENDING SERIAL DATA FROM ARDUINO TO PROCESSING
//READS DIGITAL SENSOR AND WRITES VALUE TO SERIAL PORT 



const int SENSOR = 7; //sensor hooked up to digital pin 7
int val = 0;

void setup() {
  pinMode (SENSOR, INPUT);
  Serial.begin(9600); // Start serial communication at 9600 baud
}

void loop() {
  val = digitalRead(SENSOR); //read sensor and assign to variable called val
  delay(100); // Wait 100 milliseconds

  /////////Uncomment Serial.print() OR Serial.write() and not both!//////////////
  
  //Serial. println(val); //to send human-readable data to Arduino monitor
  Serial.write(val);  //to send binary data to Processing
}
