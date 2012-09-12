import processing.serial.*;

Serial myPort;

float pausa=0;
int tecla=0;

void setup() {
  size(200,200);
  fill(23,56,12);
 println(Serial.list());
 
 // myPort=new Serial(this, Serial.list()[0], 9600);
 myPort=new Serial(this, Serial.list()[4], 115200);
  myPort.bufferUntil('\r');
  pausa=millis();
}//fin setup

void draw() {


}



