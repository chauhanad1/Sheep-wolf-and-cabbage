public class sheep{
  PImage img;
  int x;
  int dx1=2;
  int dx2 = 2;
int y;
int dx=2;
public sheep(int x, int y){
this.x =x;
this.y=y;
}
public void drawSheep(){
img=loadImage("sheep4.png");
image(img,x , y, img.width, img.height);

}

 public void move(int flag){
    
    if ( flag==0){
       if(x<=50){
    dx=0;
    
    }
    this.x=this.x-dx;
   
    }
 }
 
 
 public void mover(int flag){    
     if (flag==1){
       if(this.x>=900){
    dx2=0;
    
    }
    this.x=this.x+dx2;
    
    
    }
  }
}
