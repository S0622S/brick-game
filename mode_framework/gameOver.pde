void gameover() {
  background(255, 0, 0);
  if (by >= height - 20) {
    by = 400;
    bx = 400;
  }

}

void gameOverClicks() {
  mode = INTRO;
  setup();
}
