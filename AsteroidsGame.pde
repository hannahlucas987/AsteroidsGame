Spaceship apollo = new Spaceship();
Star[] nightSky = new Star[100];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Asteroid bob = new Asteroid();
int n = 100; //number of asteroids

public void setup() {
  size(800, 800);
  for(int i = 0; i<nightSky.length; i++){
    nightSky[i] = new Star();
  }
  
  for(int i = 0; i<100; i++){
    asteroids.add(new Asteroid());
  }
}
public void draw() {
  background(0);
  for(int i = 0; i<nightSky.length; i++){
    nightSky[i].show();
  }
  apollo.show();
  apollo.move();
  
  for(int i = 0; i<n; i++){
    asteroids.get(i).move();
    asteroids.get(i).show();
    float d = dist((float)apollo.getCenterX(), (float)apollo.getCenterY(), (float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY());
    if(d<30){
      asteroids.remove(i);
      n--;
    }
  }
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
