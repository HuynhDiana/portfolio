import java.util.LinkedList;
import java.util.Queue;
  
  void setup() {
    
     //Add test cases
     PalinList testOne = new PalinList("one two three two one");
     testOne.isPalin();
     System.out.println(testOne);
     
     PalinList testTwo = new PalinList("1 2 3 4 5 one two three four five");
     testTwo.isPalin();
     System.out.println(testTwo);
     
     PalinList testThree = new PalinList("a b c d e f g x y z g f h");
     testThree.isPalin();
     System.out.println(testThree);
     
     PalinList testFour = new PalinList("racecar is racecar");
     testFour.isPalin();
     System.out.println(testFour);
     
     PalinList testFive = new PalinList("1 2 3 a b c c b a 3 2 1");
     testFive.isPalin();
     System.out.println(testFive);
     
     PalinList testSix = new PalinList("chicken is chicken");
     testSix.isPalin();
     System.out.println(testSix);
  }
