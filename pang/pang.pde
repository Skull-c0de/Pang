int x, y;
int moveX, moveY;
int moveW, moveZ;
int w, z;

void setup() {
  
 size(400,400);
 background(0);

 x = 200;
 y = 200;

 moveX = int(random(4,8));
 moveY = int(random(-4,-1));

 w = 15;
 z = 60;
  
}
void draw()
{
clean();
drawplayer();
move();
collisions();
}

void clean()
{
background(0);
}

void drawplayer()
{
  stroke(255);
  fill(255);
  rect(w,z,15,85);
  fill(255);
  ellipse(x,y,20,20);
  stroke(255);
  line(width/2,0,width/2,height);
}

void move()
{
  x = x + moveX;
  y = y + moveY;

  if(keyPressed)
 {
   if(keyCode == DOWN && z+85<400) {
     z+=4;
   }
   if(keyCode == UP && z>0) {
     z-=4;
   }
 }
}
