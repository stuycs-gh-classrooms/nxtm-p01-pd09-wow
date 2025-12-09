class Paddle {
  int height;
  int width;
  PVector center;
  color c;
  
  //constructor
  Paddle(PVector p, int h, int w){
    height = h;
    width = w;
    center = new PVector(p.x, p.y);
  }
  
  //methods 
  void display(){
    fill(c);
    rectMode(CENTER);
    rect(center.x, center.y, width, height);
  }
  
  void move() {
    
    
  }
  
  
  
}
