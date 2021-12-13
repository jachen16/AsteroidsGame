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
int minute = 0;
int second = 0;
int millisecond = 0;
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
  textSize(15);
  fill(255);
  textAlign(LEFT);
  text("Asteroids left: " + rocks.size(), 15, 30);
  if (rocks.size() > 0)
  {
    textSize(15);
    fill(255);
    if (second < 10 && millisecond < 10)
    {
      text("Time: " + minute + ":0" + second + ".0" + millisecond, 400, 30);
    } else if (second < 10)
    {
      text("Time: " + minute + ":0" + second + "." + millisecond, 400, 30);
    } else if (millisecond < 10)
    {
      text("Time: " + minute + ":" + second + ".0" + millisecond, 400, 30);
    } else
    {
      text("Time: " + minute + ":" + second + "." + millisecond, 400, 30);
    }
    millisecond += 1;
    if (millisecond >= 60)
    {
      second += 1;
      millisecond = 0;
    }
    if (second >= 60)
    {
      minute += 1;
      second = 0;
    }
  }
  if (rocks.size() == 0)
  {
    noStroke();
    fill(80);
    rect (125, 200, 250, 100);
    textSize(35);
    fill((int)(Math.random()*256), 0, 0);
    textAlign(CENTER);
    text("YOU WIN!", 250, 235); 
    textSize(20);
    fill(255, 0, 0);
    if (second < 10 && millisecond < 10)
    {
      text("Your time: " + minute + ":0" + second + ".0" + millisecond, 250, 262);
    } else if (second < 10)
    {
      text("Your time: " + minute + ":0" + second + "." + millisecond, 250, 262);
    } else if (millisecond < 10)
    {
      text("Your time: " + minute + ":" + second + ".0" + millisecond, 250, 262);
    }else
    {
      text("Your time: " + minute + ":" + second + "." + millisecond, 250, 262);
    }
    textSize(15);
    fill(255, 0, 0);
    text("Reload page to try again!", 250, 285);
  }
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
