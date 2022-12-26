PImage img1,img2,img3,img4,imgShape;
int [] maskArray;
int [] maskArray2;
int [] maskArray3;
int [] maskArray4;
void setup(){
  size(500,500);
 img1=loadImage("2.jpg");
 img2=loadImage("2.jpg");
 img3=loadImage("2.jpg");
 img4=loadImage("2.jpg");
 imgShape = loadImage("pic.png");
 //print(imgShape.width,imgShape.height);
 maskArray = new int[300*300];
 maskArray2= new int[300*300];
 maskArray3= new int[300*300];
 maskArray4= new int[300*300];
 imgShape.loadPixels();
 for(int i=0;i<300*300;i++){
   if(imgShape.pixels[i]==color(255,0,0)){    ///模板顏色
     maskArray[i]=255;
   }else maskArray[i]=128;    //使背景變透明
   
   if(imgShape.pixels[i]==color(0,255,0)){    ///模板顏色
     maskArray2[i]=255;
   }else maskArray2[i]=0;
   
   if(imgShape.pixels[i]==color(0,0,255)){    ///模板顏色
     maskArray3[i]=255;
   }else maskArray3[i]=0;
   
   if(imgShape.pixels[i]==color(255,255,0)){    ///模板顏色
      maskArray4[i]=255;
   }else maskArray4[i]=0;
 }
 img1.mask(maskArray);
 img2.mask(maskArray2);
 img3.mask(maskArray3);
 img4.mask(maskArray4);
}
void draw(){
  background(#FFFFF2);
  image(img1,0,0);
  image(img2,0,0);
  image(img3,0,0);
  image(img4,0,0);
  //image(imgShape,0,0);
}
