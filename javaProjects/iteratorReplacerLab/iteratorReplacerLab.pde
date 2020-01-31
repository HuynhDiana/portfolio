import java.util.ArrayList;
import java.util.Arrays;
import java.util.ListIterator;
import static java.lang.System.*;

public class IteratorReplacer {
  
  private ArrayList<String> list;
  private String toRemove, replaceWith;

  public IteratorReplacer(String line, String rem, String rep) {
    setEmAll(line, rem, rep);
  }

  public void setEmAll(String line, String rem, String rep) {
    list = new ArrayList<String>(Arrays.asList(line.split(" ")));
    toRemove = rem;
    replaceWith = rep;
  }

  public void replace() {
    ListIterator<String>iterator = list.listIterator();
    while(iterator.hasNext()) {
      if(iterator.next().equals(toRemove))
      iterator.set(replaceWith);
    }
  }

  public String toString()
  {
    return list.toString()+"\n\n";
  }
}
