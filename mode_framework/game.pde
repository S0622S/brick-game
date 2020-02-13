
void game() {
  background(0, 0, 255);
  ball();
  paddle();
  if (by >= height) {
    mode = GAMEOVER;
  }
  rect(400, 30, 50, 50);
}
void gameClicks() {
}
void ball() {
  ellipse(bx, by, 20, 20);
  bx = bx + bvx;
  by = by + bvy;
  if (bx < 0 || bx > width) {
    bvx = -bvx;
  }
  if (by < 0 || by > height) {
    bvy = -bvy;
  }
  if (dist(bx, by, px, py)<= 60) {
    bvx = (bx - px)/10;
    bvy = (by - py)/10;
  }
  if (mouseX > 375 && mouseX < 425 && mouseY > 5 && mouseY < 55) {
    mode = PAUSE;
  }
}
void paddle() {
  ellipse(px, py, 100, 100);
  if (rightKey) px = px + 5;
  if (leftKey) px = px - 5;
}
