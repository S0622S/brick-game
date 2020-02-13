void keyPressed() {
  if (keyCode == RIGHT) rightKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == ENTER) enter = true;
}

void keyReleased() {
  if (keyCode == RIGHT) rightKey = false;
  if (keyCode == LEFT) leftKey = false;
  if (keyCode == ENTER) enter = false;
}
