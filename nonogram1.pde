board game = new board(generator());
float currentTime = -1000;

void setup(){
  size(800,600);
  game.startBoard();
}

void draw(){
  if(frameCount > currentTime + 2){
    game.drawBoard();
  }
  else
    game.checkErrors();
}

void mouseDragged(){
  if(mouseButton == LEFT)
   game.clicking();
   
}

void mousePressed(){
  if(mouseButton == LEFT)
   game.clicking();
}

void keyPressed(){
  if(key == 'c'){
    currentTime = frameCount;
  }
}

void playGame(){
  
}