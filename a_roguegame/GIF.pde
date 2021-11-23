class AnimatedGIF {

  PImage[] images;
  int currentImg;
  int rate;

  AnimatedGIF(int n, String prefix, String suffix) {
    images = new PImage[n];
    loadImages(prefix, suffix);
    currentImg = 0;
    rate = 1;
  }

  AnimatedGIF(int n, int r, String prefix, String suffix) {
    images = new PImage[n];
    loadImages(prefix, suffix);
    currentImg = 0;
    rate = r;
  }

  void show() {
    if (currentImg >= images.length) currentImg = 0;
    image(images[currentImg], width/2, height/2, width, height);
    if (frameCount % rate == 0) currentImg++;
  }

  void loadImages(String prefix, String suffix) {
    int i = 0;
    while (i < images.length) {
      String leadingZero = "";
      if (images.length <= 10) leadingZero = "";
      else if (images.length <= 100) {
        if (i < 10) leadingZero = "0";
        else leadingZero = "";
      } else if (images.length > 100) {
        if (i < 10) leadingZero = "00";
        else if (i < 100) leadingZero = "0";
        else leadingZero = "";
      }
      images[i] = loadImage(prefix+leadingZero+i+suffix);
      i++;
    }
  }
} 
