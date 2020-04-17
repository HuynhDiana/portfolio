private float fractionLength = .8;
private int smallestBranch = 10;
private float branchAngle = .2;  

public void setup() {  
  //Canvas..
  size(700, 700); 
  noLoop();
}

public void draw() {  
  background(89, 94, 92);   
  
  //Divided into different trees, tried creating a forest effect where it would be
  //tight and compact. Each tree is a different color in order to have a better 
  //view of how the recursion works
  
  stroke(252, 240, 8); 
  drawBranches(width/2 + 50, height, 100, 90);

  stroke(232, 46, 192); 
  drawBranches(width/2 + 100, height, 150, 90);

  stroke(16, 33, 222); 
  drawBranches(width/2 - 50, height, 150, 90);

  stroke(219, 37, 9); 
  drawBranches(width/2 - 100, height, 100, 90);

  stroke(38, 240, 159); 
  drawBranches(width/2, height, 100, 90);
}
 
public void drawBranches(float x, float y, float branchLength, float angle) {   
    if(branchLength>1) {
      float horiz = x + branchLength * cos(radians(angle));
      float vert = y - branchLength * sin(radians(angle));
        line(x, y, horiz, vert);
        drawBranches(horiz, vert, branchLength * 0.75, angle + 30);
        drawBranches(horiz, vert, branchLength * 0.65, angle - 63);
    }   
} 
  
