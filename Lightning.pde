int flash = 0;

void setup() {
  size(500, 500);
  background(20, 20, 50);
  strokeWeight(3);
}

void draw() {
  noStroke();
  fill(20, 20, 50, 40);
  rect(0, 0, width, height);
  if (flash > 0) {
    fill(255, 255, 255, flash);
    rect(0, 0, width, height);
    flash -= 15;  
  }
  noStroke();
  fill(200, 200, 200);
  ellipse(500, 30, 200, 200);
  ellipse(300, 40, 100, 100);
  ellipse(250, 20, 150, 150);
  ellipse(200, -10, 100, 100);
  ellipse(350, 20, 200, 200);
  ellipse(-20, 0, 200, 200);
  ellipse(120, 60, 150, 150);
}

void mousePressed() {
  drawLightning(mouseX, mouseY);
  if (Math.random() < 0.2) {
    flash = 200; 
  }
  noStroke();
  fill(200, 200, 200);
  ellipse(500, 30, 200, 200);
  ellipse(300, 40, 100, 100);
  ellipse(250, 20, 150, 150);
  ellipse(200, -10, 100, 100);
  ellipse(350, 20, 200, 200);
  ellipse(-20, 0, 200, 200);
  ellipse(120, 60, 150, 150);
}

void drawLightning(int targetX, int targetY) {
  int x1 =targetX;
  int y1= 0;
  while (y1<targetY){
    int x2 = (int)lerp(x1, targetX, 0.7) + (int)(Math.random()*40)-20;
    int y2 = y1 + (int)(Math.random()*20)+10;
    strokeWeight(6);
    stroke(120, 180, 255, 80);
    line(x1, y1, x2, y2);
    strokeWeight(3);
    stroke(255, 255, 255);
    line(x1, y1, x2, y2);
    x1=x2;
    y1= y2;
  }
  while (y1<height){
    int x2=x1+(int)(Math.random()*40)-20;
    int y2=y1+(int)(Math.random()*20)+10;
    strokeWeight(6);
    stroke(120, 180, 255, 80);
    line(x1, y1, x2, y2);
    strokeWeight(3);
    stroke(255, 255, 255);
    line(x1, y1, x2, y2);
    x1 = x2;
    y1 = y2;
  }
}
