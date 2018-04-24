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

float avgWidth = 0;
boolean currentState = false;
boolean previousState = false;
FloatList widthRecord;

void setup() {
  //size(640, 480);
  fullScreen();
  frameRate(30);
  noStroke();
  rectMode(CENTER);
  setupOSC();
  setupSound();
  widthRecord = new FloatList();

  textAlign(CENTER);
  textSize(30);
}

void draw() {
  background(255);

  if (found) {
    if (widthRecord.size() < 50) {
      //add in new mouth width if the list length is shorter than 50
      widthRecord.append(mouthWidth);
      fill(int(random(2))*255);
      text("I saw you! But wait a sec, I need some more data...", width/2, height/2);
    } else {
      //get average mouth width
      float sum = 0;
      for (int i = 0; i < widthRecord.size(); i++) {
        sum += widthRecord.get(i);
      }
      avgWidth = sum/widthRecord.size();
      //println("average mouth width: " + avgWidth);

      //do something after we get the average mouth width
      if (mouthWidth > 1.1*avgWidth) currentState = true;
      else currentState = false;

      if (!previousState&&currentState) {
        println("hello what makes you so happy?");
        soundfile.stop();
        soundfile.play(0.5);
      }

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


      previousState = currentState;

      //do something after we get the average mouth width
    }
  } else {
    widthRecord = new FloatList();
    fill(int(random(2))*255);
    text("Searching for Faces... Let's smile!!!", width/2, height/2);
    soundfile.stop();
  }
}