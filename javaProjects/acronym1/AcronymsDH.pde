import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class Acronyms
{
  private Map<String,String> acronymTable;

  public Acronyms() {
    

  }

  public void putEntry(String entry) {




  }

  public String convert(String sent) {
    Scanner scan = new Scanner(sent);
    String output ="";
    
    while(scan.hasNext()) {
      String s = scan.next();
      String test = s.replaceAll("\\.", "");
      if(acronymTable.get(test) == null) {
        output += s + " ";
      } else if(!s.equals(test)) {
        output += acronymTable.get(test) + ". ";
      } else 
        output += acronymTable.get(s) + " ";
      }
      return output;
  }

  public String toString() {
    return acronymTable.toString().replaceAll("\\,", "\n");
  }
}
