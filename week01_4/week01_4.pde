void setup(){
  size(500,500);
  background(#CAD677);
  stroke(255,0,0);  
}
void draw(){
  if(mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}
void keyPressed(){
  if(key== '1')  stroke(#484B38);
  if(key== '2')  stroke(#471A6C);
  if(key== '3')  stroke(#129FE3);
}
