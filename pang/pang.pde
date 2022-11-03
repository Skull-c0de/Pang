int x, y;
int moveX, moveY;
int moveW, moveZ;
int w, z;
int skin;
int score;

void setup() {
 skin = 1;
 score = 0;
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
  if (skin == 1) {
    fill(255);
    rect(w,z,15,85);
  }
  if (skin == 2) {
    fill(245, 40, 145);
    rect(w,z,15,85);
  }
  fill(255);
  ellipse(x,y,20,20);
  stroke(255);
  line(width/2,0,width/2,height);
  textSize(11);
  text("Score: ",320,10);
  text(score,360,10);
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
   
   if(key == 's') {
     
     if (skin < 2) {
       skin += 1;
     } else {
       skin = 1;
     }
     
   }
 }
}


void collisions()
{
  if (x > width-10 && moveX > 0)
  {
  moveX = -moveX;
}


if (y > width-10 && moveY > 0)
  {
  moveY = -moveY;
  }

if (y < 10 && moveY < 10)
  {
  moveY = -moveY;
  score += 1;

  }
  
if (x < w+25 && x > w+10 && y+10 > z && y-10 < z+85)
  {
  moveX = abs(moveX);
  score += 1;
  }
  
if (x < -12)
  {
  moveX = 0;
  moveY = 0;
  fill(255,255,255);
  textSize(28);
  text("GAME OVER",130,150);
  textSize(18);
  text("Appuyez sur ' r ' pour rejouer !",100,180);
  if(keyPressed)
    {
    if(key == 'r')
      {
      x = 200;
      y = 200;
      moveX = int(random(4,8));
      moveY = int(random(-4,-1));
      score = 0;
      }
    }
  }
}
