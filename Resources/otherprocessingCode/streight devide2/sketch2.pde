boolean record;
float radius = 20;
float x, y;
float oldX, oldY;
String timestamp;

void setup()
{
  size(1200,800);
  background(0);
  strokeWeight(2);
  stroke(0,255,222);
  x =width/2;
  y = 0;
  oldX = x;
  oldY = y;
  
  stroke(255,0);
  strokeWeight(6);
  point(x,y);
  frameRate(60);

}
void draw()
{
  float angle =(TWO_PI/2) * floor(random(-4,4));
  x += cos(angle)*radius;
  y += sin(angle)* radius;
  
  if (x<0 || x>width){
    x = oldX;
    y=oldY;
  }
  stroke((int)random(255),(int)random(255),(int)random(255));
  strokeWeight(2);
  line(x,y,oldX,oldY);
  line(x, y, x, y+30);
  
  y=y+30;

  strokeWeight(4);
  point(x,y);
  
  oldX = x;
  oldY =y;
  
 if(mousePressed){saveFrame();}  
}

