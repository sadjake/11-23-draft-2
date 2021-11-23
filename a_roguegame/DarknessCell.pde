class DarknessCell {
  float opacity;
  float x, y, size;
  float d;

  DarknessCell(float _x, float _y, float s) {
    size = s;
    x = _x;
    y = _y;
    opacity = 0;
  }
  void show() {
    noStroke();
    d = dist(myHero.location.x, myHero.location.y, x, y );
    opacity = map(d, 0, 400, 0, 255);
    fill(BLACK, opacity);
    square(x, y, size);
  }
}
