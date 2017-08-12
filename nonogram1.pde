board game = new board(generator());

void setup(){
  size(800,600);
  game.startBoard();
}

void draw(){
  game.drawBoard();
}

void mousePressed(){
   game.clicking();
}

void playGame(){
  
}