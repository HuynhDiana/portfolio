import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;

public class PalinList
{
  private Queue<String> queue;
  private Stack<String> stack;
  private Stack<String> anotherOne;
  private String string;

  public PalinList() {
    stack = new Stack<String>();
    anotherOne = new Stack <String>();
    setList("");
  }

  public PalinList(String list) {
    stack = new Stack<String>();
    anotherOne = new Stack<String>();
    setList(list);
  }

  public void setList(String list) {
    string = list;
  }

  public boolean isPalin() {
    String [] checker = string.split(" ");
    for(int c = 0; c < checker.length; c++) {
      stack.push(checker[c]);
    }
    
    if(anotherOne.isEmpty()) {
      while(!stack.isEmpty()) {
        anotherOne.add(stack.pop());
      }
    }
    if(anotherOne.equals(stack)) {
      return true;
    }
    else return false;
  }

  //write a toString method
  public String toString() {
    if(isPalin() == true) {
      return anotherOne + " is a palin list!";
    }
    return anotherOne + " is not a palin list...";
  }
}
