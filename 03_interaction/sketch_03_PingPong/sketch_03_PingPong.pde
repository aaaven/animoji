int x = 10;
int y = 240;
int speedX = 10;
int speedY = -5;
int ballsize = 10;
void setup() {
  //code run only once 
  size(640, 480);
}

void draw() {
  //code will repeat/loop forever
  background(0);
  fill(255);
  ellipse(x, y, ballsize, ballsize);

  //there is a lot repeat in previous code! let's simply it!
  x = x + speedX;
  y = y + speedY;

  if (x > width || x < 0) {
    speedX = -speedX;
  }
  if (y > height || y < 0) {
    speedY = -speedY;
  }
}

void mouseClicked() {
  speedX = -speedX;
  stroke(255);
  line(x,0,x,height);
}

void keyPressed() {
  speedY = -speedY;
  stroke(255);
  line(0,y,width,y);
}