ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
Spaceship alex = new Spaceship();
Star[] bright = new Star[200];
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < bright.length; i++)
  {
    bright[i] = new Star();
  }
  for(int i = 0; i < 5; i++) 
  {
    rocks.add(new Asteroid(i));
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
  for(int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist((float)alex.getX(), (float)alex.getY(), (float)rocks.get(i).getMyCenterX(), (float)rocks.get(i).getMyCenterY());
    if(d < 10)
      rocks.remove(i);
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
  

