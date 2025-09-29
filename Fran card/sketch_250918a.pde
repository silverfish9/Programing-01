String Fran = "Fran";
PImage character; 
void setup(){
  
size(400,500);
background(#649AC6);
}
void draw(){
character = loadImage("fran.jpeg");
image(character, 20, 20, 200, 180);
textSize(60);
text("Fran",10,250);

character = loadImage("quad.jpg");
image(character, 0, 380, 100, 100);

character = loadImage("quad.jpg");
image(character, 249, 60, 100, 100);

character = loadImage("admin.png");
image(character, 250, 60, 100, 100);

textSize(20);
text("Hairloss:",30,300);

textSize(10);
text("Deal 10 damage for each turn this Quadmon has been on the board",40,320);

textSize(20);
text("10",350,300);

textSize(20);
text("principals Rage:",30,350);

textSize(10);
text("Do an addional 50 damage if your opponents Quadmon has the misbehavior effect",30,370);

textSize(20);
text("40",350,350);

textSize(20);
text("250",350,10);

textSize(20);
text("HP:",315,10);
}
