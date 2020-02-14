import java.util.ArrayList;
import java.util.Arrays;
import java.util.ListIterator;

public class Movie implements Comparable<Movie> {
  
  private int rating;
  private String review;
  
  public Movie(int r, String rv) {
    rating = r;
    review = rv;
  }
  
  public int compareTo(Movie other) {
    if(this.rating > other.rating) {
      return 1;
    }
    if(this.rating < other.rating) {
      return -1;
    }
    return 0;
  }
  
  public int getRatings() {
    return rating;
  }
  
  public String getReview() {
     return review;
  }
  
  public String toString() {
    String s = "The rating is: " + rating + "The review is: " + review;
    return s;
  }
  
}
