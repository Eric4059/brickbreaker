void intro() {
  background(#B454E8);

  fill(0);
  textSize(100);
  text("BIRD KILLER", 400, 200);
  
  
  //start
  tactileRect(300, 500, 200, 80);
  fill(255);
  rect(400, 535, 200, 80);
  fill(0);
  textSize(50);
  text("Start", 400, 528);
  
  
  
  
}


void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
  
}
