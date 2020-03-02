 float cursor1 = 400; 
 float cursor2 = 400;
 
void setting(){
 background(100);
 line(100, 100, 700, 100);
 line(100, 200, 700, 200);
 ellipse(cursor1, 100, 50, 50);
 ellipse(cursor2, 200, 50, 50);
 fill(255);
 rect(10, 10, 50, 50);
 fill(0);
 textSize(20);
 text("Back", 12, 40);

 if (dist(cursor1, 100, mouseX, mouseY) <= 50 && mousePressed) {
  cursor1 = mouseX; 
 }
 if (cursor1 <= 100){ cursor1 = 100; } 
 if (curosr1 >= 700){ curosor1 = 700;}
 
 diameter1 = map(cursor1, 100, 700, 10, 30);
 
 if (dist(cursor2, 200, mouseX, mouseY) <= 50 && mousePressed) {
  cursor2 = mouseX;
 }
 
 diameter2 = map(cursor2, 100, 700, 50, 150);
 
 
 
}

void settingClicks() {
  if (mouseX >= 10 && mouseX <= 70 && mouseY >= 10 && mouseY <= 70){
   mode = INTRO; 
  }
  
}
