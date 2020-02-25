
void game() {
  background(0, 0, 255);
  strokeWeight(0);
  
  int i = 0;
  while (i < 36) {
    Brick b = myBricks.get(i);
    b.show();
    b.act();
   i = i + 1; 
  }
  
  ball();
  paddle();
  if (by >= height) {
    mode = GAMEOVER;
  }
  //pause button
    strokeWeight(1);
  rect(385, 20, 30, 30);
}
void gameClicks() {
  //pause button setting
  if (mouseX >= 385 && mouseX <= 415 && mouseY >= 20 && mouseY <= 50) {
    mode = PAUSE;
  }
  
}
void ball() {
  fill(255);
  ellipse(bx, by, 20, 20);
  bx = bx + bvx;
  by = by + bvy;
  if (bx <= 10 || bx >= width - 10) {
    bvx = -bvx;
  }
  if (by <= 0 || by >= height ) {
    bvy = -bvy;
  }
  if (dist(bx, by, px, py)<= 60) {
    bvx = (bx - px)/10;
    bvy = (by - py)/10;
  }
}

void paddle() {
  fill(255);
  ellipse(px, py, 100, 100);
  if (rightKey) px = px + 5;
  if (leftKey) px = px - 5;
  if (px <= 40) {
   px = 40; 
  }
  if (px >= 760) {
   px =  760;
  }
}
