import processing.serial.*;

Serial myPort;
int sensorVal = 0;
String valStr;
// Use serial monitor with arduino to find the approximate maximum value
int SENSOR_MAX_VALUE = 1024;
// Change the number (in this case ) to match the corresponding port number connected to your Arduino.
String portName = "COM4";

int limit = SENSOR_MAX_VALUE;

void setup()
{
  size(720, 480);
  stroke(255);
  noFill();
  textAlign(CENTER, CENTER);

  myPort = new Serial(this, portName, 9600);
}

void draw()
{
  int v = readSerialValue();
  renderValue(v);
}

void renderValue(int sensorValue) {
  background(0);
  if(sensorVal > limit) {
    fill(#ff0000);
  } else {
    fill(#ffffff);
  }
  float ts = map(sensorValue, 0, SENSOR_MAX_VALUE, 10, height*0.7);
  textSize(ts);
  var x = width*0.5;
  var y = height*0.5;
  text(sensorVal, x, y);
}

int readSerialValue() {
  if ( myPort.available() > 0) {  // If data is available,
    valStr = myPort.readStringUntil('\n');
    try {
      sensorVal = Integer.valueOf(valStr.trim());
    }
    catch(Exception e) {
    }
  }
  return sensorVal;
}

void keyPressed(){
  if(keyCode == DOWN){
    limit -= 100;
    println("down", limit);
  }
  if(keyCode == UP){
    limit += 100;
    println("up", limit);
  }
}
