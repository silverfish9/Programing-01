String scene = "start";   

void setup() {
  size(600, 400);
  textAlign(CENTER, CENTER);
  textSize(20);
}

void draw() {
  background(240);

  if (scene.equals("start")) {
    drawScene("choice","elevotor","stairs");
  }
else if (scene.equals("elevator")) {
    drawEnd("fran");
  }
  
  else if (scene.equals("stairs")) {
    drawScene("which","left","right");
  
  }

  else if (scene.equals("right")) {
    drawEnd("crack");
  }

  else if (scene.equals("left")) {
    drawEnd("free");
  }

}

// Draws story scene with two buttons
void drawScene(String story, String option1, String option2) {
  fill(0);
  text(story, width/2, 120);

  // Button 1
  fill(200);
  rect(150, 250, 150, 60, 10);
  fill(0);
  text(option1, 225, 280);

  // Button 2
  fill(200);
  rect(300, 250, 150, 60, 10);
  fill(0);
  text(option2, 375, 280);
}

// Draws end screen
void drawEnd(String story) {
  fill(0);
  text(story, width/2, height/2);
  text("\n(click to restart)", width/2, height/2 + 80);
}

void mousePressed() {

  // Restart on any click if at an end
  if (scene.equals("left") || scene.equals("right") ||
      scene.equals("elevator")){
    scene = "start";
    return;
  }

  boolean clickedLeft = mouseX > 150 && mouseX < 300 &&
                        mouseY > 250 && mouseY < 310;

  boolean clickedRight = mouseX > 300 && mouseX < 450 &&
                         mouseY > 250 && mouseY < 310;

  if (scene.equals("start")) {
    if (clickedLeft)  scene = "elevator";
    if (clickedRight) scene = "stairs";
  }

  else if (scene.equals("stairs")) {
    if (clickedLeft)  scene = "left";
    if (clickedRight) scene = "right";
  }
}
