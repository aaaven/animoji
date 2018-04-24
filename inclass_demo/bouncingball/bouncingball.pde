int x;
int speed = 10;
void setup() {
  //run only once
  size(800, 600);
  noStroke();
  x = 10;
}

void draw() {
  //repeat forever/ loop
  background(47);
  fill(random(255));
  ellipse(x, 300, 100, 100);
  x = x + speed;
  if (x > 800) {
    speed = -speed;
  }
  if (x < 0) {
    speed = -speed;
  }
}

void keyPressed(){
//run once when key is pressed
    speed = -speed;
}

void mouseClicked(){
//run once when mouse is pressed
    speed = -speed;
}