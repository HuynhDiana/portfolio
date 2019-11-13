class Bacteria {
  
  private int x;
  private int y;
  private int xIncrement = 2;
  private int yIncrement = 2;
  
  
  //constructor 
  
  Bacteria(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void show() {
    
    //body
    fill(240, 228, 10);
    ellipse(x, y, 35, 30);
    //eye
    fill(255, 255, 255);
    ellipse(x+11, y, 5, 5);
    //stinger
    fill(0, 0, 0);
    triangle(x-23, y, x-15, y-7, x-15, y+7);
    //stripes
    fill(0, 0, 0);
    rect(x, y-13, 5, 27);
    fill(0, 0, 0);
    rect(x-10, y-13, 5, 27);
  }
  
  void move() {
    x += (int)(Math.random()*5)-2;
    y += (int)(Math.random()*5)-2;
    
    if(x < 20 || x > width-20) {
      xIncrement *= -1;
    }
    if(y < 20 || y > width-55) {
      yIncrement *= -1;
    }
    
    x += xIncrement;
    y += yIncrement;
    
  }
  
}
