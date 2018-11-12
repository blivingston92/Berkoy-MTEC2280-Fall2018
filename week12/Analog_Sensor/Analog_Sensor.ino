//USING SIMPLE ANALOGUE SENSOR TO FADE AN LED

   
const int ledPin = 3;     //PWM pin 3 to LED
const int sensorPin = A0; //Sensor connects to A0 analog pin


int value; //Variable to track sensor input


void setup(){
  pinMode(ledPin, OUTPUT);  //Set pin 3 as output
  Serial.begin(9600);       //Begin serial communication
}


void loop(){
  value = analogRead(sensorPin);       //Read and save analog value from sensor
  Serial.println(value);               //Print value
  value = map(value, 0, 1023, 0, 255); //Map value 0-1023 to 0-255 (PWM)
  analogWrite(ledPin, value);          //Use value to control LED
  delay(100);                          //Small delay
}
