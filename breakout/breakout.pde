PFont font;
//brick variables
int[] x;
int[] y;
boolean[] alive;
int n;
int tempx, tempy;
int brickd;
//color palette
color green = #D4E09B;
color white = #F6F4D2;
color blue = #CBDFBD;
color pink = #F19C79;
color red = #A44A3F;
int mode;
final int INTRO=1;
final int GAME=2;
final int PAUSE=3;
final int GAMEOVER=4;
//keyboard variables
boolean akey,dkey;
//game entities
float bx,by,bd,vx,vy,px,py,pd;
//scoring
int score;
boolean win;
int lives;
void setup() {
  size(800,800);
  background(white);
  ellipseMode(CENTER);
  textMode(CENTER);
  reset();
  //image and font
  font=createFont("nasa.otf",50);
}

void draw() {
   if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else {
    println("Mode is :" + mode);
  }
}
