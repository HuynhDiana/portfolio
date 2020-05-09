class IntStack {

  //pick your storage for the stack
  //you can use the an array or an ArrayList

  //option 1
  
  //I chose option 1!
  private int[] rayOfInts;
  private int numInts;

  //option 2
  //private ArrayList<Integer> listOfInts;

  public IntStack() {
    //listOfInts = new ArrayList<Integer>();
    rayOfInts = new int[17];
    numInts = 0;
  }

  public void push(int item) {
    rayOfInts[numInts] = item;
    numInts++;
  }

  public int pop() {
    int outcome = rayOfInts[numInts - 1];
    numInts--;
    return outcome;
  }

  public boolean isEmpty() {
    if(numInts == 0) {
      return true;
    } else {
      return false;
    }
  }

  public int peek() {
    int outcome2 = rayOfInts[numInts - 1];
    return outcome2;
  }

  public String toString() {
    return "" + rayOfInts;
  }
}
