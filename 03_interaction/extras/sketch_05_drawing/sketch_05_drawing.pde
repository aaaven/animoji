int ballSize = 50;
void setup() {
  //code run only once 
  size(640, 480);
  background(0);
  noStroke();
}


void draw() {
  //code will repeat/loop forever
  //background(random(255), random(255), random(255));
  fill(255);
  ellipse(mouseX, mouseY, ballSize, ballSize);
}

void keyPressed() {
  background(0);
}