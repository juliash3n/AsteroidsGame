class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*300);
    myY = (int)(Math.random()*300);
  }//your code here
  
  public void show(){
    fill(256);
    ellipse(myX, myY, 0.5, 0.5); 
  }
}
