
float[] xPositions = new float [9];
float[] yPositions = new float [9];
boolean[] MoleIsUp = new boolean[9];
int time = 0;
int score = 0;
void setup(){
 size(900,900);
 int index = 0;
 for(int row = 0; row <3; row++){
   for(int col=0; col<3; col++){
     xPositions[index] = 100 + col * 200;
     yPositions[index] = 100 + row * 200;   
    MoleIsUp[index]=false;
    index++;
   }
  }
 }
void draw(){
  background(#4CB729);
  for(int i=0; i<9; i++){
    fill(#645E5B);
    ellipse(xPositions[i], yPositions[i],120,80);
    if(MoleIsUp[i]){
      fill(#8E5A38);
       ellipse(xPositions[i], yPositions[i] +20,80,80);
    }
  }
         
 if(frameCount % 50 ==0){
  int randomIndex= (int) random(9);
  MoleIsUp[randomIndex]=!MoleIsUp[randomIndex];
 }
fill(20,12,211);
 text("score:" +score,20,40);
 
    
  
  }
  void mousePressed(){

    for(int i=0; i<9; i++){
      float d= dist(mouseX, mouseY, xPositions[i], yPositions[i]);
      if(MoleIsUp[i] && d<40){
        MoleIsUp[i]=false;
        score++;
      }
    }
  }
      
