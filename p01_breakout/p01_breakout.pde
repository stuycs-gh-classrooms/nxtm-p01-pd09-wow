Ball projectile;
Paddle paddle;

void setup(){
  size(500, 500);
  newProjectile(30);
  keyPressed();
  
}

void draw(){
  background(0);
  projectile.display();
}

//MAKE THE PROJECTILE
void newProjectile(int psize){
 float x = width/2;
 float y = height - psize;
 projectile = new Ball(new PVector (x,y), psize); 
 projectile.xspeed = 0;
 projectile.yspeed = 0;
}

void newPaddle(int h, int w){
 float x = width/2;
 float y = 50;
 paddle = new Paddle(new PVector (x,y), h, w); 
 paddle.xspeed = 0;
 paddle.yspeed = 0;
}
 
// USER HANDLING


void keyPressed(){
  if (keyCode == RIGHT){
    projectile.center.x += 1;
  }
    if (keyCode == LEFT){
    projectile.center.x -= 1;
  }
}
