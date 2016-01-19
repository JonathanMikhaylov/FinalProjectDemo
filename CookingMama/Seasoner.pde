public class Seasoner{
  ArrayList<PImage> Shaker;  
  int quantity;
  int motion;
  /*
  0 = unshaken
  1 = shaken
  */
  PImage Seasoning = loadImage("Seasoning.png");
  
  public Seasoner(int amount){
    Shaker = new ArrayList<PImage>();
    quantity = amount;
  }
  
  void loadImages(){
    for (int i = 0; i < 2; i++){
      Shaker.add(loadImage("Seasoner"+i+".png"));
    }
  }
  
  void Season(){
    for (int i = 0; i < 2; i++){
      motion = i;
    }
    quantity--;
  }
}