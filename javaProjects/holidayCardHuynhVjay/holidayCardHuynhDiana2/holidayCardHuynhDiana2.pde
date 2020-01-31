SnowFlake[]mySnow=new SnowFlake[100];
Image image;
Tree tree;
Snowman snowman;
House house;

void setup() {
   size(1000,900);
   
   for(int i=0; i<mySnow.length; i++){
    mySnow[i]=new SnowFlake();
  }
  
  image = new Image();
  tree = new Tree();
  snowman = new Snowman();
  house = new House();
}

void draw() {
   background(0); 
   image.show();
   image.move();
   
   tree.show();
   snowman.show();
   house.show();
   
   for(int i=0; i<mySnow.length; i++){
      mySnow[i].move();
      mySnow[i].show();
  }
  
}

interface snow {
  void move();
  void show();
}
