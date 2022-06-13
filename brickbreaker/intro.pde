void intro() {
  background(#8243D6);
  fill(0);
  textSize(100);
  text("BREAKOUT", 400, 200);
  
  
  //start
  tactileRect(300, 500, 200, 80);
  fill(255);
  rect(300, 500, 200, 80);
  fill(0);
  textSize(60);
  text("Start", 400, 530);
  
  
}



void introClicks() {
  mode = GAME;
}
