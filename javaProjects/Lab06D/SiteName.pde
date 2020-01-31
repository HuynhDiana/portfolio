import static java.lang.System.*;

class SiteName implements Comparable<SiteName>
{
  //Add instance variables
  
  private String category;
  private String name;
  
  
  //Add a constructor
  
  public SiteName(String str) {
    String[] s = str.split("\\.");
    category = s[1];
    name = s[0];
  }
  
  //Add a compareTo
  
  public int compareTo(SiteName other) {
    if(this.category.compareTo(other.category) > 0) {
      return 1;
    }
    if(this.category.compareTo(other.category) < 0) {
      return -1;
    }
    return this.category.compareTo(other.category);
  }
 
  //Add a toString
  
  public String toString() {
    return name + "." + category;
  }

}
