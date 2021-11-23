class GameObject {
  int rx, ry;
  PVector location;
  PVector velocity;
  int HEALTHPOINTS;
  int size;

  GameObject() {
    location = new PVector (width/2, height/2);
    velocity = new PVector(0, 0);
    HEALTHPOINTS = 1;
  }

  void show() {
  }

  void act() {
    location.add(velocity);
    if (location.x < width*0.1) location.x = width*0.1;
    if (location.x > width-width*0.1) location.x = width-width*0.1;
    if (location.y < height*0.1) location.y = height*0.1;
    if (location.y > height*0.9) location.y = height*0.9;
  }
}
