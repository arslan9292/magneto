
const int groundPin = 18;             // analog input pin 4 -- ground
const int powerPin = 19;              // analog input pin 5 -- voltage
const int xPin = 3;                   // x-axis of the accelerometer
const int yPin = 2;                   // y-axis of the accelerometer
int aPin = 2;
int bPin = 4;
int cPin = 7;
int dPin = 8;
int speed = 255;                      // values from 0 to 255
int stop = 0;

void setup()
{
  Serial.begin(9600);                 // for adxl335
  Serial.begin(2400);                 // for 434 module
  pinMode(groundPin, OUTPUT);
  pinMode(powerPin, OUTPUT);
  digitalWrite(groundPin, LOW); 
  digitalWrite(powerPin, HIGH);
  pinMode(aPin, OUTPUT);
  pinMode(bPin, OUTPUT);
  pinMode(cPin, OUTPUT);
  pinMode(dPin, OUTPUT);
}

void loop()
{
  // print the sensor values:
  Serial.print(analogRead(xPin));
  // print a tab between values:
  Serial.print("\t");
  Serial.print(analogRead(yPin));
  Serial.println();
  delay(100);
  
if ((analogRead(xPin)>= && analogRead(xPin)<= ) && (analogRead(yPin)>= && analogRead(yPin)<= ))  //motors off
 {
   digitalWrite(aPin, HIGH);
   digitalWrite(bPin, LOW);
   digitalWrite(cPin, LOW);
   digitalWrite(dPin, LOW);
 }

else if ((analogRead(xPin)>= && analogRead(xPin)<= ) && (analogRead(yPin)>= && analogRead(yPin)<= ))  //fwd at rpm/4
 {
   digitalWrite(aPin, LOW);
   digitalWrite(bPin, HIGH);
   digitalWrite(cPin, LOW);
   digitalWrite(dPin, LOW);
 }
 

else if ((analogRead(xPin)>= && analogRead(xPin)<= ) && (analogRead(yPin)>= && analogRead(yPin)<= ))  // fwd at rpm/2
 {
   digitalWrite(aPin, LOW);
   digitalWrite(bPin, LOW);
   digitalWrite(cPin, HIGH);
   digitalWrite(dPin, LOW);
 }


else if ((analogRead(xPin)>= && analogRead(xPin)<= ) && (analogRead(yPin)>= && analogRead(yPin)<= ))  // fwd at rpm
 {
   digitalWrite(aPin, LOW);
   digitalWrite(bPin, LOW);
   digitalWrite(cPin, LOW);
   digitalWrite(dPin, HIGH);
 }


else if ((analogRead(xPin)>=  && analogRead(xPin)<=  ) && (analogRead(yPin)>= && analogRead(yPin)<= ))  // back
 {
   digitalWrite(aPin, HIGH);
   digitalWrite(bPin, HIGH);
   digitalWrite(cPin, LOW);
   digitalWrite(dPin, LOW);
 }


else if ((analogRead(xPin)>= && analogRead(xPin)<= ) && (analogRead(yPin)>= && analogRead(yPin)<=))  // slight rt turn
 {
   digitalWrite(aPin, HIGH);
   digitalWrite(bPin, LOW);
   digitalWrite(cPin, HIGH);
   digitalWrite(dPin, LOW);
 }


else if ((analogRead(xPin)>= && analogRead(xPin)<= ) && (analogRead(yPin)>= && analogRead(yPin)<=))  // sharp rt turn
 {
   digitalWrite(aPin, HIGH);
   digitalWrite(bPin, LOW);
   digitalWrite(cPin, LOW);
   digitalWrite(dPin, HIGH);
 }


else if ((analogRead(xPin)>= && analogRead(xPin)<= ) && (analogRead(yPin)>= && analogRead(yPin)<= ))  // rt U turn
 {
   digitalWrite(aPin, LOW);
   digitalWrite(bPin, HIGH);
   digitalWrite(cPin, HIGH);
   digitalWrite(dPin, LOW);
 }
 

else if ((analogRead(xPin)>= && analogRead(xPin)<= ) && (analogRead(yPin)>= && analogRead(yPin)<= ))  // slight left turn
 {
   digitalWrite(aPin, LOW);
   digitalWrite(bPin, HIGH);
   digitalWrite(cPin, LOW);
   digitalWrite(dPin, HIGH);
 }
 

else if ((analogRead(xPin)>= && analogRead(xPin)<= ) && (analogRead(yPin)>= && analogRead(yPin)<= ))  // sharp left turn
 {
   digitalWrite(aPin, LOW);
   digitalWrite(bPin, LOW);
   digitalWrite(cPin, HIGH);
   digitalWrite(dPin, HIGH);
 }
 

else if ((analogRead(xPin)>= && analogRead(xPin)<= ) && (analogRead(yPin)>= && analogRead(yPin)<= ))  // left U turn
{
   digitalWrite(aPin, HIGH);
   digitalWrite(bPin, HIGH);
   digitalWrite(cPin, HIGH);
   digitalWrite(dPin, LOW);
 }
  
}
