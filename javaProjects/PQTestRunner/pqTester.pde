import java.util.Queue;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.PriorityQueue;

public class PQTester
{
  private Queue<String> pQueue;

  public PQTester() {
    setPQ(new String[0]);
  }

  public PQTester(String [] list) {
    setPQ(list);
  }

  public void setPQ(String [] list) {
    pQueue = new PriorityQueue<String>();
    for(int d = 0; d < list.length; d++) {
      pQueue.add(list[d]);
    }
  }
  
  public Object getMin() {
    Queue<String> pQueueNew = new PriorityQueue<String>();
    pQueueNew = pQueue;
    return pQueueNew.peek();
    //return "";
  }
  
  public String getNaturalOrder() {
    //String output="";
    //return output;  
    
    Queue<String> pQueue4 = new PriorityQueue<String>();
    pQueue4 = pQueue;
    String what = "";
    while(!pQueue4.isEmpty()) {
      what = what + pQueue4.poll() + " ";
    }
    return what;
  }
  
  public String getPriorityOrder() {
    Queue<String> pQueue3 = new PriorityQueue<String>();
    pQueue3 = pQueue;
    return "" + pQueue3;
  }

  //write a toString method
  public String toString() {
    return "Min: " + getMin() + "\n" + "Natural: " + getNaturalOrder() + "\n" + "Priority: " + getPriorityOrder() + "\n";
  }
}
