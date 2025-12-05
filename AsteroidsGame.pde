Spaceship bob = new Spaceship();
Star [] starz = new Star [400];
ArrayList <Bullet> pewpew = new ArrayList <Bullet>();
ArrayList <Asteroid> roids = new ArrayList <Asteroid>();
  
//your variable declarations here
public void setup() 
{
  for(int i = 0; i<starz.length; i++)
  starz[i] = new Star();
  size(300,300);//your code here
  
  for(int i = 0; i<11; i++){
  roids.add(i, new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<starz.length; i++)
  starz[i].show();
  
  bob.show();
  bob.move();
  
  for(int i = 0; i<pewpew.size(); i++){
    pewpew.get(i).move();
    pewpew.get(i).show();
    for(int j = 0; j<roids.size(); j++){
    if(pewpew.size()>0){
      float d = dist(pewpew.get(i).getX(), pewpew.get(i).getY(), roids.get(j).getX(), roids.get(j).getY());
        if(d<15){
        roids.remove(j);
        j--;
        pewpew.remove(i);
        if(i>0)
        i--;
        }
      }
    }
    
  }
  
  for(int i = 0; i<roids.size(); i++){
     roids.get(i).move();
     roids.get(i).show();
     float d = dist(bob.getX(), bob.getY(), roids.get(i).getX(), roids.get(i).getY());
     if(d<15)
     roids.remove(i);
    }
  

  //your code here
}//END OF DRAW

public void keyPressed(){
     if(key == 'w')
       bob.accelerate(0.5);
     if(key == 'a')
       bob.turn(-15);
     if(key == 'd')
       bob.turn(15);
     if(key =='h')
       bob.hyperspace();
     if(key ==' ')
       pewpew.add(new Bullet(bob));
     
}
