void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == VICTORY) {
    gameoverClicks();
  } else if (mode == GAMEOVER) {
    winClicks();
  } else {
    println("Error: Mode = " + mode);
  }
}
