void game() {

  drawRoom();
  drawGameObjects();
  drawDarknessCell();
  drawMiniMap();

  //int i = 0;
  //while ( i < myObjects.size()) {
  // GameObject myObj = myObjects.get(i);
  // myObj.show();
  // myObj.act();
  //}
  //myHero.show();
  //myHero.act();
}
void drawRoom() {
  background(DARKBLUE);
  stroke(BLACK);
  strokeWeight(8);
  line(0, 0, width, height);
  line(width, 0, 0, height);
  //stroke(BLACK);
  //fill(WHITE);
  //rect(width/2,height/2,width-100,height-100);

  northRoom = map.get(myHero.rx, myHero.ry-1);
  eastRoom = map.get(myHero.rx+1, myHero.ry);
  southRoom = map.get(myHero.rx, myHero.ry+1);
  westRoom = map.get(myHero.rx-1, myHero.ry);

  println(northRoom, eastRoom, southRoom, westRoom);

  noStroke();
  fill(BLACK);
  if (northRoom != #FFFFFF) {
    ellipse(width/2, height*0.1, 100, 100);
  }
  if (eastRoom != #FFFFFF) {
    ellipse(width*0.9, height/2, 100, 100);
  }
  if (southRoom != #FFFFFF) {
    ellipse(width/2, height*0.9, 100, 100);
  }
  if (westRoom != #FFFFFF) {
    ellipse(width*0.1, height/2, 100, 100);
  }

  rectMode(CENTER);
  stroke(BLACK);
  fill(WHITE);
  rect(width/2, height/2, width*0.8, height*0.8);
}

void drawDarknessCell () {
  for (int i = 0; i < darkness.size(); i++) {
    DarknessCell dark = darkness.get(i);
    dark.show();
  }
}

void drawGameObjects() {
  int i = 0;
  while (i < myObjects.size()) {
    GameObject obj = myObjects.get(i);
    if (obj.rx == myHero.rx && obj.ry == myHero.ry) {
      obj.show();
      obj.act();
      if (obj.HEALTHPOINTS <= 0) {
        myObjects.remove(i);
        i--;
      }
    }
    i++;
  }
}

//void drawGameObjects() {
//  int i = 0;
//  while (i<myObjects.size()) {
//    GameObject myObj = myObjects.get(i);
//    myObj.show();
//    myObj.act();
//    if (myObj.HEALTHPOINTS == 0) {
//      myObjects.remove(i);
//    } else {
//      i++;
//    }
//  }
//}

void gameClicks() {
}

void drawMiniMap () {
  int mx = 0;
  int my = 0;
  int transparent = 100;
  float size = 20;
  color c = map.get(mx, my);
  while (my < map.height) {
    if (myHero.rx*8 + 50 == 8*mx+50 && myHero.ry*8 + 50 == 8*my+50) {
      c = SKY;
      transparent = 255;
    } else {
      c = map.get(mx, my);
      transparent = 255;
    }
    fill(c, transparent);
    rect((size-2)*mx+50, (size-2)*my+50, size, size);
    mx += 1;
    if (mx >= map.width) {
      mx = 0;
      my += 1;
    }
  }



  //float opacity = 0;
  //float size = 50;
  //int x = 0;
  //int y = 0;
  //while (y < map.height) {
  //  opacity = map(50, 0, 30, 0, 100);
  //  color c = map.get(x, y);
  //  fill(c, opacity);
  //  square(x*15+40, y*15+40, size-35);
  //  x++;

  //  if (x >= map.width) {
  //    x = 0;
  //    y = y + 1;
  //  }
  //}
  //dot
  //if (myHero.rx == 1 && myHero.ry == 1) {
  //fill(255);
  //square(myHero.rx+55, myHero.ry+45, 15);
  //float size = 10;
  //int mx = 0;
  //int my = 0;
  //while (my < map.height) {
  //  color c = map.get(mx, my);
  //  fill (c);
  //  square (mx, my, size);
  //  mx = mx + 1;
  //  if (mx >= map.width) {
  //    mx =0;
  //    my += size;
  //  }
  //}
  //}
}
