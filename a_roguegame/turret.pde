class BulletTurret extends GameObject{
  int timer;
  

  //constructor(s)
  BulletTurret() {
    timer = 25;
    location = new PVector(location.x, location.y);
    velocity = new PVector(10,10);
    velocity.setMag(10);
    size = 10;
    //UFOBullet = true;
  }
  
      
  BulletTurret(float locx, float locy, float velx, float vely) {
      timer = 60;
      HEALTHPOINTS = 1;
      location = new PVector(locx, locy);
      velocity = new PVector(velx, vely);
      velocity.setMag(7);
      size = 10;
      //UFOBullet = true;
  }

  void show() {
      stroke(0);
      fill(0);
      ellipse(location.x, location.y, size, size);
  }

  void act() {
    location.add(velocity);
    timer--;
    if (timer == 0) {
      HEALTHPOINTS = 0;
    }
  }
 
}
