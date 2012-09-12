#include <Stepper.h>
#define STEPS  100

//Motor#1
Stepper drx(STEPS, 8, 10, 9, 11);
//Motor#2
Stepper izq(STEPS, 2, 4, 3, 5);

int p;
int i=0;
int letra;

////////////SETUP///////////////
void setup(){
  Serial.begin(115200);
  
  drx.setSpeed(200); 
  izq.setSpeed(200);  
  
  }//fin setup
  
////////////LOOP//////////////
  void loop(){
    
     if (Serial.available() > 0) {
       
       letra = Serial.read();
       
         drx.setSpeed(200);
         izq.setSpeed(200);
         
      switch(letra) {
         case 'A':   
         
         for(i=0;i<91;i++){
          drx.step(-1);
          izq.step(+1);
         }
         break;
         
         case 'B':
        
         for(i=0;i<91;i++){
          drx.step(1);
          izq.step(-1);
         }
         break;
         
         case 'C':
         
          for(i=0;i<101;i++){
          drx.step(1);
          izq.step(1);
         }
         break; 
       
         case 'D':
         
          for(i=0;i<101;i++){
          drx.step(-1);
          izq.step(-1);
         }
         break; 
        
        case '2':   
         
         for(i=0;i<101;i++){
          drx.step(10);
          izq.step(-1);
         }
         break; 
         
          case '1':   
         
         for(i=0;i<101;i++){
          drx.step(-10);
          izq.step(1);
         }
         break; 
         
          case '3':   
            for(i=0;i<101;i++){   
          drx.step(1);
          izq.step(-10);
            }
         break; 
         
         case '4':   
           for(i=0;i<101;i++){    
          drx.step(-1);
          izq.step(10);
           }
         break; 
         
          case '5':   
          
         for(float i=0;i<12; i=i+1){
         
           for(float z=0;z<6.3;z=z+0.01){
             float s= i*sin(z);
             float c= i*cos(z);
             
            // z=z*180/3.1415926535;
             /*Serial.print(z);
             Serial.print(",  ");
             Serial.print(s);
             Serial.print(",");
             Serial.println(c);*/
             
            drx.step(s);
            izq.step(c);
           }
           
         
         }
         break;
         
         case '6':   
          
         for(int i=12;i>0; i=i-1){
         
           for(float z=0;z<6;z=z+0.01){
             float s= i*sin(z);
             float c= i*cos(z);
             
            // z=z*180/3.1415926535;
             /*Serial.print(z);
             Serial.print(",  ");
             Serial.print(s);
             Serial.print(",");
             Serial.println(c);*/
             
            drx.step(s);
            izq.step(c);
           }
           
         
         }
         break;
         
        
        
       }
       
      //heading*180/3.1415926535
     
       
     }//fin seial.availabe 
  }//Fin LOOP
