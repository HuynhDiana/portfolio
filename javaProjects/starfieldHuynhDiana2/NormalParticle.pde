class NormalParticle implements Particle {
  double x, y, angle, speed;
  int r, g, b;
  int test = 0;
  
  NormalParticle() {
    x = width/2;
    y = height/2;
    
    speed = Math.random()*5;
    angle = (Math.PI*4)*Math.random()*8;
    
  }
  
  void move() {
    
    x += Math.cos(angle) * speed*2;
    y += Math.sin(angle) * speed*2;
    angle += .01;
    
    if( x > 900) {
      x = 900;
    } else if( x < 0) {
      x = 0;
    }
    
    if( y > 900) {
      y = 900;
    } else if(y < 0) {
      y = 0;
    }
  }
    
    void show() {
      noStroke();
      if(test == 0) {
        randColor();
        test = 500;
      }
      
      test ++;
      //println(test);
      
      colorMode(HSB);
      fill(r, g, b);
      ellipse((int)x, (int)y, 15, 15);
    }
    
    void randColor() {
      r = ((int)(Math.random() * 155 + 100));
      g = ((int)(Math.random() * 155 + 200));
      b = ((int)(Math.random() * 155 + 500));
      
      
    
  }
}
