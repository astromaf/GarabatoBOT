
void keyPressed() {
  
   tecla=keyCode;
   
  
   
   switch(tecla){

case 49:
  print("1");
 cuadroespiral();
   break;
  
case 50:
     print("2");
     cuadrocrece();
     break;
case 51:
   print("3");
   dientesierrA();
   break;
case 52:
   print("4");
    dientesierrB();
   break;
case 53:
    print("5");
     myPort.write('5');
   break;
case 54:
    print("6");
     myPort.write('6');
   break;
case 55:
    print("7");
     pinta();
   break;

}

   
   
  
  if ((key == CODED) && (millis()>pausa)) {
      pausa=millis()+190;
      
    if (keyCode == UP) {
      
       myPort.write('A');
       
        
    } 
    else if (keyCode == DOWN) {
       myPort.write('B');
       
        
    }
    
    else if (keyCode == LEFT) {
       myPort.write('C');
      
        
    }
    
    else if (keyCode == RIGHT) {
      
       myPort.write('D');
       
     
    }
    
    myPort.clear();
  }
   myPort.clear();
}


