import java.util.ArrayList;
import static java.lang.System.*;

public class IntQueue
{
  //pick your storage for the queue
  //you can use the an array or an ArrayList

  //option 1
  //private int[] rayOfInts;
  //private int numInts;

  //option 2
  private ArrayList<Integer> listOfInts;

//I choose option 2 this time!
  public IntQueue() {
    listOfInts = new ArrayList<Integer>();
  }

  public void add(int item) {
    listOfInts.add(item);
  }

  public int remove() {
    //return 0;
    return listOfInts.remove(listOfInts.size()-1);
  }

  public boolean isEmpty() {
    if(listOfInts.size() == 0) {
      return true;
    } else 
    return false;
  }

  public int peek() {
    //return 0;
    return listOfInts.get(0);
  }

  public String toString() {
    return "" + listOfInts;
  }
}
