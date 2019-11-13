Bacteria [] b;
 
 void setup()   
 {     
   size(700, 700);
   b = new Bacteria[15];
   
   for(int i = 0; i < b.length; i++) {
     b[i] = new Bacteria(width/2, height/2);
   }
 }   
 
 void draw()   
 {    
   background(16, 100, 173);
   fill(232, 222, 23);
   ellipse(70, 70, 90, 90);
   fill(20, 158, 13);
   rect(-5, 680, 805, 30);
   
   for(int i = 0; i < b.length; i++) {
     b[i].show();
     b[i].move();
    }
 }  
  
