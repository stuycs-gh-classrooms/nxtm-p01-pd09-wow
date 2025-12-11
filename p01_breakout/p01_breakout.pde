Ball projectile;
Paddle paddle;


void setup(){
  size(500, 500);
  newProjectile(30);
  newPaddle(30, 70);
  paddle.keyPressed();
  
}

void draw(){
  background(#46CCFF);
  projectile.display();
  paddle.display();
}

//MAKE THE PROJECTILE
void newProjectile(int psize){
 float x = width/2;
 float y = 250;
 projectile = new Ball(new PVector (x,y), psize); 
 projectile.xspeed = 0;
 projectile.yspeed = 0;
}

void newPaddle(int w, int h){
 float x = width/2;
 float y = height - h + 20;
 paddle = new Paddle(new PVector (x,y), w, h); 
}
 
// USER HANDLING
