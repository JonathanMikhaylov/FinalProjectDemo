public class BeefSteak{
  ArrayList<PImage> Beef;
  int process;
  /*
  0 = Raw
  1 = First Cut
  2 = First Cut
  3 = First Cut
  4 = First Cut
  5 = First Cut
  6 = Second Cut
  7 = Second Cut
  8 = Second Cut
  9 = Second Cut
  10 = Second Cut
  */
  boolean Cooked;
  boolean FirstCut;
  boolean SecondCut;
  
  public BeefSteak(){
    Beef = new ArrayList<PImage>();
    Cooked = false;
    FirstCut = false;
    SecondCut = false;
    process = 0;
  }
  
  void loadImages(){
    for (int i = 0; i < 11; i++){
      Beef.add(loadImage("Beef" + i + ".png"));
    }
  }
  
  void firstCut(){
    if (FirstCut){
      for (int i = 1; i < 6; i++){
         process = i; 
      }
    }
  }

  void secondCut(){
    if (SecondCut){
      for (int i = 6; i < 11; i++){
        process = i;
      }
    }
  }

  void reset(){
    process = 0;
    Cooked = false;
    FirstCut = false;
    SecondCut = false;
  }
  

}