class OddballParticle implements Particle {
  
  double x, y, angle, speed;
  
  OddballParticle() {
   
    x = width/2;
    y = height/2;
  
    speed = Math.random()*10;
    angle = (Math.PI*4)*Math.random()*8;
  
  }
  void move() {
    
    x += Math.cos(angle)*speed;
    y += Math.sin(angle)*speed;
    angle+=.01;
  
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
   colorMode(HSB);
 
  }
}
