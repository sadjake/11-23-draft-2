void keyPressed() {
  if (keyCode =='w'||keyCode=='W') upkey = true;
  if (keyCode =='s'||keyCode=='S') downkey = true;
  if (keyCode =='a'||keyCode=='A') leftkey = true;
  if (keyCode =='d'||keyCode=='D') rightkey = true;
  if (key == ' ') spacekey = true;
}

void keyReleased() {
  if (keyCode =='w'||keyCode=='W') upkey = false;
  if (keyCode =='s'||keyCode=='S') downkey = false;
  if (keyCode =='a'||keyCode=='A') leftkey = false;
  if (keyCode =='d'||keyCode=='D') rightkey = false;
  if (key == ' ') spacekey = false;
}
