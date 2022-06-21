class Star { 
  //instance variables 
  float x, y;
  float vx, vy;
  float size;
  int lives;
  float hue, hue2, hue3;

  //constructor
  Star() {
    x = random(0, width);
    y = 0;
    lives = 1;
    size = random(1, 5);
    vy = size/1.4;

    hue = random(0, 255);
    hue2 = random(0, 255);
    //hue = hue2 = 0;
    hue3 = random(0, 255);
  }

  void act() {
    x = x + vx;
    y = y + vy;
    if (y > height) {
      lives = 0;
    }
  }


  void show() {
    noStroke();
    fill(hue, hue2, hue3);
    circle(x, y, size);
  }
}
