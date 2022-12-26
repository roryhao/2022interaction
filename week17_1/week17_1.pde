PImage img1,img2,imgShape;
int [] maskArray;
int [] maskArray2;
void setup(){
  size(500,500);
 img1=loadImage("2.jpg");
 img2=loadImage("2.jpg");
 imgShape = loadImage("pic.png");
 //print(imgShape.width,imgShape.height);
 maskArray = new int[300*300];
 maskArray2= new int[300*300];
 imgShape.loadPixels();
 for(int i=0;i<300*300;i++){
   if(imgShape.pixels[i]==color(255,0,0)){    ///模板顏色
     maskArray[i]=255;
   }else maskArray[i]=128;  ///決定圖片的透明度
   
   if(imgShape.pixels[i]==color(0,255,0)){    ///模板顏色
     maskArray2[i]=255;
   }else maskArray2[i]=0;
 }
 img1.mask(maskArray);
 img2.mask(maskArray2);
}
void draw(){
  background(#FFFFF2);
  image(img1,0,0);
  image(img2,mouseX,mouseY);
  //image(imgShape,0,0);
}
