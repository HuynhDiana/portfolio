import java.io.File;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
import java.util.Arrays;


String [] BdayData;
String b = new String();

void setup() {
 
     //Add test cases
     
     BdayData = loadStrings("BdayData.txt");
     println(BdayData);
     
     ArrayList<Person> p = new ArrayList<Person>();
       println(p);
       
     System.out.println("List before sorted: ");
     for(String s: BdayData) {
       Scanner scan = new Scanner(s);
       p.add(new Person(scan.nextInt(), scan.nextInt(), scan.nextInt(), scan.next()));
     }
     for(Person person: p) {
       out.println(person);
     }
     System.out.println();
     
     System.out.println("List after sorted: ");
     Collections.sort(p);
     for(Person person: p) {
       out.println(person);
     }
     
  }
