int playerX = 0;
int playerY = 0;
int goalX = 8;
int goalY = 8;
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
rect(playerX*80, playerY*80,80,80);
}
void keyPressed() {
  if ((key == 'w')||(key == 'W') && playerY>0) {
    playerY--;
  }else if((keyCode == 's')||(key == 'S') && playerY<8){
    playerY++;
}else if((keyCode=='a')||(key == 'A') && playerX>0){
    playerX--;
  }else if((keyCode == 'd')||(key =='D') && playerX<8){
    playerX++;
  }
if(playerX == goalX && playerY == goalY){
  gamewon = true;
}
}
