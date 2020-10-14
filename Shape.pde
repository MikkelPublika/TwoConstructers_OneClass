class Shape {
  float x,y,sizeX,sizeY,speedX,speedY;
  color col;
  
  //circle> constructor
  Shape(float x, float y, float size, float speedX, float speedY, color col) {
    this.x = x;
    this.y = y;
    this.sizeX = size;
    this.speedX = speedX;
    this.speedY = speedY;
    this.col = col;
  }
  //> rectangle constructor
  Shape(float x, float y, float sizeX, float sizeY, float speedX, float speedY, color col) {
    this.x = x;
    this.y = y;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.speedX = speedX;
    this.speedY = speedY;
    this.col = col;
  }
  
  void update() {
    background(0);
    move();
    display();
  }
  
  void move() {
    x+=speedX;
    y+=speedY;
    if(x <= 0 + sizeX/2 || x >= width-sizeX/2) {
      speedX*=-1;
    }
    if(y <= 0 + sizeY/2 || y >= height-sizeY/2) {
      speedY*=-1;
    }
  }

  void display() {
    if(switcher) {
      fill(255,0,0);
      ellipse(x,y,sizeX,sizeX);
    }
    else {
      fill(0,0,255);
      rectMode(CENTER);
      rect(x,y,sizeX,sizeY);
    }
  }
}
