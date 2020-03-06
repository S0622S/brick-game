ArrayList<Brick> myBricks;
final int INTRO = 1;
final int SETTING = 2;
final int GAME  = 3;
final int GAMEOVER = 4;
final int PAUSE = 5;
final int WIN = 6;
int mode = INTRO;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause
float bx, bvx, bvy;
float by;
float px, py;
boolean leftKey, rightKey, enter;

int score;

int gridx = 32;
int gridy = 45;

void setup() {
  size(800, 600);
  gridx = 32;
  gridy = 45;
  bvx = 0;
  bvy = 5;
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
 
   gear = loadImage("gear.png");
   arrow = loadImage("arrow.png");
  
  
  score = 0;
}

  void draw() {
    if (mode == INTRO) {
      intro();
    } else if (mode == SETTING) {
      setting();
    } else if (mode == GAME) {
      game();
    } else if (mode == GAMEOVER) {
      gameover();
    } else if (mode == WIN) {
      win();
    } else if (mode == PAUSE) {  
      pause();
    } else {
      println("?");
    }
  }
