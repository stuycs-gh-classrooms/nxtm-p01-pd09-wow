class Paddle {
  int pheight;
  int pwidth;
  PVector center;
  color c;
  int xspeed;

  //constructor
  Paddle(PVector p, int ph, int pw) {
    pheight = ph;
    pwidth = pw;
    center = new PVector(p.x, p.y);
  }

  //methods
  void display() {
    fill(#FF8000);
    rectMode(CENTER);
    rect(center.x, center.y, pwidth, pheight);
  }
}//class
