public class farmer{
  
PImage img;
int x;
int y;
int dx=2;
int dx2=2;
public farmer(int x, int y){
this.x =x;
this.y=y;

}


  public void drawFarmer(){
    img=loadImage("boat.png");
    image(img,x,y, img.width*1.5, img.height*1.5);
//        scale(-1,1);//flip on X axis
//image(img,x,y,-img.width/2,img.height/2);

    
  }

  public void move(int flag){
    
    if ( flag==0){
       if( x==340){
    dx=0;
    
    }
    this.x=this.x-dx;
   
    }
 }
 
 
 public void mover(int flag){    
     if (flag==1){
        if(this.x>=560){
    dx2=0;
    
    }
    this.x=this.x+dx2;
    
   
    }
  }
  
}
