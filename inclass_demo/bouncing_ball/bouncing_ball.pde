int x;
int speed = 10;
void setup() {
  //run only once
  size(800, 600);
  rectMode(CENTER);
  noStroke();
  background(0);
  x = 0;
}

void draw() {
  //repeat forever
  background(0);
  fill(255);
  rect(x, 300, 10, 10);
  x = x + speed;

  if (x > 800) {
    speed = -speed;
  }
  if (x < 0) {
    speed = -speed;
  }
}