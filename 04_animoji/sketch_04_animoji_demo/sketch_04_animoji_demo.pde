/*Aven, animoji workshop
 Dependency: oscP5 library and faceOSC.app*/


float eyeLeftHeight;
float eyeRightHeight;
float mouthHeight;
float mouthWidth;
float nostrilHeight;
float leftEyebrowHeight;
float rightEyebrowHeight;
float poseScale;

void setup() {
  size(640, 480);
  frameRate(30);
  noStroke();
  rectMode(CENTER);
  setupOSC();
}

void draw() {

  background(255);
  if (found) {
    // let's do something here!
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
}