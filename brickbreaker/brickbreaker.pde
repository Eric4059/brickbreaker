//brick variables

int[] x; 
int[] y;
int brickd;


int mode;

final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int OPTIONS = 5;
final int GAME2 = 6;








void setup(){
  
  size(800, 800);
  mode = INTRO;
  
  brickd = 50;
  x = new int[3];
  y = new int[3];
  
  x[0] = 100;
  y[0] = 100;
  
  x[1] = 400;
  y[1] = 100;
  
  x[2] = 100;
  y[2] = 100;
  
  x[3] = 100;
  y[3] = 100;
}














void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {

    println("Error: Mode = " + mode);
  }
}
