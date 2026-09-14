int startX = width/2;
int startY = 0;
int endX = startX;
int endY = startY;
void setup(){
  size(300,300);
  strokeWeight(1);
  background(0);
}
void draw(){
  drawLightning();
}
void drawLightning(){
  stroke((int)(Math.random()*251+5),(int)(Math.random()*235+21),(int)(Math.random()*223+33));
  while (endY>height){
    endY = startY+(int)(Math.random()*10);
    endX = startX+(int)(Math.random()*19-9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed(){
  startX = width/2;
  startY = 0;
  endX = startX;
  endY = startY;
}
