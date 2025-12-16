//class objects
Ball projectile;
Paddle paddle;
Brick[][] bricks;

//variables
boolean moving;
int rows = 5;
int cols = 8;
int lives = 3;
int brickW = 55;
int brickH = 20;


void setup() {
  size(500, 500);
  resetGame();
}

void draw() {
  background(#46CCFF);
  fill(0);

  //display
  textSize(14);
  text("Lives: " + lives, 10, 20);
  text("SPACE = pause/play | R = reset", 10, 40);

  // display objects
  paddle.display();
  projectile.display();

  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < cols; c++) {
      if (bricks[r][c].alive) {
        bricks[r][c].display();
      }
    }
  }

  // movement + collisions
  if (moving) {
    projectile.move();
    projectile.paddleCollision(paddle);
    projectile.brickCollision(bricks);
  }

  // lose a life
  if (projectile.center.y > height) {
    lives--;
    moving = false;
    newProjectile(30);

    if (lives <= 0) {
      resetGame();
    }
  }

  // to win
  if (allBricksGone()) {
    rows++;
    buildBricks();
    newProjectile(30);
    moving = false;
  }
}//draw


//reset game 
void resetGame() {
  lives = 3;
  newPaddle(70, 15);
  newProjectile(30);
  rows = 5;
  buildBricks();
  moving = false;
}

//i killed them all
boolean allBricksGone() {
  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < cols; c++) {
      if (bricks[r][c].alive) return false;
    }
  }
  return true;
}


//MAKE THE ELEMENTS

void newProjectile(int psize) {
  projectile = new Ball(new PVector(width/2, height-60), psize);
}

void newPaddle(int w, int h) {
  paddle = new Paddle(new PVector(width/2, height-30), h, w);
}

void buildBricks() {
  bricks = new Brick[rows][cols];
  int startX = 40;
  int startY = 60;

  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < cols; c++) {
      PVector pos = new PVector(startX + c*(brickW+5), startY + r*(brickH+5));
      bricks[r][c] = new Brick(pos, brickH, brickW);
    }
  }
}

//user input
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

  if (key == 'r' || key == 'R') {
    resetGame();
  }
} //keypressed
