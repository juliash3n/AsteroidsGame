Spaceship bob = new Spaceship();
Star [] starz = new Star [400];

  
//your variable declarations here
public void setup() 
{
  for(int i = 0; i<starz.length; i++)
  starz[i] = new Star();
  size(300,300);//your code here
}
public void draw() 
{
  background(0);
  for(int i = 0; i<starz.length; i++)
  starz[i].show();
  
  bob.show();
  bob.move();
  //your code here
}

public void keyPressed(){
     if(key == 'w')
       bob.accelerate(0.5);
     if(key == 'a')
       bob.turn(-20);
     if(key == 'd')
       bob.turn(20);
     if(key =='h')
       bob.hyperspace();
}
