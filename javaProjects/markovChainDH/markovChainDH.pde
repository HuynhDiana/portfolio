import static java.lang.System.*;
import java.util.Collections;

MarkovChain mc = new MarkovChain();
String [] cleanText;
boolean clicker = false;
String gen;

interface Markov {
  void trainMap(String [] s);
  String generateText(String s);
}

void setup() {
  
  size(900, 900);
  background(#696969);
  
  String [] str = loadStrings("songs.txt");
  String allText = join(str, " ");
  cleanText = allText.replaceAll("[^a-zA-Z\\. ]", "").toLowerCase().split("\\s+");//removes punct before splitting
 
  mc.trainMap(cleanText);
  for(String s : cleanText) {
    gen = mc.generateText(s);
    println(mc.generateText(s));
  }
  //mc.printMap();
}

void draw() {
  textSize(30);
  text("Songs!", 450, 75);
  text("Lyrics of a random song: ", 100, 150);
  
  if(clicker == true) {
    textSize(30);
    text(gen, 100, 200);
  }
}

void mousePressed() {
  if(mouseX > 0 && mouseX < 900) {
    if(clicker == true) {
      clicker = false;
      MarkovChain mc = new MarkovChain();
      String [] str = loadStrings("songs.txt");
      String allText = join(str, " ");
      String [] cleanText = allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes punct before splitting
      mc.trainMap(cleanText);
      
     for(String s: cleanText) {
       mc.generateText(s);
       println(mc.generateText(s));
     }
   } else {
     clicker = true;
    }
  }
}
