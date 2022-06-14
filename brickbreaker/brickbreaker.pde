//brick variables

int[] x; 
int[] y;
boolean[] alive;
int brickd;
int bd;

int score;
int mode;
int lives;

String winner;


final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int OPTIONS = 5;


int n;


float px, py; //paddle
float bx, by, vx, vy; //ball

boolean up, down, left, right, space;

int tempx, tempy;


void setup() {

  size(800, 800, P2D);
  mode = INTRO;
  strokeWeight(5);
  textAlign(CENTER, CENTER);
  textSize(60);
  
  score = 0;
  
  lives = 3;
  
  bd = 20;

  bx = 400;
  by = 600; 

  px = 400;
  py = 800;

  vx = random(3, 5);
  vy = 5;

  brickd = 50;
  n = 45;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];

  tempx = 80;
  tempy = 80;
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 80;
    if (tempx == width) {
      tempx = 80;
      tempy = tempy + 80;
    }


    i = i+1;
  }
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


void tactileRect(int x, int y, int w, int l) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+l) {
    stroke(255);
  } else {
    stroke(0);
  }
}



void tactileCircle(int X, int Y, int r) {
  if (dist(mouseX, mouseY, X, Y) < r) {
    stroke(255);
  } else {
    stroke(0);
  }
}


void tactileCircle(float posX, float posY, float r) {
  if (dist(posX, posY, mouseX, mouseY) < r) {
    stroke(255);
  } else {
    stroke(0);
  }
}
