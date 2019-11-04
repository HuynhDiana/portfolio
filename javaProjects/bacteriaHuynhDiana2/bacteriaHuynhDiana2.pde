Bacteria [] b;
 
 void setup()   
 {     
   size(800, 800);
   b = new Bacteria[10];
   
   for(int i = 0; i < b.length; i++) {
     b[i] = new Bacteria(width/2, height/2);
   }
 }   
 void draw()   
 {    
   background(0);
   for(int i = 0; i < b.length; i++) {
     b[i].show();
     b[i].move();
    }
   
 }  
  
