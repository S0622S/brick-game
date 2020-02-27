class Brick {

  //1. Instance Variables
  float x, y;
  int hp;
  color c; //should be colour

  //2. Constructor
  Brick() {
    x = gridx;
    y = gridy;
    c = #ffffff;
    hp = (int)random(1,4);
  }

  //3. Behaviour Functions
  void act() {
    if (hp > 0 && dist(x, y, bx, by) < 35) {
      
      hp = hp - 1;
      bvx = (bx - x)/5;
      bvy = (by - y)/5;
    }
  }

  void show() {
   
    if (hp > 0) {
      c=255/hp;
      fill(c);
      ellipse(x, y, 50, 50);
    }
  }
  
  void checkScore(){
    if(hp == 0){
       score++;
       hp--;
    }
  }
}
