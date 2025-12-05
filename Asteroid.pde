class Asteroid extends Floater{
  private double rotSpeed; 
  public Asteroid(){
    rotSpeed = (double)(Math.random()*10-5);
    corners = 6;
    xCorners = new int[] {-11,7,13,6,-11,-5};
    yCorners = new int[] {-8,-8,0,10,8,0};
    myXspeed = (int)(Math.random()*5-3);
    myYspeed = (int)(Math.random()*5-3);
    myColor = 100;
    myCenterX = (int)(Math.random()*300);
    myCenterY= (int)(Math.random()*300);
  }
  
  public float getX (){
    return (float)myCenterX;
  }
  
  public float getY (){
    return (float)myCenterY;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
    }
}//end of Asteroid class

