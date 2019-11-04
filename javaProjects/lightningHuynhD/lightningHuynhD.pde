//Global Variables

int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int y = 0;
int x = 0;

int startTime;

PImage img;

//Classes

void setup()
{
    size(500,500);
    strokeWeight(50);
    background(0);
    
    img = loadImage("flashLogo2.png");

}
void draw() {
  background(0);
  image(img, 200, 200);
  fill(0,15);
  rect(0, 0, width, height);
  
  
  while(y<500){
     int endX = x + int(random(-4,4)); 
     int endY = y + 1;    
     strokeWeight(2);
     stroke(255, 0, 0);
     line(x,y,endX,endY);
     x = endX;  
     y = endY; 
  }
  
     x = int(random(0,500)); 
     y = 0;
     
     delay(100);
}


void mousePressed()
{
  if((mouseX > 200 & mouseX < 300) & (mouseY > 200 & mouseY < 300)) {
    for(int i = 0; i < 100; i++) {
      x = int(random(0,500)); 
      y = 0;
    }
  }
  
}
