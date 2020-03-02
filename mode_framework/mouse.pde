void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameOverClicks();
  } else if (mode == WIN) {
    winClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == SETTING) {
    settingClicks();
  } else {
     println("Mode error");
  }
}
