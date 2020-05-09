import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup() {
  
  SpanishToEnglish se = new SpanishToEnglish();
  String [] str = loadStrings("span.txt");
  //String [] translate = loadStrings("translate.txt");
  
  for(String s:str) {
    se.putEntry(s);
  }
  //for(String t: translate) {
  //  println(se.translate(t));
  //}
  println(se);
  
}
