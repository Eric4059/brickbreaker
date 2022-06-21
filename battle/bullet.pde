class Bullet extends GameObject{

   Bullet(){
   x = player1.x;  
   y = player1.y;
   vx = 0;
   vy = -10;
   size = 60;
   c = #FF0000;
   lives = 1;

   
   
   
   
   }
   
   
   void act(){
   super.act();
   
   if(x < 0 || x > width || y < 0 || y > height) lives = 0;
   
   
   }
   
   
   void show(){
   image(bullet, x, y, size, size);
   
   }
   

}
