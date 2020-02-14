import java.util.*;
import java.util.ListIterator;

public class MovieList {
  
  ArrayList<Movie>list = new ArrayList<Movie>();
  public int counter;
  public int sum;
  
  public MovieList() {
    //list = ml;
  }
  
  public void loadMovie() {
    String [] str = loadStrings("movieReviews.txt");
    for(String x: str) {
      Scanner scan= new Scanner(x);
      list.add(new Movie(scan.nextInt(), scan.nextLine())); //<>//
      scan.close();
    }
    counter = list.size();
  }
  
  public int wordCounter(String str) {
    int counter = 0;
    for(Movie m: list) {
      if(m.getReview().contains(str)) {
        counter++;
      }
    }
    return counter;
  }
  
  public int getCount() {
    return counter;
  } 
  
  public int getAverageScore() {
    int counter = list.size();
    int sum = 0;
    
    for(Movie m: list) {
       sum += m.getRatings();
    }
    return sum/counter;
  }
  
  public String overallComment() {
    if(getAverageScore() == 4) {
      return ("This movie is great!");
    }
    if(getAverageScore() == 3) {
      return("This movie is somewhat good.");
    }
    if(getAverageScore() == 2) {
      return("This movie is neutral.");
    }
    if(getAverageScore() == 1) {
      return("This movie is somewhat bad.");
    }
    //if(getAverageScore() == 0) {
    //  return("This movie is bad...");
    //}
    return "This movie is bad...";
  }
  
  public void sortMoviesByCount() {
    Collections.sort(list);
  }
  
  public String toString() {
    String q = " ";
    Iterator<Movie> here = list.iterator();
    while(here.hasNext()) {
       q += here.next();
    }
    return q;
  }
 }
  
  
