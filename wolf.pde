public class wolf{
PImage img;
int x;
int y;
int dx = 2;
int dx2 =2;
public wolf(int x, int y){
this.x =x;
this.y=y;
}
public void drawWolf(){
img=loadImage("185653.png");
image(img,x , y, img.width/2, img.height/2);
}
 public void move(int flag){
    
    if ( flag==0){
      if(x<=150){
    dx=0;
    
    }
    this.x=this.x-dx;
    
    
    }
 }
 
 
 public void mover(int flag){    
     if (flag==1){
       if(this.x>=830){
    dx2=0;
    
    }
    this.x=this.x+dx2;
    
    
    }
  }

}
