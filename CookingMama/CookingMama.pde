String background;
PShape button;
String cooking;
int y;
float counter;
int cutX, cutY;
PImage ticker;
GuideLine cl; //cutline

Navigation Navigation = new Navigation();

void setup() {
  size(480, 720);
  frameRate(24);
  Navigation.loadImages();
  background(Navigation.Screens.get(0));
  counter = 0.0;
  ticker = loadImage("Ticker.png");
}

void mousePressed() {
  ellipse( mouseX, mouseY, 2, 2 );
  text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
  cutX = mouseX;
  cutY= mouseY;
}

void mouseReleased() {
  cl = new GuideLine(cutX, cutY, mouseX-cutX, mouseY-cutY);
  rect(cl.x, cl.y, cl.w, cl.h);
  ;
}

void mouseClicked() {
  Navigation.ScreenSelect();
}

void BeefSteak() {
  if (Navigation.cooking == "BeefSteak") {
    int meatx = 80;
    int meaty = 465;
    BeefSteak BeefSteak = new BeefSteak();
    Seasoner Seasoner = new Seasoner(10);
    BeefSteak.loadImages();
    if (Navigation.CurrentScreen == 4) {
      GuideLine gl1 = new GuideLine(298, 528, 5, 86); //guideline TWO      
      GuideLine gl2 = new GuideLine(338, 518, 5, 84); //guideline ONE
      image(BeefSteak.Beef.get(BeefSteak.process), meatx, meaty);
      fill(gl1.rectColor);
      stroke(gl1.rectHighlight);
      rect(gl1.x, gl1.y, gl1.w, gl1.h);
      rect(gl2.x, gl2.y, gl2.w, gl2.h); 
      if (gl1.isInside(cl)) {
        BeefSteak.FirstCut = true;
        BeefSteak.firstCut();
        image(BeefSteak.Beef.get(BeefSteak.process), meatx, meaty);
      }
      if (gl2.isInside(cl)) {
        BeefSteak.SecondCut = true;
        BeefSteak.secondCut();
        image(BeefSteak.Beef.get(BeefSteak.process), meatx, meaty);
        if (BeefSteak.process == 10) {
          BeefSteak.FirstCut = true;
          BeefSteak.SecondCut = true;
          
        }
      }
    }
     if (Navigation.CurrentScreen == 4) {            
    timer();
    }
    if (Navigation.CurrentScreen == 4 && BeefSteak.FirstCut == true && BeefSteak.SecondCut == true){
      Navigation.CurrentScreen = 5;
    }
    if (Navigation.CurrentScreen == 5) {
delay(10000);      //counter++;
      //System.out.println(counter);
      //while (counter < 20) {
      //  counter++;
      //}
      //if (counter == 4) {
        Navigation.CurrentScreen = 6;
        counter = 0;
        //}
    }

    //if (Navigation.CurrentScreen == 5) {
    //  text("hi", 3, 4);
    //}
  }
}

void timer() {
  //counter++;
  translate(133, 138);
  rotate(counter*TWO_PI/360);
  if (counter < 360) {
    counter++;
  } if (counter == 360) {
      delay(3000);
      Navigation.CurrentScreen = 3;

  }
  translate(-ticker.width/2, -ticker.height/2);
  image(ticker, 0, 0);
}

void draw() {
  background(Navigation.Screens.get(Navigation.CurrentScreen));
  BeefSteak();

  y++;
  if (y > height) {
    y = 0;
  }
}