void setup(){
  size(400,300);
}
float fruitX=200,fruitY=150;//水果的位置 X Y有小數點，精確
float fruitVX=1,fruitVY=-1;//水果的速度 VX VY
boolean flying=true;
void draw(){
  background(255,255,0);
  
  ellipse(fruitX,fruitY,50,50);
  if(flying){//如果在飛，水果位置會改變
    fruitX+=fruitVX;
    fruitY+=fruitVY;
  }
}
void keyPressed(){
  flying=false;
}
