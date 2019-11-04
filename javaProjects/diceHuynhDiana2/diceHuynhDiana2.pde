Die die;

void setup()
{
    noLoop();
    die = new Die(100, 100);
}
void draw()
{
    background(0);
    die.show();
}
void mousePressed()
{
    redraw();
}
class Die //models one single dice cube
{
  float x;
  float y;
  
    //variable declarations here
    Die(float x, float y) //constructor
    {
       this.x = x;
       this.y = y;
    }
    void roll()
    {
        //your code here
    }
    void show()
    {
        fill(100,0,0);
        rect(x, y, 100, 100);
    }
}
