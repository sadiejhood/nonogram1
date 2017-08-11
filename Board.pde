class board{
 int [][] image; //if int is 1 it has an undiscovered square
 //2 means that the square has been discovered; 3 means incorrect answer
 boolean isComplete; //if image has no 1's and no 3's
 
 board(int [][] input){
   image = input;
   isComplete = false;
 }
 
 void drawBoard(){
   for(int x = 0; x < image[1].length; x++){
     for(int y = 0; y < image.length; y++){
       if(image[x][y] < 2){ //if hasn't been selected
         stroke(0);
         fill(255);
       }
       else //user has highlighted
         fill(0); 
       if(isIn(x*20 + 280, y*20 + 80, 20,20)){
         fill(100);
         if(mousePressed){
           
         }
       }
       rect(x*20 + 280, y*20 + 80, 20,20);
     }
   }
 }
}