class Bullet extends Floater
{
  public Bullet (Spaceship theShip)
  {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    accelerate(6);
  }
  public void show()
  {
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public int getMyCenterX () {return (int)myCenterX;}
  public int getMyCenterY () {return (int)myCenterY;}
}
