class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int[]{32, -16, -6, -16};
      yCorners = new int[]{0, 16, 0, -16};
      myColor = color(60, 40, 150);
      myCenterX = 400;
      myCenterY = 400;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    public void setXspeed(double x){
      myXspeed = x;
    }
    public void setYspeed(double y){
      myYspeed = y;
    }
    public void setRandomCenter(){
      myCenterX = (int)(Math.random()*800);
      myCenterY = (int)(Math.random()*800);
    }
    public void setRandomDirection(){
      myPointDirection = (int)(Math.random()*360);
    }
    
    public double getCenterX(){
     return myCenterX; 
    }
    public double getCenterY(){
     return myCenterY; 
    }
    public double getXspeed(){
     return myXspeed; 
    }
    public double getYspeed(){
     return myYspeed; 
    }
    public double getPointDirection(){
     return myPointDirection; 
    }
}
