void setup(){
  size(700,700);
  PFont font = createFont("標楷體",10);
  textFont(font);
}
String [] faces={
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
  "黑桃A","黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K"
};
void draw(){
  background(#FFFFF2);
  for(int i=0;i<52;i++)
  {
    int x=(i%10)*60;  ///除法10餘數,個位數
    int y=int (i/10)*120;  ///十位數
    fill(255);  rect(x,y,60,120);
    fill(0);    text(faces[i],x+25,y+80);
  }
}
