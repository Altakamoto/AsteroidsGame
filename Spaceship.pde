class Spaceship extends Floater  
{   
    public Spaceship()//constructor
    {
      corners = 3;   
      xCorners = new int[corners];   
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myColor = color(255, 255, 255);   
      myCenterX = myCenterY = 250;    
      myXspeed = myYspeed = 0;  
      myPointDirection = (int)(Math.random() * 360);    
    }
    public void show ()  //Draws the floater at the current position  
    {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    if(keyPressed == true) {
      if(key == 'w') {
        line(-8, -8, -15, -8);
        line(-8, 8, -15, 8); 
      }
    }
      
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
    }
    public void hyperspace()
    {
      myPointDirection = (int)(Math.random() * 360);
      myCenterX = (int)(Math.random() * 360);
      myCenterY = (int)(Math.random() * 360);
      myXspeed = 0;
      myYspeed = 0;
    }
}
