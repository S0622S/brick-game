void pause() {
  fill(255);
  background(100);
  strokeWeight(1);
rect(200, 100, 400, 400);
rect(250, 150, 300, 50);
fill(0);
stroke(0);
textSize(50);
text("resume", 315, 190);
}

void pauseClicks() {
   if (mouseX >= 385 && mouseX <= 415 && mouseY >= 20 && mouseY <= 50) {
   mode = GAME; 
  }
  if (mouseX >= 250 && mouseX <= 550 && mouseY >= 150 && mouseY <= 200) {
   
   mode = GAME; 
  }
  
}
