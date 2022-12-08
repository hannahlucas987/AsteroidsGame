class Bullet extends Floater{
  public Bullet(Spaceship apollo){
    myCenterX = apollo.getCenterX();
    myCenterY = apollo.getCenterY();
    myXspeed = apollo.getXspeed();
    myYspeed = apollo.getYspeed();
    myPointDirection = apollo.getPointDirection();
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    accelerate(6);
  }
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 4, 4);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public double getCenterX(){
    return myCenterX; 
    }
  public double getCenterY(){
    return myCenterY; 
  }
}
