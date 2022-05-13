void reset() {
  mode=INTRO;
  brickd=40;
  n=60;
  x=new int[n];
  y=new int[n];
  alive=new boolean[n];
  tempx=50;
  tempy=100;
  int i=0;
  while(i<n) {
    x[i]=tempx;
    y[i]=tempy;
    alive[i]=true;
    tempx=tempx+50;
    if(tempx==width){
      tempy=tempy+100;
      tempx=50;
    }
    i=i+1;
  }
  //scoring
  score=0;
  win=false;
  lives=3;
  ////velocity
  bx=400;
  by=600;
  vy=1;
  vx=0;
  bd=10;
  //paddle
  px=400;
  py=800;
  pd=100;
  //initialize keyboard vars
  akey=dkey;
}
