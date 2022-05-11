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

void setup() {
  brickd=40;
  n=60;
  x=new int[n];
  y=new int[n];
  tempx=50;
  tempy=100;
  int i=0;
  while(i<n) {
    x[i]=tempx;
    y[i]=tempy;
    tempx=tempx+50;
    if(tempx==width){
      tempy=tempy+100;
      tempx=50;
    }
    i=i+1;
  }
  size(800,800);
  background(white);
  ellipseMode(CENTER);
  mode=INTRO;
  ////velocity
  //bx=400;
  //by=700;
  //vx=vx+1;
  //vy=vy+1;
  //paddle
  px=400;
  py=800;
  pd=100;
  //initialize keyboard vars
  akey=dkey;
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
