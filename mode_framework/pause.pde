void pause() {
  fill(0);
rect(200, 100, 400, 400);
rect(250, 150, 300, 50);
fill(255);
strokeWeight(1);
text("resume", 250, 150, 0);
stroke(0);
}

void pauseClicks() {
   if (mouseX >= 385 && mouseX <= 415 && mouseY >= 20 && mouseY <= 50) {
   mode = GAME; 
  }
  
}
