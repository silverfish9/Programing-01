float x, y;
void setup(){
  size(500,500);
 x = width/2;
  x = height/2;
}
void mousePressed(){
x = mouseX;
y = mouseY;
}

void draw(){
 ellipse(x,y, 20,20);
 
}
