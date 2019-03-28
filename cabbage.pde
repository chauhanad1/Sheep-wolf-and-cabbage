public class cabbage{
  PImage img;
  int x;
int y;
int dx=2;
int dx2=2;
public cabbage(int x, int y){
this.x =x;
this.y=y;
}

  public void drawCabbage(){
    img=loadImage("cabbage.png");
    image(img,x ,y, img.width/4, img.height/4);
  }
  public void move(int flag){
    
    if ( flag==0){
       if(x<=250){
    dx=0;
    
    }
    this.x=this.x-dx;
   
    }
 }
 
 
 public void mover(int flag){    
     if (flag==1){
        if(this.x>=750){
    dx2=0;
    
    }
    this.x=this.x+dx2;
    
   
    }
  }
}
