int x = 10;
int y = 240;

void setup() {
  //code run only once 
  size(640, 480);
}


void draw() {
  //code will repeat/loop forever
  //background(random(255), random(255), random(255));
  background(0);
  fill(255);
  ellipse(x,y,10,10);
  x = x + 1;
}