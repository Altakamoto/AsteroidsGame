class Asteroid extends Floater
{
  private double rotSpeed;
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
      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
      myXspeed = (Math.random() * 2 - 1);
      myYspeed = (Math.random() * 2 - 1);
      myPointDirection = 0;
      rotSpeed = (Math.random() * 2 - 1);
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public int getMyCenterX()
  {
    return (int)myCenterX;
  }
  public int getMyCenterY()
  {
    return (int)myCenterY;
  }
    
}
    
