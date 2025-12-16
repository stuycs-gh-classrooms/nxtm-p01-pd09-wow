class Brick {
  int h, w;
  boolean alive = true;
  PVector center;

  Brick(PVector b, int h_, int w_) {
    h = h_;
    w = w_;
    center = b.copy();
  }

  void display() {
    fill(#1ACB00);
    rectMode(CENTER);
    rect(center.x, center.y, w, h);
  }
}
