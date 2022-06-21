class EnemyBullet extends GameObject {
 

  EnemyBullet(float ex, float ey) {
    x = ex;  
    y = ey;
    vx = 0;
    vy = 10;
    size = 60;
    lives = 1;
  }


  void act() {
    super.act();
    if (x < 0 || x > width || y < 0 || y > height) lives = 0;

     
  }

  void show() {
    image(bullet, x, y, size, size);
  }
}
