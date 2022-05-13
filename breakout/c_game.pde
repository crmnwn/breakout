void game() {
  background(blue);
  //score
  fill(0);
  textSize(30);
  text("SCORE: "+score, 50, 50);
  text("LIVES: "+lives, 600, 50);
  //paddle
  fill(white);
  circle(px,py,pd);
  if(akey)px=px-5;
  if(dkey)px=px+5;
  if(px<0)px=0;
  if(px>800)px=800;
  if(py<0)py=0;
  if(py>800)py=800;
  //ball
  fill(white);
  strokeWeight(1);
  circle(bx,by,bd);
  bx=bx+vx;
  by=by+vy;
  //bouncing
  if(dist(bx,by,px,py)<bd/2+pd/2) {
    vx=(bx-px)/10;
    vy=(by-py)/10;
  }
  if(by<bd/2||by>height-bd/2) {
    //vy=vy*-1;
    lives=lives-1;
    bx=400;
    by=600;
    vy=1;
    vx=0;
  }
  if(bx<bd/2||bx>width-bd/2) {
    vx=vx*-1;
  }
  //bricks
  //circle(x[0],y[0],brickd);
  //circle(x[1],y[1],brickd);
  //circle(x[2],y[2],brickd);
  int i=0;
  while(i<n){
    if(alive[i]==true){
      manageBrick(i);
    }
    i=i+1;
  }
  if(score==60){
    win=true;
    mode=GAMEOVER;
  }
  if(lives==0){
    mode=GAMEOVER;
  }
}

void gameClicks() {
  //if (mouseX > 25 && mouseX < 75 && mouseY > 25 && mouseY < 75) {
    //mode = PAUSE;
  //}
}

void manageBrick(int i) {
  if(y[i]==100)fill(red);
    if(y[i]==200)fill(pink);
    if(y[i]==300)fill(blue);
    if(y[i]==400)fill(green);
    circle(x[i],y[i],brickd);
    if(dist(bx,by,x[i],y[i])<bd/2+brickd/2) {
      vx=(bx-x[i])/10;
      vy=(by-y[i])/10;
      alive[i]=false;
      score++;
    }
}
