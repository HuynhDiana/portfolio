import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

class MarkovChain implements Markov{
  List <String> wordList;
  Map<String, ArrayList<String>> myMap;
}

public MarkovChain() {
    wordList = new ArrayList<String>();
    myMap = new HashMap<String, ArrayList<String>>();
}

void trainMap(String [] str) {
    for(int i = 0; i < str.length-1; i++) {
      String currentWord = str[i];
      String nextWord = str[i+1];
        if(myMap.get(currentWord) == null) {
          myMap.put(currentWord, new ArrayList<String>());
        }
        myMap.get(currentWord).add(nextWord);
    }
}

String generateText(String str) {
  String newString = "";
  int randomIndex = 0;
  int randomIndex2 = 0;
  int randomIndex3 = 0;
  
  if(myMap.containsKey(str)) {
    randomIndex = getRandomIndex(str);
    randomIndex2 = getRandomIndex(str);
    randomIndex3 = getRandomIndex(str);
    
    newString += str + " " + myMap.get(str).get(randomIndex) + " ";
    newString += str + " " + myMap.get(str).get(randomIndex2) + " ";
    newString += str + " " + myMap.get(str).get(randomIndex3) + " ";
  }
  return newString;
}

int getRandomIndex(String s) {
   int randomIndex=(int)(Math.random()*myMap.get(s).size());
   return randomIndex;
 }
 
 void printMap() {
   println(myMap);
 }
 
 public String toString() {
   return "" + wordList;
 }
