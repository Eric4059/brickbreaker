void intro() {
  intro.play();
  background(#8243D6);
  
  textFont(title);
  fill(0);
  textSize(100);
  text("BREAKOUT", 400, 200);
  
  
  //start
  textFont(title);
  tactileRect(300, 500, 200, 80);
  fill(255);
  rect(300, 500, 200, 80);
  fill(0);
  textSize(50);
  text("Start", 400, 535);
  
  
}



void introClicks() {
  mode = GAME;
}
