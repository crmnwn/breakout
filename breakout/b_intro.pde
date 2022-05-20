void intro() {
  theme.play();
  textFont(font);
  background(white);
  fill(0);
  textSize(100);
  text("BREAKOUT!", 400, 400);
  textSize(40);
  text("press anywhere to start", 400, 500);
  reset();
}
void introClicks() {
  mode = GAME;
}
