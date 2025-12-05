class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspd();
    myYspeed = theShip.getYspd();
    myPointDirection = theShip.getDirection();
    accelerate(6.0);
  }
  public void show(){
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 7, 7);
    if((myCenterX > 308)||(myCenterY>308))
    myXspeed = myYspeed = 0;
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
  }
  
  public float getX(){
    return (float)myCenterX;
  }
  public float getY(){
    return (float)myCenterY;
   }

} //end of bullet class

