//your variable declarations here
public Star[] stars;
public Spaceship ship;
public void setup() 
{
  size(500, 500);
  stars = new Star[200];
  for (int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
  ship = new Spaceship();
}
public void draw() 
{
  background(0);
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].show();
  }
  ship.show();
  ship.move();
}
public void keyPressed()
{
  if (key == 'w' || key == 'W')
  {
    ship.accelerate(0.4);
  }
  if (key == 'a' || key == 'W')
  {
    ship.turn(-10);
  }
  if (key == 'd' || key == 'D')
  {
    ship.turn(10);
  }
  if (key == 'q' || key == 'Q')
  {
    ship.hyperspace();
  }
}
