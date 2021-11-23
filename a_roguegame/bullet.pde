class Bullet extends GameObject {
  float speed;
  int size;
  color colour;
  int damage;
  
  Bullet() {
    location = new PVector(myHero.location.x, myHero.location.y);
    velocity = new PVector(0, 0);
    speed = 10;
    velocity.setMag(speed);
    HEALTHPOINTS = 1;
    size = 10;
    colour = WHITE;
  }

  Bullet(PVector mouseaim, color newcolor, int newsize, float newspeed) {
    location = new PVector(myHero.location.x, myHero.location.y);
    velocity = mouseaim;
    speed = newspeed;
    velocity.setMag(speed);
    HEALTHPOINTS = 1;
    size = newsize;
    colour = newcolor;
    rx = myHero.rx;
    ry = myHero.ry;
  }

  void show() {
    stroke(colour);
    fill(colour);
    ellipse(location.x, location.y, size, size);
  }
  void act() { 
    location.add(velocity);
    if (location.x < width*0.1 || location.x > width*0.9 || location.y < height*0.1 || location.y > height*0.9) {
      HEALTHPOINTS = 0;
      int num = 50;
      int n = 0;
      while (n < num) {
        myObjects.add(new Particles(int(random(0, 10)), location.x, location.y, colour));
        n++;
      }
    }
  }
}
