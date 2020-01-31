import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
import java.util.Arrays;

SiteName name;
String[] siteName;

List<SiteName>myList= new ArrayList<SiteName>();

void setup() {
   //Add test cases
   
   siteName = loadStrings("siteName.txt");
   println(siteName);
   
   for(String str: siteName) {
     name = new SiteName(str);
     myList.add(name);
   }
  
  Collections.sort(myList);
  
  for(SiteName s: myList) {
    System.out.println(s);
  }
   
}
