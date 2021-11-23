class Enemy extends GameObject {

  Enemy () {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    HEALTHPOINTS = 100;
    size = 50;
    rx = 1;
    ry = 1;
  }
  
    Enemy (int x, int y) {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    HEALTHPOINTS = 100;
    size = 50;
    rx = x;
    ry = y;
  }

  Enemy(int _HEALTHPOINTS, int s, int x, int y) {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    HEALTHPOINTS = _HEALTHPOINTS;
    size = s;
    rx = x;
    ry = y;
  }

  void show () {
    //if (rx == myHero.rx && ry == myHero.ry) {
    stroke (BLACK);
    strokeWeight(2);
    fill(RED);
    circle(location.x, location.y, size);
    fill(BLACK);
    textSize(20);
    text(HEALTHPOINTS, location.x, location.y);
    //}
  }

  void act () {
    super.act(); 

    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Bullet) {
        float d = dist(obj.location.x, obj.location.y, location.x, location.y);
        if (d <= size/2 + obj.size/2) {
          HEALTHPOINTS = HEALTHPOINTS - int(obj.velocity.mag());
          obj.HEALTHPOINTS = 0;
        }
      }
      i++;
    }
  }
}
