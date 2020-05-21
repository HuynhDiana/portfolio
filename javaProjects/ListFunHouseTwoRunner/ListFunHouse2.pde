import static java.lang.System.*;

public class ListFunHouseTwo {
  
  private ListNode theList = null;
  
  //public ListFunHouseTwo() {   
  //}
  
  public void add(String data) {
    if(theList == null) {
      theList = new ListNode(data, null);
      theList.setNext(theList);
    } else {
        ListNode beginning = theList;
        ListNode end = theList;
        theList = theList.getNext();
        
        while(theList != beginning) {
          end = theList;
          theList = theList.getNext();
        }
        end.setNext(new ListNode(data, beginning));
    }
  }
  
  //This method will return the number of nodes present in list
  
  public int nodeCount() {
     int count = 1;
     ListNode y = theList;
     while(y.getNext() != theList) {
       count++;
       y = y.getNext();
     }
     return count;
  }
    
  //This method will create a new node with the same value as the first node and add this
  //new node at the front of the list.  Once finished, the first node will occur twice.
  public void doubleFirst() {
     theList.setNext(new ListNode(theList.getValue(), theList.getNext()));
  }

  //This method will create a new node with the same value as the last node and add this
  //new node at the end.  Once finished, the last node will occur twice.
  
  public void doubleLast() {
    
    ListNode beginning = theList;
    ListNode end = theList;
    beginning = beginning.getNext();
    
    while(beginning != theList) {
      end = beginning;
      beginning = beginning.getNext();
    }
    end.setNext(new ListNode(end.getValue(), theList));
  } 
  
  //Method skipEveryOther will remove every other node
  
  public void skipEveryOther() {
    removeXthNode(2);
  }

  //This method will set the value of every xth node in the list
  
  public void setXthNode(int x, Comparable value) {
    
    ListNode beginning = theList;
    ListNode end = theList;
    int counter = 1;
    ListNode temp = theList;
    
    beginning = beginning.getNext();
    while(beginning != theList) {
      if(counter % x == 0) {
        temp.setValue(value);
        temp = temp.getNext();
        counter++;
      }
    }
  }  

  //This method will remove every xth node in the list
  
  public void removeXthNode(int x) {
    
    int counter = 1;
    ListNode previous = null;
    ListNode temp = theList;
    ListNode beginning = theList;
    ListNode end = theList;
    theList = theList.getNext();
    
    while(theList != beginning) {
      if(counter % x == 0) {
        previous.setNext(temp.getNext());
      }
      previous = temp;
      temp = temp.getNext();
      counter++;
      
      end = theList;
      theList = theList.getNext();
    }
  }    
  
  //This method will return a String containing the entire list
  
   public String toString() {
     String output = "";
     ListNode beginning = theList;
     
     while(beginning.getNext() != theList) {
       output += (String) beginning.getValue() + ", ";
       beginning = beginning.getNext();
     }
     output += beginning.getValue();
     return output;
   }
  }
