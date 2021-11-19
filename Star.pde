class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star()
  {
    myX = (int)(Math.random()*501);
    myY = (int)(Math.random()*501);
    myColor = 255;
  }
  public void show()
  {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 2, 2);
  }
}
