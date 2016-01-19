public class GuideLine{
  int x, y, w, h;     
  color rectColor;
  color rectHighlight;
  GuideLine(){
  }
  
  GuideLine(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    rectColor = color(229, 0, 145);
    rectHighlight = color(254, 232, 113);
  }
  
  boolean isInside(GuideLine other){
    if (Math.abs(this.x - other.x) <= 10 && Math.abs(this.y-other.y) <= 10 && Math.abs(this.w - other.w) <= 10 && Math.abs(this.h - other.h) <= 10){
      return true;
    } else {
      text("false",56,65);
      return false;
    }
   }
}