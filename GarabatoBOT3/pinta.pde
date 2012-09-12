void pinta(){
  
  int a= 10;

    for (int i = 1; i < a; i = i+1) {
     print("AD");
     myPort.write('A');
     myPort.write('D');
     myDelay(20);
    }
    
    for (int i = 1; i < a; i = i+1) {
     print("DB");
     myPort.write('D');
     myPort.write('B');
     myDelay(20);
    }
   
    for (int i = 1; i < a; i = i+1) {
     print("BC");
     myPort.write('B');
     myPort.write('C');
     myDelay(20);
    }
   
    for (int i = 1; i < a; i = i+1) {
     print("CA");
     myPort.write('C');
     myPort.write('A');
     myDelay(20);
    }   
  
 
   
   
  println();
  println("FIN");
  myPort.clear();
   
}//end Pinta

 
 
 void myDelay(int ms){
  int time = millis();
  while(millis()-time < ms);
}


void cuadrocrece(){
//Cuadrado creciente
  for (int i = 0; i < 10; i = i+1) {
    
     
  for (int j = 0; j < i; j++) {
    print("C");
    myPort.write('C');
  }
  
  for (int q = 0; q < i; q++) {
    print("A");
    myPort.write('A');
  }
  
  for (int t = 0; t < i; t++) {
    print("D");
    myPort.write('D');
  }
  
  for (int r = 0; r < i; r++) {
    print("B");
    myPort.write('B');
  } 
    println("  "+i);
  myDelay(i*400);
   
}
  println();
  println("FIN");
  myPort.clear();
  
}

void cuadroespiral(){

 for (int i = 1; i < 10; i = i+1) {
  
      if (i%2==0){        
         for (int t = 0; t < i; t++) {
            print("D");
            myPort.write('D');
          }//dd
          
          for (int r = 0; r < i; r++) {
            print("B");
            myPort.write('B');
          } //bb 
          
      }//if
  
      else{
          for (int j = 0; j < i; j++) {
            print("C");
            myPort.write('C');
          }//c
          
          for (int q = 0; q < i; q++) {
            print("A");
            myPort.write('A');
          }//a
            
      }//else
      
    println("  "+i);  
    myDelay(i*200);
 }
}
 
 
void dientesierrA(){
   
  for (int q = 0; q < 5; q++) {
   myPort.write('1');
   myPort.write('3');
  }
 
 
 }
 
 void dientesierrB(){
   
  for (int q = 0; q < 5; q++) {
   myPort.write('2');
   myPort.write('4');
  }
 
 
 } 
