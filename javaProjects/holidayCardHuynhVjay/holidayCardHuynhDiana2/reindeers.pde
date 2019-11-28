class Image {
  
  PImage img;
  float imgY = 100;
  float imgX = 100;
 
   public Image() {
     img = loadImage("reindeer2.png");
   }
   
   void show() {
     image(img, imgX, imgY, 300, 200);
   }
   
   void move() {
     imgX+=5;
     
     if(imgX > 800) {
       imgX = -100;
     }
   }
}
