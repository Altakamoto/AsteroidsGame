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
    /*float d = dist((int)alex.getX(), (int)alex.getY(), (int)rocks.get(i).getMyCenterX(), (intt)rocks.get(i).getMyCenterY());
    if(d < 15)
      rocks.remove(i);*/
  }
    
}
public void keyPressed()
{
  if(key == 'a')
    alex.turn(-5);
  else if(key == 'd')
    alex.turn(5);
  else if(key == 'w') 
    alex.accelerate(0.3);
  else if(key == 'h')
    alex.hyperspace();
}
