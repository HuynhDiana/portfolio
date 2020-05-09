import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Queue;
import java.util.LinkedList;

void setup() {
  
  //add test cases
  
  String[] testOne = new String[]{"one", "two", "three", "four", "five", "six", "seven"};  
  String[] testTwo = new String[]{"1", "2", "3", "4", "5", "one", "two", "three", "four", "five"};  
  String[] testThree = new String[]{"a", "p", "h",  "j", "e", "f", "m", "c", "i", "d", "k", "l", "g", "n", "o", "b"};

  System.out.println(new PQTester(testOne));
  System.out.println(new PQTester(testTwo));
  System.out.println(new PQTester(testThree));

 
}
