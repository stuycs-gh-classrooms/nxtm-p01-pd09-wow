class Paddle {
  int height;
  int width;
  PVector center;
  color c;
  int xspeed, yspeed;
  
  //constructor
  Paddle(PVector p, int h, int w){
    height = h;
    width = w;
    center = new PVector(p.x, p.y);
  }
  
  //methods 
  void display(){
    fill(#3F11CE);  
    rectMode(CENTER);
    rect(center.x, center.y, width, height);
  }
  
  void move() {
      if (center.x > width || center.x < width ){
      xspeed*= -1;
    }
    if (center.y > height ||  center.y < height) {
      yspeed*= -1;
    }
    center.x+= xspeed;
    center.y+= yspeed;
    
  }
  
  
  
}


//// if the ball hits the middle of paddle it goes straight up. 
//if it hits more to the edge, it goes on an angle/diagonally.
