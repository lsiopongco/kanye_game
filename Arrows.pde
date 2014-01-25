class Arrows{
  PVector loc, vel,acc;
  PImage image;
  int arrow;
  int d; 
  int y;
  int x;
  
  Arrows(){
    d=50;
    y=49;
    x=0;
    arrow = int(random(1,5));
    
    vel = new PVector(0, 5);
    acc = new PVector (0, x);
    loc = new PVector (425,y);
    
    if (arrow ==1){
      image = loadImage ("left arrow.png");
      
    }
    if (arrow == 2) {
      image = loadImage ("down arrow.png");
      
    }
    if (arrow == 3) {
      image = loadImage("Up arrow.png");
      
    }
    if (arrow == 4) {
      image = loadImage ("Right arrow.png");
      
    }
  }
  
  void display () {
    image(image,loc.x, loc.y, d,y);
    image(image,loc.x+50, loc.y, d,y);
    image(image,loc.x+100, loc.y, d,y);
    image(image,loc.x+150, loc.y, d,y);
    
  }
  void move(){
    vel.add(acc);
    loc.add(vel); 
    
  }
  void remove (){
    loc.y = 2*height;
    vel.set(0,0);
  }
}
      
