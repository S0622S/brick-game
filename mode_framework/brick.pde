//1. Instance Variables
//2. Constructer
//3. Behavior 
class Brick {
  //1.Instance Variables
  float x, y;
  int hp;
  color c;

  //2.Constructer
  Brick() {
    x = random(0, width);
    y = random(0, height);
    c = #ffffff;
    hp = 1;
  }



  void act() {
    if (hp > 0 && dist(x, y, bx, by) < 35) {
      hp = hp - 1;
      bvx = (bx - x)/5;
      bvy = (by - y)/5;
    }
  }

  void show() {
    if (hp > 0) {
      fill(c);
      ellipse(x, y, 50, 50);
    }
  }
}
