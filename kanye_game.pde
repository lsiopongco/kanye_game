int Startscreen=0;
int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
PImage background;
PImage background1; 
int score;
int Life=3; 
boolean run = true; 
boolean restart=true; 
GameOver G;
Winner W;
Kanye K; 

void setup(){
G = new GameOver();
W=new Winner();

  strokeWeight(3);
  textSize(25);
  colorMode(HSB, 360, 100, 100, 200);
  
  K= new Kanye ();
  kanye = loadImage("kanye.jpg");
  background = loadImage("background.jpg");
  size(background.width, background.height);
  
  void draw() {
    background(RGB,40,60,150);
    imageMode(CENTER);
    if (Startscreen<=0) {
    textSize(40);
    text("Kanye West", 250, 100);
    textSize(20);
    text("Press Space to Start!", 250, 200);
    
  }
  //changes value so you can play
  if (keyPressed && key == ' ')
  {
    Startscreen ++;
  }
if(Startscreen>0){
  if(run){
    background(background);
    K.display();
    K.move();
  }
  if (mousePressed && K.loc.x+d > mouseX && K.loc.x-d < mouseX
  && K.loc.y+d > mouseY && K.loc.y-d < mouseY){
    score++;
    d++;
  }
  fill(0);
    //scoreboard
    text(score, 50, 50);
    text("Score",25,25);
    text(Life, width-50, 50);
   text("Life",width-65,25);  
}
if(Life==0){
  G.ender();
}
if(score==5){
 W.win();
}
}

  
    
