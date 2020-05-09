import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup() {
  
  Acronyms ac = new Acronyms();
  String [] str = loadStrings("maps.txt");
  String [] con = loadStrings("convert.txt");
  
  for(String s: str) {
    ac.putEntry(s);
  }
}
