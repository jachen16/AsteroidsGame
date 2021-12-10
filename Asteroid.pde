class Asteroid extends Floater  
{
  private double rotSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-10, 0, 10, 10, 0, -10};   
    yCorners = new int[]{5, 15, 10, -10, -15, -5};
    myColor = 100;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    rotSpeed = Math.random()*5;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
    myCenterX = myCenterX + 1;
    myCenterY = myCenterY + 1;
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
}
