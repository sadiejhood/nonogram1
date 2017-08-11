boolean isIn(float x, float y, float wid, float hei){
  if(mouseX > x && mouseX < x + wid && mouseY > y && mouseY < y + hei){
    return true;
  }
  return false;
}