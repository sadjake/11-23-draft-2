class ShotGun extends Weapon {

  ShotGun() {
    super(100, 5);
  }

  void shoot() {
    if (shotTimer >= threshold) {
      for (int i = 0; i < 30; i++) {
        PVector aimVector = new PVector(mouseX-myHero.location.x, mouseY-myHero.location.y);
        aimVector.rotate(random(-PI, PI));
        aimVector.setMag(bulletSpeed);
        myObjects.add(new Bullet(aimVector, DARKBLUE, 10, 10));
      }
      shotTimer = 0;
    }
  }
}
