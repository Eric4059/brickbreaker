ArrayList <GameObject> objects;
ArrayList <Star> stars;
int mode;
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int OPTIONS = 5;
final int GAME2 = 6;

boolean up, down, left, right, space;

//colors
color dblue = #18168B;
color orange = #F7A100;
color green = #7EC424;
color purple = #8608CB;
color red = #FC271C;




StarFighter player1;

Enemy enemies;
int score;
int n = 100;

PImage ship;
PImage bullet;
PImage enemy;


void setup() {
  size(800, 800, P2D);
  mode = INTRO;
  strokeWeight(5);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  
  objects = new ArrayList<GameObject>();
  stars = new ArrayList<Star>();
  player1 = new StarFighter();
  enemies = new Enemy();
  rectMode(CENTER);
  
  imageMode(CENTER);
  
  ship = loadImage("ship.png");
  
  bullet = loadImage("bullet.png");
  
  enemy = loadImage("enemy.png");
  
  
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
