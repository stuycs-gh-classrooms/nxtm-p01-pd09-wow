Ball projectile;

void setup(){
  size(500, 500);
  newProjectile(30);
  
  
}

void draw(){
  background(0);
  projectile.display();
}

//MAKE THE PROJECTILE
void newProjectile(int psize){
 float x = width/2;
 float y = height - psize;
 projectile = new Ball(new PVector(x, y), psize); 
}

void 



// USER HANDLING


void keyPressed(){
  
  
}
