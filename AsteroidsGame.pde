Spaceship alex = new Spaceship();
Star[] bright = new Star[200];
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < bright.length; i++)
  {
    bright[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  alex.show();
  alex.move();
  for(int i = 0; i < bright.length; i++)
  {
    bright[i].show();
  }
}
public void keyPressed()
{
  if(key == 'a')
    alex.turn(-5);
  else if(key == 'd')
    alex.turn(5);
  else if(key == 'w') //pushes ship with rockets in direction it is pointing
    alex.accelerate(0.3);
  else if(key == 'h')
    alex.hyperspace();
}

