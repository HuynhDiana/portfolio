'use strict';

var startX = 0;
var startY = 150;
var endX = 0;
var endY = 150;
var y = 0;
var x = 0;

var startTime;

var img;

//Classes

function setup()
{
    createCanvas(500,500);
    strokeWeight(50);
    background(0);
    frameRate(10);
    
    img = loadImage("data/flashLogo2.png");

}
function draw() {
  background(0);
  image(img, 200, 200);
  fill(0,15);
  rect(0, 0, width, height);
  
  
  while(y<500){
     var endX = x + (random(-4,4)); 
     var endY = y + 1;    
     strokeWeight(2);
     stroke(255, 0, 0);
     line(x,y,endX,endY);
     x = endX;  
     y = endY; 
  }
  
     x = (random(0,500)); 
     y = 0;
     
    
}



