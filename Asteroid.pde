class Asteroid extends Floater
{
  protected double rotSpeed;
  public Asteroid(int number)
  {
      corners = 6;   
      xCorners = new int[corners];   
      yCorners = new int[corners];
      xCorners[0] = (int)(Math.random()*-7 - 8);
      yCorners[0] = (int)(Math.random()*-7 - 5);
      xCorners[1] = (int)(Math.random()*7 + 4);
      yCorners[1] = (int)(Math.random()*-7 - 5);
      xCorners[2] = (int)(Math.random()*7  + 10);
      yCorners[2] = (int)(Math.random()*3);
      xCorners[3] = (int)(Math.random()*7 + 3);
      yCorners[3] = (int)(Math.random()*7 + 7);
      xCorners[4] = (int)(Math.random()*-7 - 8);
      yCorners[4] = (int)(Math.random()*7 + 5);
      xCorners[5] = (int)(Math.random()*-7 - 2);
      yCorners[5] = (int)(Math.random()*3);
      myColor= color(255, 255, 255);
      myCenterX = (Math.random()*500);
      myCenterY = (Math.random()*500);
      myXspeed = (Math.random() * 2 - 1);
      myYspeed = (Math.random() * 2 - 1);
      myPointDirection = (int)(Math.random() * 360);
      rotSpeed = (Math.random() * 6 - 3);
  }
  void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public double getMyCenterX()
  {
    return myCenterX;
  }
  public double getMyCenterY()
  {
    return myCenterY;
  }
    
}
      
      
