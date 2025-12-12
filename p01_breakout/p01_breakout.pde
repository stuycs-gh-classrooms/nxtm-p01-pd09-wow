//class objects
Ball projectile;
Paddle paddle;
boolean moving;

//variables

void setup() {
  size(500, 500);
  newPaddle(30, 70);
  moving = true;
  newProjectile(30);
}

void draw() {
  background(#46CCFF);
  projectile.display();
  paddle.display();
  // projectile.move();

  if (moving) {
    projectile.move();
  }
}//draw


//MAKE THE PROJECTILE

void newProjectile(int psize) {
  float x = width/2;
  float y = 250;
  projectile = new Ball(new PVector (x, y), psize);
  projectile.xspeed = 0;
  projectile.yspeed = 0;
}


void newPaddle(int w, int h) {
  float x = width/2;
  float y = height - h + 20;
  paddle = new Paddle(new PVector (x, y), w, h);
}


void keyPressed() {
  if (keyCode == RIGHT) {
    paddle.center.x += 10;
  }
  if (keyCode == LEFT) {
    paddle.center.x -= 10;
  }

  if (key == ' ') {
    moving = !moving;
  }

  if (key == 'r') {
    newProjectile(30);
  }
} //keypressed


// USER HANDLING
