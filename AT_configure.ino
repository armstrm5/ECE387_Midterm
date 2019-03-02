#include <SoftwareSerial.h>
SoftwareSerial BT(0,1); //Rx,Tx

void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);
  digitalWrite(13,HIGH);
  Serial.println("Enter AT Commands");
  BT.begin(38400);
  
}

void loop() {
  if(BT.available())
    Serial.write(BT.read());
  if(Serial.available())
    BT.write(Serial.read());

}
