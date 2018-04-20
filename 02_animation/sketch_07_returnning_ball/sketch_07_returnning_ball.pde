int x = 10;
int y = 240;
int speed = 10;
void setup() {
  //code run only once 
  size(640, 480);
}


void draw() {
  //code will repeat/loop forever
  //background(random(255), random(255), random(255));
  background(0);
  fill(255);
  ellipse(x, y, 10, 10);
  
  // animating the ball
  x = x + speed;
  if (x > width) {//when it gets right boundry, change direction
    speed = -10;
    //speed = speed * -1;
  }
  if (x < 0) {//when it gets left boundry, change directions
    speed = 10;
    //speed = speed * -1;
  }
}