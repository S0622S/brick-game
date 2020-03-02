void intro() {
  background(0, 255, 0);
  if (enter) {
    mode = GAME;
  }
  fill(255);
   rect(200, 450, 400, 75);
   fill(0);
   textSize(60);
   text("setting", 290, 505);
}
void introClicks() {
  mode = GAME;
    if (mouseX >= 200 && mouseX <= 600 && mouseY >= 450 && mouseY <= 525) {
    mode = SETTING; 
  }
}
