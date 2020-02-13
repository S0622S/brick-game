void gameover() {
  background(255,0,0);
  if (by >= height - 20) {
  by = 0;
  bx = 400;                  
  }
}

void gameOverClicks() {
  mode = INTRO;
}
