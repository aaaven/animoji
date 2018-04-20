int x = 10;
int y = 240;
int speedX = 10;
int speedY = 5;
int ballsize = 20;
void setup() {
  //code run only once 
  size(640, 480);
}


void draw() {
  //code will repeat/loop forever
  //background(random(255), random(255), random(255));
  background(0);
  fill(255);
  ellipse(x, y, ballsize, ballsize);

  // animating the ball
  x = x + speedX;
  if (x > width) {//when it gets right boundry, change direction
    speedX = -speedX;
    //speedX = speedX * -1;
  }
  if (x < 0) {//when it gets left boundry, change directions
    speedX = -speedX;
    //speedX = speedX * -1;
  }

  y = y + speedY;
  if (y > height) {//when it gets right boundry, change direction
    speedY = -speedY;
    //speedY = speedY * -1;
  }
  if (y < 0) {//when it gets left boundry, change directions
    speedY = -speedY;
    //speedY = speedY * -1;
  }

  /*
  //there is a lot repeat in previous code! let's simply it!
   x = x + speedX;
   y = y + speedY;
   
   if (x > width || x < 0) {
   speedX = -speedX;
   }
   if (y > height || y < 0) {
   speedY = -speedY;
   }   
   */
}