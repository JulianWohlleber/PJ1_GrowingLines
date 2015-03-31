
int recursionLevel = 6;
float startRadius =200;

void setup(){
    size(800,800);
}

void draw(){
  drawBranch(width/2,height/2+startRadius,startRadius, recursionLevel);
}


void drawBranch(float x, float y, float radius, int level){
  
 strokeWeight(level*2);
  stroke(0,130,164,100);
  noFill();
  arc(x,y, radius*2, radius*2,-PI, 0);

fill(0);
noStroke();
ellipse(x,y,level*1.5,level*1.5);

if(level>0){
  drawBranch(x-radius, y+radius/2, radius/2, level-1);
  drawBranch(x+radius,y+radius/2, radius/2, level-1);
}
}
