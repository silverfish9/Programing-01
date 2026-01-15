int playerX = 0;
int playerY = 0;
int goalX = 4;
int goalY = 4;
boolean gamewon = false;
void setup() {
  size (400, 400);
  textSize(20);
}
void draw () {
  background (95, 162, 161);

for(int i=0; i<5; i++){
  for(int k=0; k<5; k++){
    
  stroke(0);
  fill(155,235,43);
  rect(i * 80,k*80,80,80);
  }
}
  
  fill(152,5,43);
rect(playerX*80, playerY*80, 80, 80);

 fill(15,25,43);
rect(goalX*80, goalY*80,80,80);


  if( gamewon){
    fill(255);
   text("victory",200,200);
   noLoop();
  }

}
void keyPressed() {
  if ((key == 'w' && playerY>0)) {
    playerY--;
  }else if ((key == 's' && playerY<4)){
    playerY++;
}else if((key =='a' && playerX>0)){
    playerX--;
  }else if((key == 'd' && playerX<4)){
    playerX++;
  }
if(playerX == goalX && playerY == goalY){
  gamewon = true;
}
}
