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
   
   for(int y = image.length - 1; y >= 0; y--){
     for(int x = 0; x < image.length; x++){
        if( image[x][y] == 1 ){
          num++;
        }
        else if(num > 0){
          if(num >= 10)
            times++;
          text(num, 270 - times*10, y*20 + 95);
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
       if(mouseX > x*20 +280 && mouseX < x*20 + 300)
         fill(230);
       if(mouseY > y*20 + 80 && mouseY < y*20 + 100)
         fill(230);
       if(isIn(x*20 + 280, y*20 + 80, 20,20)){
         fill(100);
       }
       if(image[x][y] >= 2){ //if hasn't been selected
         stroke(0);
         fill(0);
       }
       rect(x*20 + 280, y*20 + 80, 20,20);
       
     }
   }
   for(int i = 0; i <= 25; i+=5){
     strokeWeight(3);
     line(i*20 + 280, 80, i*20 + 280, height-20);
     line(280, i*20 + 80, width-20, i*20 + 80);
     strokeWeight(1);
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
              //image[(x-280)/20][(y - 80)/20] = 1;
              //fill(255);
           }
           else{
              //image[(x-280)/20][(y - 80)/20] = 0;
              //fill(255);
           }
         rect(x,y,20,20);
       }
     }
   }
 }
 
 void rightClick(){
   for(int x = 280; x < width - 20; x += 20){
     for(int y = 80; y < height - 20; y += 20){
       if(isIn(x,y,20,20)){
         if(image[(x-280)/20][(y - 80)/20] == 1){
              //image[(x-280)/20][(y - 80)/20] = 2; 
           }
           else if(image[(x-280)/20][(y - 80)/20] == 0){
              //image[(x-280)/20][(y - 80)/20] = 3; 
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
 
 void checkErrors(){
   for(int x = 0; x < image[1].length; x++){
     for(int y = 0; y < image.length; y++){
        if(image[x][y] == 3){
           fill(255,0,0);
           rect(x*20 + 280, y*20 + 80, 20,20);
        }
     }
   }
  delay(1000);
 }
 
 boolean won(){
   for(int x = 0; x < 25; x++){
      for(int y = 0; y < 25; y++){
        if(image[x][y] == 1 || image[x][y] == 3){
           return false; 
        }
      }
   }
   return true;
 }

void clearBoard(){
   for(int x = 0; x < image.length; x++){
     for(int y = 0; y < image.length; y++){
       if(image[x][y] == 2){
          image[x][y] = 1; 
       }
       else if(image[x][y] == 3){
          image[x][y] = 0; 
       }
     }
   }
}
}