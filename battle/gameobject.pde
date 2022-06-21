class GameObject {

  float x, y, vx, vy, size;
  int lives;
  color c;





  GameObject() {
  }

  void show() {
  }
  
  boolean collidingWith(GameObject obj){
    return dist(obj.x, obj.y, x, y) < obj.size/2 + size/2;
  }
  
  void act() {
    x = x + vx;
    y = y + vy;
  }
}
