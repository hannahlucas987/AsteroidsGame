Spaceship apollo = new Spaceship();
Star[] nightSky = new Star[100];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();

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
  for(int i = 0; i<asteroids.size(); i++){
    asteroids.get(i).move();
    asteroids.get(i).show();
    float d = dist((float)apollo.getCenterX(), (float)apollo.getCenterY(), (float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY());
    if(d<30){
      asteroids.remove(i);
    }
  }
  for(int f = 0; f<shots.size(); f++){
    shots.get(f).move();
    shots.get(f).show();
  }
  for(int i = 0; i<asteroids.size(); i++){
    for(int j = 0; j<shots.size(); j++){
      float e = dist((float)shots.get(j).getCenterX(), (float)shots.get(j).getCenterY(), (float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY());
      if(e<10){
        asteroids.remove(i);
        shots.remove(j);
        break;
      }
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
  else if(key == 'd'){
    apollo.turn(10);
  }
  else if(key == 'w'){
    apollo.accelerate(1);
  }
  else if(key == 's'){
    apollo.accelerate(-1);
  }
  else if(key == ' '){
    shots.add(new Bullet(apollo));
  }
}
