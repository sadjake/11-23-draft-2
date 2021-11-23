class Particles extends GameObject {
  int transparency; 
  color colour;
  int size;
  
  Particles(int s, float x, float y, color c) {
    HEALTHPOINTS = 1;
    size = s;
    colour = c;
    transparency = int(random(255));
    location = new PVector (x, y);
    velocity = new PVector (0,2);
    velocity.rotate(random(-PI, PI));
    velocity.setMag(random(-3,3));
  }
  
  void show() {
    stroke(colour, transparency);
    circle(location.x, location.y, size);
  }
  
  void act() {
    super.act();
    transparency -= 100;
    if (transparency <= 0) HEALTHPOINTS = 0;
  }
}
