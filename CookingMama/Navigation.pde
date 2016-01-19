public class Navigation{
  ArrayList<PImage> Screens;
  int CurrentScreen;
  /*
  0 = HomeScreen
  1 = MainMenu
  2 = RecipeBook
  
  3 = BeefSteak
  4 = Cutting Stage
  5 = Seasoning Stage
  6 = Melting Butter
  */
  String cooking;
  
  public Navigation(){
    Screens = new ArrayList<PImage>();
    CurrentScreen = 0;
  }
  
  void loadImages(){
    for (int i = 0; i < 5; i++){
      Screens.add(loadImage("Screen" + i + ".jpg"));
    }
  }  
  
  void ScreenSelect(){
    if (CurrentScreen == 0 && mouseX >= 115 && mouseX <= 369 && mouseY >= 535 && mouseY <= 596){
      CurrentScreen = 1;
    }
    if (CurrentScreen == 1 && mouseX >= 50 && mouseX <= 420 && mouseY >= 440 && mouseY <= 495){
      CurrentScreen = 2;
    }
    if (CurrentScreen == 2 && mouseX >= 22 && mouseX <= 152 && mouseY >= 687 && mouseY <= 719){
      CurrentScreen = 1;
    }
    if (CurrentScreen == 2 && mouseX >= 42 && mouseX <= 99 && mouseY >= 534 && mouseY <= 567){
      CurrentScreen = 3;
      cooking = "BeefSteak"; //Cooking is now in session
    }
    if (CurrentScreen == 3 && mouseX >= 206 && mouseX <= 264 && mouseY >= 612 && mouseY <= 677){
      CurrentScreen = 4;
    }
  }
}