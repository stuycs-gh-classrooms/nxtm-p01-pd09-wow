class Ball{
  //fields
  int xspeed, yspeed;
  int size;
  color c;
  PVector center;

  //constructor
  Ball(PVector ball, int s) {
    size = s;
    center = new PVector(ball.x, ball.y);
  }

  //methods

  //DISPLAY
  void display() {
    fill(#CE1111);
    circle(center.x, center.y, size);
  }

  //MOVE
  void move() {
    if (center.x > width - size/2 ||
      center.x < size/2) {
      xspeed*= -1;
    }
    if (center.y > height - size/2 ||
      center.y < size/2) {
      yspeed*= -1;
    }
    center.x+= xspeed;
    center.y+= yspeed;
  }


  //COLLISIONS
  void collision() {
  }
}// class ball
