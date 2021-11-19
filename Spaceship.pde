class Spaceship extends Floater  
{
  public Spaceship() {
    corners = 12;
    xCorners = new int[]{-5, -3, 2, 7, 12, 7, 2, -3, -5, -3, -5, -3};   
    yCorners = new int[]{8, 8, 2, 2, 0, -2, -2, -8, -8, -2, 0, 2};
    /* smaller spaceship: 
    -3, -2, 2, 5, 8, 5, 2, -2, -3, -2, -3, -2
    6, 6, 1, 1, 0, -1, -1, -6, -6, -1, 0, 1 
    */
    myColor = 255;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*460)+20;
    myCenterY = (int)(Math.random()*460)+20;
    myPointDirection = (int)(Math.random()*361);
  }
}
