ArrayList<Brick> myBricks;

final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = INTRO;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause
float bx, bvx, bvy;
float by;
float px, py;
boolean leftKey, rightKey, enter;

int gridx = 32;
int gridy = 45;

void setup() {
  size(800, 600);
  gridx = 32;
  gridy = 45;
  myBricks  = new ArrayList <Brick>();
  int i = 0;
  while (i < 36) {
    myBricks.add(new Brick() ); 
    gridx = gridx + 67;
    if (gridx > 800) {
      gridx = 32;
      gridy = gridy + 55;
      i = i + 1;
    }
    bx = 400;
    by = 400;
    bvy = 5;
    px = width/ 2;
    py = height;
  }
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
