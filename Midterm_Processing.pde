import processing.serial.*;
Serial myPort;
String ledStatus="Lights: OFF";


void setup(){
  size(500, 500);
  myPort = new Serial(this, "COM7", 9600); // Starts the serial communication
  myPort.bufferUntil('\n'); 
}
void serialEvent (Serial myPort){ 
  ledStatus = myPort.readStringUntil('\n'); 
}


void draw(){
  background(237, 240, 241);
  fill(20, 160, 133); // Green Color
  stroke(33);
  strokeWeight(1);
  rect(50, 100, 150, 50, 10);  // Turn ON Button
  rect(250, 100, 150, 50, 10); // Turn OFF Button
  fill(255);
  
  textSize(32);
  text("Turn ON",60, 135);
  text("Turn OFF", 255, 135);
  textSize(24);
  fill(33);
  text("Status:", 180, 200);
  textSize(30);
  textSize(16);
  
  text(ledStatus, 155, 240); // Prints the string comming from the Arduino
  
  // If the button "Turn ON" is pressed
  if(mousePressed && mouseX>50 && mouseX<200 && mouseY>100 && mouseY<150){
    myPort.write('1'); 
    stroke(255,0,0);
    strokeWeight(2);
    noFill();
    rect(50, 100, 150, 50, 10);
  }
  // If the button "Turn OFF" is pressed
  if(mousePressed && mouseX>250 && mouseX<400 && mouseY>100 && mouseY<150){
    myPort.write('0'); 
    stroke(255,0,0);
    strokeWeight(2);
    noFill();
    rect(250, 100, 150, 50, 10);
  }
}
