 PImage gear;
  PImage arrow;
int white = 255;
int grey = 100;
void intro() {
  background(0, 255, 0);
  if (enter) {
    mode = GAME;
  }

  if (mouseX >= 740 && mouseX <= 780 && mouseY >= 540 && mouseY <= 580) {
    fill(100);
  } else {
    fill(255);
  }
  stroke(0);
  rect(740, 540, 40, 40);
 
  image(gear, 744, 544, 33, 33);
  image(
}
void introClicks() {
  mode = GAME;

  if (mouseX >= 740 && mouseX <= 780 && mouseY >= 540 && mouseY <= 580) {
    mode = SETTING;
  }
}
