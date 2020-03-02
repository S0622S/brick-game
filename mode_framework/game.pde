void game() {
  background(0, 0, 255);
  strokeWeight(0);

  int i = 0;
  while (i < 36) {
    Brick b = myBricks.get(i);
    b.show();
    b.act();
    i = i + 1; 
    b.checkScore();
    
    stroke(0);
    fill(100);
    rect(700, 300, 100, 50);
    fill(0);
    textSize(20);
    text("Scores: " + score, 705, 330);
  }


  ball();
  paddle();
  if (by >= height) {
    mode = GAMEOVER;
  }
  //pause button
  strokeWeight(1);
  rect(385, 20, 30, 30);

  if (score == 36) {
    mode=WIN;
  }
}

void gameClicks() {
  //pause button setting
  if (mouseX >= 385 && mouseX <= 415 && mouseY >= 20 && mouseY <= 50) {
    mode = PAUSE;
  }
}
float diameter1 = 20;
void ball() {
  fill(255);
  ellipse(bx, by, diameter1, diameter1);
  bx = bx + bvx;
  by = by + bvy;
  if (bx <= 10 || bx >= width - diameter1 / 2) {
    bvx = -bvx;
  }
  if (by <= diameter1 / 2 || by >= height ) {
    bvy = -bvy;
  }
  if (dist(bx, by, px, py) <= diameter2 / 2 + 10) {
    bvx = (bx - px)/10;
    bvy = (by - py)/10;
  }
}

float diameter2 = 100;
void paddle() {
  stroke(0);
  strokeWeight(3);
  fill(255);
  ellipse(px, py, diameter2, diameter2);
  if (rightKey) px = px + 7;
  if (leftKey) px = px - 7;
  if (px <= diameter2 / 2) {
    px = 50;
  }
  if (px >= 800 - diameter2 / 2) {
    px =  750;
  }
}
