background b = new background();
sheep s = new sheep(900,410);
wolf w= new wolf(830,435);
cabbage c = new cabbage(750,435);
farmer f = new farmer(560,375);
buttonWolf bw= new buttonWolf(650,100,100);
buttonCabbage bc = new buttonCabbage(200,100,100);
buttonSheep bs = new buttonSheep(450,100,100);
buttonBoat bb = new buttonBoat(850,100,100);
int flagw = 2;
int flags=2;
int flagc = 2;
int flagb= 2;
PShape rectangle;

  void setup(){
    background(255,255,255);
     size(1080,720);
    
     
     //c.drawCabbage();
     //f.drawFarmer();
     b.makeBackground();
     //b.drawlandscape();
     //b.drawlandscape2();
   bw.button();
   bs.button();
   bc.button();
  }
  
    void mousePressed(){ //<>//
   if(bw.isInsideWolf(mouseX,mouseY)){
     if(w.x>0 && w.x<340 && f.x!=560){
    flagw =1;
   w.dx=2;
   f.dx=2;
   flags=2;
   flagc=2;
   flagb=2;
     }
     if(w.x<1080 && w.x>740 && f.x !=340){
       flagw=0;
        w.dx2=2;
        f.dx2=2;        
   flags=2;
   flagc=2;
   flagb=2;
     }
     
  }
  if(bs.isInsideSheep(mouseX,mouseY)){
     if(s.x>0 && s.x<340 && f.x!=560){
    flags =1;
    s.dx=2;
    f.dx=2;
    
   flagw=2;
   flagc=2;
   flagb=2;
  
     }
     if(s.x<1080 && s.x>740 && f.x !=340){
       flags=0;
        s.dx2=2; 
        f.dx2=2;
        
   flagw=2;
   flagc=2;
   flagb=2;
        
     }
     
  }
  if(bc.isInsideCabbage(mouseX,mouseY)){
     if(c.x>0 && c.x<340 && f.x!=560){
    flagc =1;
    c.dx=2;
    f.dx=2;
    
   flags=2;
   flagw=2;
   flagb=2;
   
     }
     if(c.x<1080 && c.x>740 && f.x !=340){
       flagc=0;
       c.dx2=2;
       f.dx2=2;
       
   flags=2;
   flagw=2;
   flagb=2;
     
     }
     
  }
  
   if(bb.isInsideBoat(mouseX,mouseY)){
     if(f.x>320 && f.x<540){
    flagb =1;
   f.dx=2;
   
   flags=2;
   flagc=2;
   flagw=2;
   
     }
     if(f.x<740 && f.x>540){
       flagb=0;
        f.dx2=2;

   flags=2;
   flagc=2;
   flagw=2;
     }
     
  }
  }
  
  //void moveallleft(){
  // if( w.x<690 || s.x<690 ||c.x<690){
  //  f.move(flagb); 
  // }
  //}
  
  //void moveboatRW(){
  // if(w.x>320){
  //  f.move(flagb); 
  // }
  //}
  
  void draw(){
     background(255);
     bb.button();
     bs.button();
   bc.button();
    
  bw.button();
    w.drawWolf();
     s.drawSheep();
  f.drawFarmer();
  c.drawCabbage();
     f.move(flagb);
    f.mover(flagb);
      //<>//
    s.move(flags);
    
    if(flags==0 && s.x<620 && s.x>335 ){
      f.move(flags);
    }
    c.move(flagc);
    if(flagc==0 && c.x<700 && c.x>335){
      f.move(flagc);
    }
    w.move(flagw);
    if(flagw==0 && w.x<660 && w.x >335){
      f.move(flagw);
      //print(flagw);
    }
  
  
    w.mover(flagw);
    if(flagw==1 &&w.x>400 && w.x<700 ){
      f.mover(flagw);
    }
  s.mover(flags);
  if(flags==1 && s.x>400 && s.x<700){
      f.mover(flags);
    }
  c.mover(flagc);
  if(flagc==1 &&c.x>400 && c.x<700){
      f.mover(flagc);
    }
  
     //if(w.x<700){
      
     // f.move(flagw);
     //}
     //if(w.x>340 ){
     // f.move(flagw); 
     //}
 
  
  //if(w.x<690){
  //f.move(flag);}

  
  
  

  //f.move();
  
  //f.fposx=f.fposx-1; c.cposx=c.cposx-1;
  if(s.x==900 && w.x==830 && f.x==340){
    rect(0,0,1080,720);
    fill(255,255,255,255);
    textSize(32);
    text("WOLF ATE SHEEP! ",400,300);
    text("GAME OVER!!",470,360);
    fill(0, 102, 153);
  }
   if(s.x==50 && w.x==150 && f.x==560){
    rect(0,0,1080,720);
    fill(255,255,255,255);
    textSize(32);
    text("WOLF ATE SHEEP! ",400,300);
    text("GAME OVER!!",470,360);
    fill(0, 102, 153);
  }
  
  if(s.x==900 && c.x==750 && f.x==340){
    rect(0,0,1080,720);
    fill(255,255,255,255);
    textSize(32);
    text("SHEEP ATE CABBAGE! ",400,300);
    text("GAME OVER!!",470,360);
    fill(0, 102, 153);
  }
   if(s.x==50 && c.x==250 && f.x==560){
    rect(0,0,1080,720);
    fill(255,255,255,255);
    textSize(32);
    text("SHEEP ATE CABBAGE! ",400,300);
    text("GAME OVER!!",470,360);
    fill(0, 102, 153);
  }
  
    if(s.x==50 && c.x==250 && w.x==150&& f.x==340){
    rect(0,0,1080,720);
    fill(255,255,255,255);
    textSize(32);
    text("CONGRATULATIONS! ",400,300);
    text("YOU WON, YAY!!",470,360);
    fill(0, 102, 153);
  }
  
   
  b.makeBackground();
  //b.drawlandscape();
  //b.drawlandscape2();
 
  }
