class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
      corners = 10;
      xCorners = new int[]{-10,16,-10,-6,-8,-6,-13,-6,-8,-6};
      yCorners = new int[]{-11,0,11,7,6,4,0,-4,-6,-7};
      myColor = 100;
      myCenterX = myCenterY = 150;
      myXspeed = myYspeed = 0;
      myPointDirection = 5;
    }
    
    public void hyperspace() {
      myXspeed = myYspeed = 0;
      myCenterX = (int)(Math.random()*300);
      myCenterY = (int)(Math.random()*300);
      myPointDirection = (int)(Math.random()*360);
    }
}
