class Bacteria {
  
  private int x;
  private int y;
  
  Bacteria(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void show() {
    fill(66, 239, 245);
    ellipse(x, y, 30, 30);
  }
  
  void move() {
    x += (int)(Math.random()*5)-2;
    y += (int)(Math.random()*5)-2;
    
    if(mouseX > x) {
      x += (int)(Math.random()*6);
    }
    
    if(mouseX < x) {
      x -= (int)(Math.random()*6);
    }
    
    if(mouseY > y) {
      y += (int)(Math.random()*6);
    }
    
    if(mouseY < y) {
      y -= (int)(Math.random()*6);
    }
  }
  
}
