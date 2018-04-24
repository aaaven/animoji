/*
This is a sound file player. 
*/


import processing.sound.*;

SoundFile soundfile;

void setupSound() {
    //Load a soundfile
    soundfile = new SoundFile(this, "sound.mp3");
}      