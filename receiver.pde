
int speed = 255;                      // values from 0 to 255
int stop = 0;
int pwmLPin = 3;                      // back LEFT motor 
int pwmFLPin = 5;                     // 1st terminal Front LEFT motor
int pwmFlPin = 6;                      // 2nd terminal Front LEFT motor
int pwmFRPin = 9;                      // 1st terminal Front RIGHT motor
int pwmFrPin = 10;                     // 2nd terminal Front RIGHT motor
int pwmRPin = 11;                      // back RIGHT motor
int aPin = 2;
int bPin = 4;
int cPin = 7;
int dPin = 8;
int ePin = 12;
int fPin = 13;
int gPin = 1;
int valA = 0;
int valB = 0;
int valC = 0;
int valD = 0;

void setup()
{
  Serial.begin(2400);
  pinMode(pwmFLPin, OUTPUT);
  pinMode(pwmFlPin, OUTPUT);
  pinMode(pwmFRPin, OUTPUT);
  pinMode(pwmFrPin, OUTPUT);
  pinMode(pwmLPin, OUTPUT);
  pinMode(pwmRPin, OUTPUT);
  pinMode(ePin, OUTPUT);
  pinMode(fPin, OUTPUT);
  pinMode(gPin, OUTPUT);
  pinMode(aPin, INPUT);
  pinMode(bPin, INPUT);
  pinMode(cPin, INPUT);
  pinMode(dPin, INPUT);
  digitalWrite(gPin, HIGH);
}

void loop()
{ 
  Serial.print(digitalRead(aPin));
  Serial.print("\t");
  Serial.print(digitalRead(bPin));
  Serial.print("\t");
  Serial.print(digitalRead(cPin));
  Serial.print("\t");
  Serial.print(digitalRead(dPin));
  Serial.print("\t");
  Serial.println();

  delay(100);
  
  valA = digitalRead(aPin);
  valB = digitalRead(bPin);
  valC = digitalRead(cPin);
  valD = digitalRead(dPin);
  
if  (valA == HIGH)  // motors are off
      {
      analogWrite(pwmFLPin, stop);
      analogWrite(pwmFlPin, stop);
      analogWrite(pwmFRPin, stop);
      analogWrite(pwmFrPin, stop);
      analogWrite(pwmLPin, stop);
      digitalWrite(ePin, LOW);
      analogWrite(pwmRPin, stop);
     digitalWrite(fPin, LOW); 
      }

else if (valB == HIGH)  //morors will run with d speed of RPM/4
     {
      analogWrite(pwmFLPin, speed);
      analogWrite(pwmFlPin, stop);
      analogWrite(pwmFRPin, speed);
      analogWrite(pwmFrPin, stop);
      analogWrite(pwmLPin, speed);
      digitalWrite(ePin, LOW);
      analogWrite(pwmRPin, speed);
      digitalWrite(fPin, LOW);
    }
else if (valC == HIGH)   // at rpm/2
  {
      analogWrite(pwmFLPin, speed);
      analogWrite(pwmFlPin, stop);
      analogWrite(pwmFRPin, speed);
      analogWrite(pwmFrPin, stop);
      analogWrite(pwmLPin, speed);
      digitalWrite(ePin, LOW);
      analogWrite(pwmRPin, speed);
      digitalWrite(fPin, LOW);
    }
else if (valD == HIGH)    // at rpm
   {
      analogWrite(pwmFLPin, speed);
      analogWrite(pwmFlPin, stop);
      analogWrite(pwmFRPin, speed);
      analogWrite(pwmFrPin, stop);
      analogWrite(pwmLPin, speed);
      digitalWrite(ePin, LOW);
      analogWrite(pwmRPin, speed);
      digitalWrite(fPin, LOW);
    }


if (valA == HIGH )
{
if (valB == HIGH )    // back
   {
      analogWrite(pwmFLPin, stop);
      analogWrite(pwmFlPin, speed);
      analogWrite(pwmFRPin, stop);
      analogWrite(pwmFrPin, speed);
      analogWrite(pwmLPin, stop);
      digitalWrite(ePin, HIGH);
      analogWrite(pwmRPin, stop);
      digitalWrite(fPin, HIGH);
    }
else if (valC == HIGH)   // rt U turn
   {
      analogWrite(pwmFLPin, speed);
      analogWrite(pwmFlPin, stop);
      analogWrite(pwmFRPin, stop);
      analogWrite(pwmFrPin, speed);
      analogWrite(pwmLPin, speed);
      digitalWrite(ePin, LOW);
      analogWrite(pwmRPin, stop);
      digitalWrite(fPin, HIGH);
    }


else if  (valD == HIGH)    // rt U turn
   {
      analogWrite(pwmFLPin, speed);
      analogWrite(pwmFlPin, stop);
      analogWrite(pwmFRPin, stop);
      analogWrite(pwmFrPin, speed);
      analogWrite(pwmLPin, speed);
      digitalWrite(ePin, LOW);
      analogWrite(pwmRPin, stop);
      digitalWrite(fPin, HIGH);
    }
}

if (valB == HIGH)
{
if (valC == HIGH)    // rt U turn
   {
      analogWrite(pwmFLPin, speed);
      analogWrite(pwmFlPin, stop);
      analogWrite(pwmFRPin, stop);
      analogWrite(pwmFrPin, speed);
      analogWrite(pwmLPin, speed);
      digitalWrite(ePin, LOW);
      analogWrite(pwmRPin, stop);
      digitalWrite(fPin, HIGH);
    }
else if (valD == HIGH)    // left U turn
   {
       analogWrite(pwmFLPin, stop);
      analogWrite(pwmFlPin, speed);
      analogWrite(pwmFRPin, speed);
      analogWrite(pwmFrPin, stop);
      analogWrite(pwmLPin, stop);
      digitalWrite(ePin, HIGH);
      analogWrite(pwmRPin, speed);
      digitalWrite(fPin, LOW);
    }
}

if (valC == HIGH)
{
 if (valD == HIGH)    // left U turn
   {
       analogWrite(pwmFLPin, stop);
      analogWrite(pwmFlPin, speed);
      analogWrite(pwmFRPin, speed);
      analogWrite(pwmFrPin, stop);
      analogWrite(pwmLPin, stop);
      digitalWrite(ePin, HIGH);
      analogWrite(pwmRPin, speed);
      digitalWrite(fPin, LOW);
    }
}

if (valA == HIGH)      // left U turn
{
  if (valB == HIGH)
   {
     if (valC == HIGH)
     {
       analogWrite(pwmFLPin, stop);
      analogWrite(pwmFlPin, speed);
      analogWrite(pwmFRPin, speed);
      analogWrite(pwmFrPin, stop);
      analogWrite(pwmLPin, stop);
      digitalWrite(ePin, HIGH);
      analogWrite(pwmRPin, speed);
      digitalWrite(fPin, LOW);
    }
   }
}

}
