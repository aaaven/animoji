int x = 10;
int y = 240;
int speedX = 10;
int speedY = 5;
void setup() {
  //code run only once 
  size(640, 480);
}


void draw() {
  //code will repeat/loop forever
  //background(random(255), random(255), random(255));
  background(0);
  fill(255);
  ellipse(x, y, 30, 30);
  
  // animating the ball
  x = x + speedX;
  if (x > width) {//when it gets right boundry, change direction
    speedX = -10;
    //speedX = speedX * -1;
  }
  if (x < 0) {//when it gets left boundry, change directions
    speedX = 10;
    //speedX = speedX * -1;
  }
  
    y = y + speedY;
  if (y > height) {//when it gets right boundry, change direction
    speedY = -5;
    //speedY = speedY * -1;
  }
  if (y < 0) {//when it gets left boundry, change directions
    speedY = 5;
    //speedY = speedY * -1;
  }
  
}