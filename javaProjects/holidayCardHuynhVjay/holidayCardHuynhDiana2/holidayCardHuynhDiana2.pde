SnowFlake[]mySnow=new SnowFlake[100];
Image image;
Tree tree;

void setup() {
    size(800,800);
   for(int i=0; i<mySnow.length; i++){
    mySnow[i]=new SnowFlake();
  }
  
  image = new Image();
  tree = new Tree();
}

void draw() {
   background(0); 
   image.show();
   image.move();
   
   tree.show();
   
   for(int i=0; i<mySnow.length; i++){
      mySnow[i].move();
      mySnow[i].show();
  }
  
}

interface snow {
  void move();
  void show();
}
