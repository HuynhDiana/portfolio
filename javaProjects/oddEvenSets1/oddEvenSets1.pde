import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup() {
  OddEvenSets o = new OddEvenSets("1 5 9 4 6 8 12");
  println(o);
  
  OddEvenSets p = new OddEvenSets("3 5 7 17 29 4 6 56 72");
  println(p);
  
  OddEvenSets q = new OddEvenSets("3 6 12 2 28 6");
  println(q);
  
  OddEvenSets r = new OddEvenSets("4 4 4 4 4 4 4 4");
  println(r);

  OddEvenSets s = new OddEvenSets("1 2 3 4 5 6 7 8 9 ");
  println(s); 
}
