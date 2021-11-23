void intro() {

  myGIF.show();
  fill(DARKBLUE);
  textSize(80);
  text("ROGUE GAME", 390, 200);

  //buttons
  click();
  button = new Button("PLAY", 400, 400, 200, 100, DARKBLUE, SKY);
  button.show();
  if (button.clicked) {
    mode = GAME;
  }
}

void click() {
  mouseReleased = false;
  if (mousePressed) wasPressed = true;
  if (wasPressed && !mousePressed) {
    mouseReleased =  true;
    wasPressed = false;
  }
}
void introClicks() {
}
