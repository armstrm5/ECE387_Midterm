int LedPin = 13;

void setup() {
  pinMode(ledPin, OUTPUT);

}

void loop() {
  //s
  flash(200);
  flash(200);
  flash(200);
  delay(300);

  //o
  flash(500);
  flash(500);
  flash(500);

  //s
  flash(200);
  flash(200);
  flash(200);

  delay(1000);
  
}

void flash(int time) {
  digitalWrite(ledPin, HIGH);
  delay(time);
  digitalWrite(ledPin, LOW);
  delay(time);
  
}
