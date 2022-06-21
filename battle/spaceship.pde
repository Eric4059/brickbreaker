class StarFighter extends GameObject{
  float x, y, size;
  float vx, vy;
  int lives, counter;
  
  
  
  //constructor
  StarFighter(){
    x = 400;
    y = 400;
    vx = vy = 0;
    lives = 3;
    
  
  
  
  }
  
  
  
  
  //behaviour functions
  
  void act(){
     
     super.act();
     
     counter++;
    
     if(up) vy = -5;
     if(down) vy = 5;
     if(left) vx = -5;
     if(right) vx = 5;
     if(space && counter%8 == 0) {
     
       objects.add(new Bullet());
       //counter = 0;
       
     }
     
     if(x <= 30) x = 30;
     if(x >= 770) x = 770;
     if(y <= 30) y = 30;
     if(y >= 770) y = 770;
     
     vx = vx*0.9;
     vy = vy*0.9;
     
     
     
     
     
     x += vx;
     y += vy;
  
  }
  
  
  void show(){
     fill(255);
     image(ship, x, y, 60, 60);
  
  }
  



}
