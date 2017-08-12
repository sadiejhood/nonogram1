class board{
 int [][] image; //if int is 1 it has an undiscovered square
 //2 means that the square has been discovered; 3 means incorrect answer
 boolean isComplete; //if image has no 1's and no 3's
 
 board(int [][] input){
   image = input;
   isComplete = false;
 }
 
 void startBoard(){
   for(int x = 0; x < image[1].length; x++){
     for(int y = 0; y < image.length; y++){
       fill(255);
       rect(x*20 + 280, y*20 + 80, 20,20);
     }
   }
   int num = 0;
   int times = 0;
   fill(0);
   for(int x = image.length - 1; x >= 0; x--){
     for(int y = 0; y < image.length; y++){
        if( image[x][y] == 1 ){
          num++;
        }
        else if(num > 0){
          text(num, x*20 + 285, 75 - times*10);
          num = 0;
          times++;
        }
     }
     times = 0;
     num = 0;
   }
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
       }
       rect(x*20 + 280, y*20 + 80, 20,20);
     }
   }
 }
 
 void clicking(){
   for(int x = 280; x < width - 20; x += 20){
     for(int y = 80; y < height - 20; y += 20){
       if(isIn(x,y,20,20)){
         if(image[(x-280)/20][(y - 80)/20] == 1){
              image[(x-280)/20][(y - 80)/20] = 2; 
           }
           else if(image[(x-280)/20][(y - 80)/20] == 0){
              image[(x-280)/20][(y - 80)/20] = 3; 
           }
           else if(image[(x-280)/20][(y - 80)/20] == 2){
              image[(x-280)/20][(y - 80)/20] = 1;
              fill(255);
           }
           else{
              image[(x-280)/20][(y - 80)/20] = 0;
              fill(255);
           }
         rect(x,y,20,20);
       }
     }
   }
 }
}