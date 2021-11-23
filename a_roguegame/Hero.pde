class Hero extends GameObject {
  float speed;
  int immunityTimer;
  Weapon myWeapon;
  boolean immunity;

  Hero() {
    super();
    speed = 9;
    rx = 1;
    ry = 1;
    size = 25;
    HEALTHPOINTS = 100;
    immunity = true;
    immunityTimer = 0;
    myWeapon = new rapidfire();
  }

  void show() {
    //pushMatrix();
    fill(SKY);
    strokeWeight(3);
    stroke(BLACK);
    circle(location.x, location.y, size);
    fill(BLACK);
    textSize(12);
    text(HEALTHPOINTS, location.x, location.y);

    if (immunity == true) {
      fill (WHITE);
      circle(location.x, location.y, size);
    } else {
      fill (BLUE);
      circle(location.x, location.y, size);
    }
  //popMatrix()
}

void act() {
  super.act();
  //move
  if (upkey) velocity.y = -speed;
  if (leftkey) velocity.x = -speed;
  if (downkey) velocity.y = speed;
  if (rightkey) velocity.x = speed;

  if (velocity.mag() > speed)
    velocity.setMag(speed);

  if (!leftkey && !rightkey) velocity.x = velocity.x * 0.75;
  if (!downkey && !upkey) velocity.y = velocity.y * 0.75;

  if (northRoom != WHITE && location.y ==height*0.1&& location.x >= width/2-50&&location.x <= width/2+50) {
    ry--;
    location = new PVector(width/2, height*0.9-10);
  } else if (eastRoom != WHITE && location.x ==width*0.9 && location.y >= height/2-50&& location.y <= height/2+50) {
    rx++;
    location = new PVector(width*0.1+10, height/2 );
  } else if (southRoom != WHITE && location.y ==height*0.9&& location.x >= width/2-50 &&location.x <= width/2+50) {
    ry++;
    location = new PVector(width/2, height*0.1+10);
  } else if (westRoom != WHITE && location.x ==width*0.1&& location.y >= height/2-50&& location.y <= height/2+50) {
    rx--;
    location = new PVector(width*0.9-10, height/2);
  }
  
  myWeapon.update();
  if (spacekey) {
    print("is this even working lol");
    myWeapon.shoot();
  }

  //immunity
  if (immunity == true) {
    immunityTimer++;
  }
  if (immunityTimer > 100) {
    immunity = false;
    immunityTimer = 0;
  }

  //lose lives
  int i = 0;
  while (i < myObjects.size()) {
    GameObject obj = myObjects.get(i);
    if (obj instanceof Enemy || obj instanceof Follower) {
      if (immunity == false) {
        myHero.HEALTHPOINTS--;
        immunityTimer = 0;
        immunity = true;
      }
    }
    i++;
  }
  if (myHero.HEALTHPOINTS == 0) mode = GAMEOVER;
}

}



//if (immunity >= immunityTimer) {
//  stroke(255);
//  textSize(20);
//  text("IMMUNITY: ON", 400, 125);
//}


//immunity
//if (immunity == true){
//  immunitytimer++;
//    }
//    if (immunitytimer > 150){
//      immunity = false;
//      immunitytimer = 0;
//    }

//  //lose lives
//  int i = 0;
//    while (i < myObjects.size()) {
//      GameObject obj = myObjects.get(i);
//      if (obj instanceof Enemy && isCollidingWith(obj) && inRoomWith(obj)){
//          if (immunity == false) {
//            myHero.hp
//            //for (int j=0; j<random(10, 20); j++) myObjects.add(new particles(location.x, location.y, 245));
//            }
//      }
//      i++;
//    }
//    if (myHero.hp == 0) mode = gameover;
//  }
//}
