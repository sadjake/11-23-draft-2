class Weapon {
  int shotTimer;
  int threshold;
  int bulletSpeed;
  Weapon() {
    shotTimer = 0;
    threshold = 30;
    bulletSpeed = 5;
  }
  Weapon(int t, int s) {
    shotTimer = 0;
    threshold = t;
    bulletSpeed = s;
  }
  void update() {
    shotTimer++;
  }

  void shoot() {
    if (shotTimer >= threshold) {
      PVector aimVector = new PVector(mouseX-myHero.location.x, mouseY-myHero.location.y);
      aimVector.setMag(bulletSpeed);
      myObjects.add(new Bullet(aimVector, DARKBLUE, 10, 10));
      shotTimer = 0;
    }
  }
}
