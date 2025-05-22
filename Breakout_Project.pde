color white= #ffffff;
color black= #000000;
float ballx, bally, balld;
float vx, vy;
float ax, ay;
boolean aKey, dKey;
float x, y, d;
float x2, y2, d2;
int playerPoints=0;
float playerSpeed;
import processing.sound.*;
SoundFile fail;
SoundFile success;
SoundFile music;
int mode =0;
final int INTRO =0;
final int GAME = 1;
final int PAUSE=2;
final int GAMEOVER=3;

void setup(){
  size(1000, 1000);
  fail = new SoundFile(this, "FAILURE.wav");
  success = new SoundFile(this, "SUCCESS.wav");
  music=new SoundFile(this, "MUSIC.mp3");
  ballx=width/2;
  bally=height/2;
  balld=50;

  music.loop();
  music.amp(1);
}

void draw(){
  if (mode==INTRO) {
    intro();
  } else if (mode==GAMEOVER) {
    gameOver();
  } else {
  
  circle(ballx, bally, balld);
    ballx+=vx;
    bally+=vy; 
    vy+=ay;
    vx+=ax;
  
  }
