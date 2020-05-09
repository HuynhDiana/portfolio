import java.util.Stack;

void setup(){
    PostFix test = new PostFix("2 7 + 1 2 + +");
    test.solve();
    System.out.println(test);

    test.setExpression("1 2 3 4 + + +");
    test.solve();
    System.out.println(test);
    
    //Couple more extra tests 
    
    test.setExpression("1 9 / 4 * 7 -");
    test.solve();
    System.out.println(test);
    
    test.setExpression("4 4 + 8 / 7 +");
    test.solve();
    System.out.println(test);
}
