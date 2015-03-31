
int recursionLevel =9;
float startRadius =200;
//start colors
int r = 255;
int g = 0;
int b = 40;
int c;

void setup(){
    size(800,800);
    smooth();
    background(0);
    frameRate(40);
}

void draw(){
   r+=-1;
  g+= 1;
  b+=2;
  drawBranch(width/2,400,startRadius, recursionLevel);
}


void drawBranch(float x, float y, float radius, int level){
 
fill(r,g,b);
noStroke();
rect(x,y-radius,level/3,radius);
rect(x,y, radius,level/3);
rect(x,y, -radius,level/3);

if(level>0){
  drawBranch(x-radius, y+radius/2, radius/2, level-1);
  drawBranch(x+radius, y+radius/2, radius/2, level-1);
  

 }
  if(mousePressed){ saveFrame();
}
}


