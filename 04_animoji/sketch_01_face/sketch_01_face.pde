/*Aven, animoji workshop
 Dependency: oscP5 library and faceOSC.app*/


float eyeLeftHeight = 25;
float eyeRightHeight = 25;
float mouthHeight = 3;
float mouthWidth = 25;
float nostrilHeight = 8;
float leftEyebrowHeight = 35;
float rightEyebrowHeight = 35;
float poseScale = 5;

void setup() {
  size(640, 480);
  noStroke();
  rectMode(CENTER);
}

void draw() {

  background(255);

  translate(width/2, 2*height/3);
  scale(poseScale);

  fill(0);
  //mouth
  ellipse(0, 0, mouthWidth, mouthHeight);
  //nose
  ellipse(-5, -nostrilHeight, 7, 3);
  ellipse(5, -nostrilHeight, 7, 3);
  //eyes
  ellipse(-20, -eyeLeftHeight, 20, 7);
  ellipse(20, -eyeRightHeight, 20, 7);
  //eyebow
  rect(-20, -leftEyebrowHeight, 25, 5);
  rect(20, -rightEyebrowHeight, 25, 5);
}