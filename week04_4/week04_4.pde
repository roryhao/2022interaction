void setup(){
  size(500,500);
}
float x=250,y=250;  ///變數(位置)
float vx=3.0 , vy=-3.5;
float boardX,boardY=470,boardW=100,boardH=20;
void draw(){
  boardX=mouseX-boardW/2;
  background(#000000);  ///背景，去除殘影
  rect(boardX,boardY,boardW,boardH,20);  ///控制的板子
  ellipse(x,y,15,15);  ///橢圓
  x=x+vx;
  y=y+vy;
  if(x>500) vx = -vx;
  if(y<0) vy = -vy;
  if(x<0) vx = -vx;
  if( (y>boardY && y<boardY+boardH) &&
    (x>boardX && x<boardX+boardW) ){
    vy=-vy;
    vx += (mouseX-pmouseX)/2;  ///mouse的移動速度
   }
   if(mousePressed && mouseButton==LEFT)boardW *= 1.01;
   if(mousePressed && mouseButton==RIGHT)boardW *= 0.99;
}
