class Follower extends Enemy {

  Follower (int x, int y) {
    super(100, 50, x, y);
  }

  void show () {
    //if (rx == myHero.rx && ry == myHero.ry) {
    stroke (BLACK);
    strokeWeight(2);
    fill(LIGHTRED);
    circle(location.x, location.y, size);
    fill(BLACK);
    textSize(20);
    text(HEALTHPOINTS, location.x, location.y);
    //}
  }

  void act () {
    super.act(); 
  //if (myHero.location.x - (location.x + 5), myHero.location.y - (location.y + 5);
    velocity = new PVector(myHero.location.x - location.x, myHero.location.y - location.y);
    velocity.setMag(1);
  }
}
