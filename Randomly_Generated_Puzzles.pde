int [][] generator(){
  int [][] board = new int [25][25];
  
  for(int x = 0; x < board[1].length; x++){
     for(int y = 0; y < board.length; y++){
        if(random(100) < 30){
            board[x][y] = 1;
        }
     }
  }
  
  return board;
}