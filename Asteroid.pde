class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = (int)(Math.random()*5)+5;
    corners = 7;
    xCorners = new int[]{2, 5, 5, 2, -2, -5, -5};
    yCorners = new int[]{5, 2, -2, -5, -5, -2, 2};
    myColor = color(110, 110, 110);
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myXspeed = (int)(Math.random()*9)-4;
    while(myXspeed == 0){
      myXspeed++;
    }
    myYspeed = (int)(Math.random()*9)-4;
    while(myYspeed == 0){
      myYspeed++;
    }
    myPointDirection = 0;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getCenterX(){
   return myCenterX; 
  }
  public double getCenterY(){
   return myCenterY; 
  }
}
