//your variable declarations here
public Star[] stars;
public Spaceship ship;
public Asteroid rock;
ArrayList <Asteroid> rocks;
public void setup() 
{
  size(500, 500);
  stars = new Star[200];
  for (int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
  ship = new Spaceship();
  rock = new Asteroid();
  rocks = new ArrayList <Asteroid>();
  for (int i = 0; i < 20; i++)
  {
    rocks.add(new Asteroid());
  }
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
  for (int i = 0; i < rocks.size(); i++) {

    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist((float)ship.getX(), (float)ship.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d < 20)
    {
      rocks.remove(i);
    }
  }
  if (rocks.size() == 0)
  {
    noStroke();
    fill(80);
    rect (125, 200, 250, 100);
    textSize(40);
    fill((int)(Math.random()*256), 0, 0);
    text("YOU WIN!", 158, 245); 
    textSize(20);
    fill(255, 0, 0);
    text("Reload page to reset!", 147, 280);
  }
  textSize(20);
  fill(255);
  text("Asteroids left: " + rocks.size(), 20, 30);
  if (keyPressed)
  {
    if (key == 'w' || key == 'W')
    {
      ship.accelerate(0.1);
    }
    if (key == 'a' || key == 'W')
    {
      ship.turn(-5);
    }
    if (key == 'd' || key == 'D')
    {
      ship.turn(5);
    }
  }
}
public void keyPressed()
{
  /*if (key == 'w' || key == 'W')
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
   }*/
  if (key == 'q' || key == 'Q')
  {
    ship.hyperspace();
  }
}
