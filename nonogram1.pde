board game = new board(generator());
float currentTime = -1000;

boolean isDone = false;

void setup(){
  size(800,600);
  game.startBoard();
}

void draw(){
  if(!isDone){
  if(frameCount > currentTime + 2){
    game.drawBoard();
  }
  else
    game.checkErrors();
  }
  else
    background(0,0,255);
  
  isDone = game.won();
}

void mouseDragged(){
  if(!isDone){
  if(mouseButton == LEFT)
   game.clicking();
  if(mouseButton == RIGHT)
    game.rightClick();
  }
}

void mousePressed(){
  if(!isDone){
  if(mouseButton == LEFT){
   game.clicking();
  }
  if(mouseButton == RIGHT){
    game.rightClick();
  }
}
}

void keyPressed(){
  if(key == 'c'){
    currentTime = frameCount;
  }
  if(key == 'r'){
    game.clearBoard();
  }
}

void playGame(){
  
}