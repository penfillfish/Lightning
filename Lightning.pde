void setup(){
  size(800,800);
  strokeWeight(1);
}
void draw(){
  background(0);
  drawLightning(width/2,0);
  noLoop();
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
    //line(startX,startY,endX,endY);
    endY = startY+(int)(Math.random()*10);
    endX = startX+(int)(Math.random()*40-20);
    line(startX,startY,endX,endY);
    if (Math.random()<0.1){
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
  redraw();
}
