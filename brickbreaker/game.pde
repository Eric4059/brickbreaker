void game() {
  background(#8243D6);


  //paddle
  circle(px, py, 100);

  if (left) px += -5;
  if (right) px += 5;




  //ball
  circle(bx, by, 20);

  bx += vx;
  by += vy;

  if (dist(px, py, bx, by) <= 60) {
    vx = (bx - px)/10;
    vy = (by - py)/10;
  }

  //parameters
  if (px <= 50) px = 50;
  if (px >= 750) px = 750;
  if (by <= 10) {
    vy = -vy;
  }
  if (by >= 790) {
    vy = -vy;
  }
  if (bx <= 10) {
    vx = -vx;
  }
  if (bx >= 790) {
    vx = -vx;
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
  strokeWeight(2);
  circle(x[i], y[i], brickd);


  if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2) {
    vx = (bx - x[i])/8;
    vy = (by - y[i])/8;
    alive[i] = false;
  }
}
