import java.util.Stack;

public class Circus {
  
  private Stack <String> stack;
  private String [] string;
  
  Circus(String [] s) {
    stack = new Stack <String>();
    string = s;
  }
  
  void order() {
    for(int i = 0; i < string.length; i += 2){
      stack.push(string[i]);
    }
    if(string.length%2 == 0){
      for(int i = string.length-1; i >= 1; i -= 2){
        stack.push(string[i]);
      }
    }
  else {
    for(int i = string.length -2; i >= 1; i -= 2)
    {
      stack.push(string[i]);
    }
  }
  System.out.println(stack);
  }  
}
