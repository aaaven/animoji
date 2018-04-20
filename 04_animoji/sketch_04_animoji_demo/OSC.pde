//prepare osc library
import oscP5.*;
OscP5 oscP5;

//create variables we need
//PVector posePosition;
float posePositionX;
float posePositionY;
PVector poseOrientation;
boolean found;

//setup osc
void setupOSC() {
  //posePosition = new PVector();
  poseOrientation = new PVector();

  oscP5 = new OscP5(this, 8338);
  oscP5.plug(this, "mouthWidthReceived", "/gesture/mouth/width");
  oscP5.plug(this, "mouthHeightReceived", "/gesture/mouth/height");
  oscP5.plug(this, "eyebrowLeftReceived", "/gesture/eyebrow/left");
  oscP5.plug(this, "eyebrowRightReceived", "/gesture/eyebrow/right");
  oscP5.plug(this, "eyeLeftReceived", "/gesture/eye/left");
  oscP5.plug(this, "eyeRightReceived", "/gesture/eye/right");
  oscP5.plug(this, "jawReceived", "/gesture/jaw");
  oscP5.plug(this, "nostrilsReceived", "/gesture/nostrils");
  oscP5.plug(this, "found", "/found");
  oscP5.plug(this, "poseOrientation", "/pose/orientation");
  oscP5.plug(this, "posePosition", "/pose/position");
  oscP5.plug(this, "poseScale", "/pose/scale");
}



//OSC magic help processing receive all emails from faceOSC!

public void mouthWidthReceived(float w) {
  //println("mouth Width: " + w);
  mouthWidth = 2*w;
}

public void mouthHeightReceived(float h) {
  //println("mouth height: " + h);
  mouthHeight = 3*h;
}

public void eyebrowLeftReceived(float h) {
  //println("eyebrow left: " + h);
  leftEyebrowHeight = 5*h;
}

public void eyebrowRightReceived(float h) {
  //println("eyebrow right: " + h);
  rightEyebrowHeight = 5*h;
}

public void eyeLeftReceived(float h) {
  //println("eye left: " + h);
  eyeLeftHeight = 9*h;
}

public void eyeRightReceived(float h) {
  //println("eye right: " + h);
  eyeRightHeight = 9*h;
}

public void jawReceived(float h) {
  //println("jaw: " + h);
}

public void nostrilsReceived(float h) {
  //println("nostrils: " + h);
  nostrilHeight = 1.2*h;
}

public void found(int i) {
  //println("found: " + i); // 1 == found, 0 == not found
  found = i == 1;
}

public void posePosition(float x, float y) {
  //println("pose position\tX: " + x + " Y: " + y );
  posePositionX = x;
  posePositionY = y;
}

public void poseScale(float s) {
  //println("scale: " + s);
  poseScale = s;
}

public void poseOrientation(float x, float y, float z) {
  //println("pose orientation\tX: " + x + " Y: " + y + " Z: " + z);
  poseOrientation.x = x;
  poseOrientation.y = y;
  poseOrientation.z = z;
}


void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.isPlugged()==false) {
    //println("UNPLUGGED: " + theOscMessage);
  }
}