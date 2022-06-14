void gameover() {
  
  background(#8243D6);
  
  fill(0);
  textSize(100);
  text(winner, 400, 300);
  
  
  //buttons

  tactileRect(100, 500, 200, 80);
  fill(255);
  rect(100, 500, 200, 80);
  fill(0);
  textSize(50);
  text("Restart", 200, 530);
  
  tactileRect(500, 500, 200, 80);
  fill(255);
  rect(500, 500, 200, 80);
  fill(0);
  textSize(50);
  text("Home", 600, 530);
}


void gameoverClicks() {
  
  if(mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 580){
    lives = 3;
    score = 0;
  mode = GAME;
  bx = 400;
  by = 500;
  px = 400;
  py = 800;
  vx = 0;
  vy = 3;
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
  
  if(mouseX > 500 && mouseX < 700 && mouseY > 500 && mouseY < 580){
    lives = 3;
    score = 0;
  mode = GAME;
  bx = 400;
  by = 500;
  px = 400;
  py = 800;
  vx = 0;
  vy = 3;
  
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
  mode = INTRO;
  
  
  
  }
  
  
  
}
