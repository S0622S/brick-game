ArrayList<Brick> myBricks;

final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = INTRO;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause
float bx, by, bvx, bvy;
float px, py;
boolean leftKey, rightKey, enter;

void setup() {
  size(800, 600);

  myBricks  = new ArrayList <Brick>();
  int i = 0;
  while (i < 1000) {
   myBricks.add(new Brick() ); 
    i = i + 1;
  }
  bx = 400;
  by = 0;
  bvy = 3;
  px = width/ 2;
  py = height;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {  
    pause();
  } else {
    println("?");
  }
}
