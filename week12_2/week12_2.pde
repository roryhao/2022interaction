import processing.net.*;

Client myClient;

void setup(){
  size(200,200);
  myClient = new Client(this,"127.0.0.1",5204);
  background(#FFFFF2);
}
void draw(){  //每秒60次
  while(myClient.available()>0){
    int x = myClient.read();
    int y = myClient.read();
    ellipse(x,y,3,3);
  }
}
