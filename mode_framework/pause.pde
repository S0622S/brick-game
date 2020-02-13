void pause() {
 fill(255);
  rect(400, 400, 400, 500);
  rect(400, 300, 200, 50);
  fill(0);
  strokeWeight(1);
  text("RESUME", 400, 300);
  fill(255);
  rect(400, 400, 200, 50);
  fill(0);
  text("INTRO", 400, 400);
}

void pauseClicks() {
   if (mouseX > 375 && mouseX < 425 && mouseY > 5 && mouseY < 55) {
    mode = GAME;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 250 && mouseY < 350) {
    mode = GAME;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 375 && mouseY < 425) {
    mode = INTRO;
  }
}
