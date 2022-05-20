void gameover() {
  theme.pause();
  gameover.play();
  textSize(50);
  if(win==true){
    background(pink);
    text("you win!",400,400);
  }else{
    background(red);
    text("you lost",400,400);
  }
}

void gameoverClicks() {
  reset();
  theme.rewind();
  mode = INTRO;
}
