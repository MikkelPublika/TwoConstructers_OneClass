float sizeX = 50;
float sizeY = 50;
float x = random(width) + sizeX / 2;
float y = random(height) + sizeY / 2;
float speedX = random(-6,6);
float speedY = random(-6,6);
color col = color(0,255,0);
boolean switcher = true;
int fontSize;
String fps;
PFont font;

Shape s1 = new Shape(x,y,sizeX,speedX,speedY,col);    //circle
Shape s2 = new Shape(x,y,sizeX,sizeY,speedX,speedY,col);    //rect

void setup() {
  size(500,500);
  frameRate(60);
  background(0);
  noStroke();
  font = loadFont("CourierNewPS-BoldMT-24.vlw");
  textFont(font);
  fontSize = 24;
}

void draw() {  
  s1.update();
  s2.update();
  fps = nf(frameRate,0,-1);
  fill(col);
  textAlign(LEFT);
  text(fps,width-fontSize*1.5,fontSize);
  textAlign(CENTER);
  text("PRESS ANYWHERE",width/2,height/2);
}

void mousePressed() {
  switcher = !switcher;
}
