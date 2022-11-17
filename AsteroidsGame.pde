Spaceship apollo = new Spaceship();
Star[] nightSky = new Star[100];

public void setup() {
  size(800, 800);
  for(int i = 0; i<nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() {
  background(0);
  for(int i = 0; i<nightSky.length; i++){
    nightSky[i].show();
  }
  apollo.show();
  apollo.move();
}
public void keyPressed() {
  if(key == 'h'){ //hyperspace
    apollo.setXspeed(0);
    apollo.setYspeed(0);
    apollo.setRandomCenter();
    apollo.setRandomDirection();
  }
  if(key == 'a'){
    apollo.turn(-10);
  }
  if(key == 'd'){
    apollo.turn(10);
  }
  if(key == 'w'){
    apollo.accelerate(1);
  }
  if(key == 's'){
    apollo.accelerate(-1);
  }
}
