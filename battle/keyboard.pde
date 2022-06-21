void keyPressed() {
  if (keyCode == 'W')     up = true;
  if (keyCode == 'S')   down = true;
  if (keyCode == 'A')   left = true;
  if (keyCode == 'D')  right = true;
  if (key == ' ')      space = true;
}

void keyReleased(){
  if (keyCode == 'W')     up = false;
  if (keyCode == 'S')   down = false;
  if (keyCode == 'A')   left = false;
  if (keyCode == 'D')  right = false;
  if (key == ' ')      space = false;

}
