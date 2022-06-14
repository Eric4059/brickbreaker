void game() {
  background(#8243D6);
  
  //score
  textSize(50);
  text("Score: " + score, 200, 700);
  if (score == n) {
    winner = "BREAKOUT!!";
    mode = GAMEOVER;
  }
  
  
  //lives
  textSize(50);
  text("Lives: " + lives, 600, 700);
  if (lives == 0) {
    winner = "GAMEOVER";
    mode = GAMEOVER;
  }
  
  if(by >= 790){
    bx = 400;
    by = 500;
    vx = 0;
    vy = 3;
    px = 400;
    
  lives -= 1;
  }
  
  
  
  
  
  
    //paddle
    circle(px, py, 100);

    if (left) px += -5;
    if (right) px += 5;




    //ball
    circle(bx, by, 20);

    bx += vx;
    by += vy;

    if (dist(px, py, bx, by) <= 60) {
      vx = (bx - px)/5;
      vy = (by - py)/5;
    }

    //parameters
    if (px <= 50) px = 50;
    if (px >= 750) px = 750;
    if (by <= 10) {
      vy = -vy;
    }

    if (bx <= 10) {
      vx = -vx;
    }
    
    if(bx >= 790){
      vx = -vx;
    }

    
    if(by == 0){
      by = 5;
    }





    //bricks
    int i=0;
    
    while (i < n) {
      if (alive[i] == true) {
        manageBricks(i);
      }

      i = i + 1;
    }


  }


void gameClicks() {
}


void manageBricks(int i) {
  fill(0);
  stroke(255);
  strokeWeight(2);
  circle(x[i], y[i], brickd);


  if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2) {
    vx = (bx - x[i])/5;
    vy = (by - y[i])/5;
    alive[i] = false;
    score += 1;
  }
}
