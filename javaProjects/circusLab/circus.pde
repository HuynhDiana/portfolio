import java.util.Scanner;
import java.util.Stack;
import java.util.ListIterator;

Circus c;
String [] circusTest;

void setup() {
  
 circusTest = loadStrings("testFile.txt");
 
 System.out.println("Output: ");
 Circus c = new Circus(circusTest);
 c.order();
 
}
