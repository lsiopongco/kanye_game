class GameOver {
  //Introduces boolean run.
  boolean run;

  GameOver() {
    run = true;
  } 
  //Creates ender() function for the GameOver class.
  void ender() {
    //Sets run to false to stop game.
    run= false;

    //Sets certain background.
    background(125, 200, 255);
    //If the 'r' key is pressed this will restart the game.
    if (keyPressed && key == 'r') {
      //Assigns values to the following.
      run=true;
      score=0;
      Life=3;
      savedTime=millis();
      K.d=33;
      K.loc.x= 500;
   
      K.loc.y=450;
     //text to center.
    textAlign(CENTER);
    //Sets text size to 50.
    textSize(50);
    //Displays certain text lines.
    text("GAME OVER", 250, 200);
    textSize(20);
    //Displays text line.
    text("'R' TO RESTART", 250, 250);
  }
}
}
