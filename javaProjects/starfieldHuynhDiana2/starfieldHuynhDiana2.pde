NormalParticle[] npArray;
JumboParticle[] jpArray;
OddballParticle[] opArray;

void setup() {
  size(800, 800); 
  npArray = new NormalParticle[500];
  jpArray = new JumboParticle[5];
  opArray = new OddballParticle[1];
  
  for(int i = 0; i < npArray.length; i++) {
    npArray[i] = new NormalParticle();
  }
  
  for(int i = 0; i < jpArray.length; i++) {
    jpArray[i] = new JumboParticle();
  }
  
  for(int i = 0; i < opArray.length; i++) {
    opArray[i] = new OddballParticle();
  }
  
}

void draw(){
  background(0);
  for(int i = 0; i < npArray.length; i++) {
    npArray[i].show();
    npArray[i].move();
  }
  
  for(int i = 0; i < jpArray.length; i++) {
    jpArray[i].show();
    jpArray[i].move();
  }
  
  for(int i = 0; i < opArray.length; i++) {
    opArray[i].show();
    opArray[i].move();
  }
  
}

interface Particle {
  void show();
  void move();
}
