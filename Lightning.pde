float branchPercent = 0.02;
void setup(){
  size(800,800);
  strokeWeight(1);
}
void draw(){
  frameRate(30);
  background(0);
  drawLightning(mouseX,0);
  delay(1);
  if (branchPercent>0.02){
    branchPercent *= 0.8;
  }
}
void drawLightning(int startX,int startY){
  int endX = startX;
  int endY = startY;
  stroke(
  (int)(Math.random()*201+55),
  (int)(Math.random()*201+55),
  (int)(Math.random()*201+55)
  );
  while (endY<height){
    endY = startY+(int)(Math.random()*10);
    endX = startX+(int)(Math.random()*20-10);
    line(startX,startY,endX,endY);
    if (Math.random()<branchPercent){
      branch(startX,startY);
    }
    startX = endX;
    startY = endY;
  }
}
void branch(int startX, int startY){
  int branchX = startX;//+(int)(Math.random()*101-50);
  int branchY = startY+(int)(Math.random()*121+60);
  drawLightning(branchX,branchY);
}
void mousePressed(){
  branchPercent = 0.1;
  redraw();
}
