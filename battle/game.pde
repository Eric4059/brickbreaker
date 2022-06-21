void game() {
  background(0);
  stars.add(new Star());
  player1.act();
  player1.show();
  if (frameCount%55 == 0) objects.add(new Enemy());

  for (int i = 0; i < stars.size(); i++) {
    Star s = stars.get(i);
    s.act();
    s.show();

    if (s.lives == 0) {
      stars.remove(i);
    } 
  }
  for (int i = 0; i < objects.size(); i ++) {
    GameObject obj = objects.get(i);
    obj.act();
    obj.show();


    if (obj.lives == 0) {
      objects.remove(i);
    } 
  }
  
  //score
  text("Score: " + score, 290, 200);
  
  
  
  
}


void gameClicks() {
}
