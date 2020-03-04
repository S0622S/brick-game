 float cursor1 = 400; 
 float cursor2 = 400;
 
void setting(){
  stroke(1);
 background(100);
 line(100, 100, 700, 100);
 line(100, 200, 700, 200);
 ellipse(cursor1, 100, 50, 50);
 ellipse(cursor2, 200, 50, 50);
 
 //ball
 fill(255);
 noStroke();
 ellipse(200, 400, diameter1, diameter1);
 //paddle
 ellipse(600, 400, diameter2, diameter2);
 fill(100);
 rect(400, 400, 1000, 1000);
 
 fill(255);
 textSize(20);
 text("BALL SIZE", 160, 340);
 text("paddle", 470, 340);
 
 fill(255);
 rect(10, 10, 50, 50);
 fill(0);
 textSize(20);
 text("BACK", 9, 40);

 if (dist(cursor1, 100, mouseX, mouseY) <= 50 && mousePressed) {
  cursor1 = mouseX; 
 }
 if (cursor1 <= 100){ cursor1 = 100; } 
 if (cursor1 >= 700){ cursor1 = 700;}
 if (cursor2 <= 100){ cursor2 = 100; } 
 if (cursor2 >= 700){ cursor2 = 700;}
 
 
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
