void setup(){
  size(500,500);
}
int W=20;
void draw()
{
  drawCard(100,100,"S4");
  drawCard(130,150,"H3");
  drawCard(160,200,"D5");
  drawCard(190,250,"CJ");
}///牌面:黑桃 Spade、紅心 Heart、方塊 Dimond、梅花 Club
void drawCard(int x,int y,String face)
{
  fill(255);
  rect(x-W/2,y-W/2,150+W,250+W,20);
  fill(#39EA13);
  rect(x,y,150,250,20);
  fill(0);
  textSize(40);
  text(face,x,y+40);
}
