class Ball {
  //fields
  int xspeed = 3;
  int yspeed = -3;
  int size;
  PVector center;

  //constructor
  Ball(PVector ball, int s) {
    size = s;
    center = ball.copy();
  }

  /////METHODS/////

  //DISPLAY
  void display() {
    fill(#FF1FC7);
    circle(center.x, center.y, size);
  }

  //MOVE
  void move() {
    center.x += xspeed;
    center.y += yspeed;

    if (center.x <= size/2 || center.x >= width-size/2) xspeed *= -1;
    if (center.y <= size/2) yspeed *= -1;
  }

  //COLLISIONS
  //collisionn with paddle
  void paddleCollision(Paddle p) {
    if (center.y + size/2 >= p.center.y - p.pheight/2 &&
      center.x > p.center.x - p.pwidth/2 &&
      center.x < p.center.x + p.pwidth/2 &&
      yspeed > 0) {

      float offset = (center.x - p.center.x) / (p.pwidth/2);
      xspeed = int(offset * 5);
      yspeed *= -1;
    }
  }

  //collision with brick
  void brickCollision(Brick[][] b) {
    for (int r = 0; r < b.length; r++) {
      for (int c = 0; c < b[r].length; c++) {
        Brick br = b[r][c];
        if (br.alive &&
          center.x > br.center.x - br.w/2 &&
          center.x < br.center.x + br.w/2 &&
          center.y > br.center.y - br.h/2 &&
          center.y < br.center.y + br.h/2) {

          br.alive = false;
          yspeed *= -1;
          return;
        }
      }
    }
  }
}// class ball
