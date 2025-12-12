class Paddle {
  int pheight;
  int pwidth;
  PVector center;
  color c;
  int xspeed;
  
  //constructor
    Paddle(PVector p, int ph, int pw){
    pheight = ph;
    pwidth = pw;
    center = new PVector(p.x, p.y);
  }
  
  //methods 
  void display() { 
    fill(#3F11CE);  
   rectMode(CENTER);
    rect(center.x, center.y, pwidth, pheight);
  }
  
  
 
  

}//class

//// if the ball hits the middle of paddle it goes straight up. 
//if it hits more to the edge, it goes on an angle/diagonally.
