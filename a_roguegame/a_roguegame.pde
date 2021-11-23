//Jake Choi
//1-4

boolean upkey, leftkey, downkey, rightkey, spacekey;
ArrayList<GameObject> myObjects;
ArrayList<DarknessCell> darkness;
Hero myHero;
AnimatedGIF myGIF;

PImage map;
color northRoom, eastRoom, southRoom, westRoom;

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int VICTORY = 4;
final int GAMEOVER = 5;

//colour scheme
color BLUE  = #2644FC;
color DARKBLUE = #011381;
color SKY = #5FF2F1;
color BLACK = #030303;
color WHITE = #FFFFFF;
color RED = #F50000;
color LIGHTRED = #FF3639;

void setup() {
  mode = INTRO;
  size(800, 800, P2D);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  // GIF
  myGIF = new AnimatedGIF (38, "frame_", "_delay-0.03s.png");
  //create objects
  myObjects = new ArrayList<GameObject>(1000);
  myHero = new Hero();
  myObjects.add(myHero);
  myObjects.add(new Enemy());
  myObjects.add(new Follower(1, 2));
  myObjects.add(new followerarmy(2, 1));
  myObjects.add(new followerarmysecond(2, 1));
  map = loadImage("map1.png");

  darkness = new ArrayList<DarknessCell>(1000);
  float size = 20;
  int x = 0;
  int y = 0;
  while (y < height) {
    darkness.add(new DarknessCell(x, y, size));
    x += size;
    if (x >= width) {
      x = 0;
      y += size;
    }
  }


  //loading the enemies from the map
  x = 0;
  y = 0;
  while (y < map.height) {
    color roomColor = map.get(x, y);
    if (roomColor == LIGHTRED) {
      myObjects.add(new Enemy(x, y));
    }

    if (roomColor == LIGHTRED) {
      myObjects.add(new Follower(x, y));
    }
    x++;
    if (x == map.width) {
      x = 0;
      y++;
    }
  }
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == VICTORY) {
    gameover();
  } else if (mode == GAMEOVER) {
    win();
  } else {
    println("Error: Mode = " + mode);
  }
}
