import java.util.*;

public class PostFix{
    private Stack<Double> stack;
    private String expression;

    public PostFix(){
        stack = new Stack<Double>();
        setExpression("");
    }

    public PostFix(String exp){
        stack = new Stack<Double>();
        setExpression(exp);
    }

    public void setExpression(String exp){
        expression = exp;
    }

    public double calc(double one, double two, char op){
        double answer = 0.0;
        
        if(op == '+') {
          answer = one + two;
        }
        if(op == '-') {
          answer = one - two;
        }
        if(op == '*') {
          answer = one * two;
        }
        if(op == '/') {
          answer = one / two;
        }
        return answer;
    }

    public double solve() {
        //String[] parts = expression.split(" ");
        for(int a = 0; a < expression.length(); a++) {
          char b = expression.charAt(a);
          if(Character.isDigit(b)) {
            stack.push((double)(b - '0'));
          } else {
            double one = stack.pop();
            double segundo = stack.pop();
            stack.push(calc(one, segundo, expression.charAt(a)));
          }
        }
        return stack.pop();
    }

    public String toString() {
        return expression + " = " + solve();
    }
}
