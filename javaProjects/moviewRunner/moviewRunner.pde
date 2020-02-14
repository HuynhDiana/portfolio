import java.util.ArrayList;
import java.util.Arrays;
import java.util.ListIterator;

String [] ratings2;
String w = "eccentric";
MovieList m = new MovieList();
PImage img;

void setup() {
  
  size(800, 800);
  background(#8E8B8B);
  ratings2 = loadStrings("movieReviews.txt");
  m.loadMovie();
  //ArrayList<Movie> m = new ArrayList<Movie>();
  
}

  void draw() {
    
    img = loadImage("laptopBorderjpg.jpg");
    img.resize(1000, 800);
    image(img, -100, 0);
    textSize(35);
    text("Movie Reviews: ", 270, 100);
    fill(0);
    
    int count = m.wordCounter(w);
    textSize(30);
    text("The word: " + w + " appears " + count + " times ", 100, 300);
    text("Total count: " + m.getCount(), 100, 350);
    text("Average score: " + m.getAverageScore(), 100, 400);
    text("Overall comment: " + m.overallComment(), 100, 450);
    
    
  }
  
  
  
  //System.out.println("The ratings are: ");
  //for(String s: ratings2) {
  //  Scanner scan = new Scanner(s);
    
  
  
