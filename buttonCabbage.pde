public class buttonCabbage{
 int x,y;
  int size;
  public buttonCabbage (int x,int y,int size){
 this.x =x;
 this.y=y;
 this.size = size;
  }
  public void button(){
     fill(0,0,0);
  ellipse(x,y,size,size);
  textSize(22);
  fill(255, 0, 0);
  text("cabbage", 160, 100); 
  }
  
  public boolean isInsideCabbage(int x, int y){
  double distance=Math.sqrt(Math.pow((x-this.x),2) + Math.pow((y-this.y),2));
  if(distance<this.size){
  return true;
  }
  else return false;
  }
   
}
