class Lurker extends Enemy {
  Lurker(int x, int y) {
    super(300, 25, x, y);
  }
  
  void show() {
    fill(100);
    ellipse(location.x, location.y, 25, 25);
    fill(0);
    textSize(15);
    text(HEALTHPOINTS, location.x, location.y);
  }
  void act() {
    super.act();

    if ((dist(myHero.location.x, myHero.location.y, location.x, location.y) <= 200)) {
      velocity = new PVector(myHero.location.x - location.x, myHero.location.y - location.y);
    } else {
      velocity = new PVector(0,0);
    }
    velocity.setMag(2.25);
  }
}
