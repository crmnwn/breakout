void pause() {
  theme.pause();
  fill(green);
  rect(25,20,50,50,20);
  fill(red);
  triangle(40,30,40,60,60,45);
}

void pauseClicks() {
  if (mouseX > 25 && mouseX < 75 && mouseY > 20 && mouseY < 70) {
    mode = GAME;
  }
}
