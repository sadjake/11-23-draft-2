class Turret extends Enemy{
  
  int shotTimer, threshold;
  float x;
  
  Turret(int x, int y){
    super(500,50,x,y);  
  }
  
  void show(){
    fill(255);
    ellipse(location.x,location.y,50,50);
    fill(0);
    textSize(20);
    text(HEALTHPOINTS,location.x,location.y);
  }
  
  void act(){
     super.act(); 
     
     shotTimer++;
     if (shotTimer>threshold) {
      shotTimer = 0;
    } 
  
  }
}
