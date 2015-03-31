  
  float radius = 5;
  
  //on field - positions
  float x1, x2, x3, x4;
  float y1, y2, y3, y4;
  float OLDx1, OLDx2, OLDx3, OLDx4;
  float OLDy1, OLDy2, OLDy3, OLDy4;
  
  //colors 
  int r1 = 255;
  int g1 = 0;
  int b1 = 44;
  int r2 = 10;
  int g2 = 202;
  int b2 = 255;
  int r3 = 255;
  int g3 = 49;
  int b3 = 3;
  int r4 = 0;
  int g4 = 255;
  int b4 = 214;

  void setup()
  {
  size(64,64);
  background(0);
  x1 = x3 = 0;
  x2 = x4 = width;
  y1 = y2 = 0;
  y3 = y4 = height;
  OLDx1 = OLDx3 = x1;
  OLDx2 = OLDx4 = x2;
  OLDy1 = OLDy2 = y1;
  OLDy3 = OLDy4 = y3;
  frameRate(60);
  }
  void draw()
  {
  //define new angle
  float angle =(TWO_PI/4) * floor(random(-4,4));
  x1 += cos(angle)*radius;
  y1 += sin(angle)* radius;
  angle =(TWO_PI/4) * floor(random(-4,4));
  x2 += cos(angle)*radius;
  y2 += sin(angle)* radius;
  angle =(TWO_PI/4) * floor(random(-4,4));
  x3 += cos(angle)*radius;
  y3 += sin(angle)* radius;
  angle =(TWO_PI/4) * floor(random(-4,4));
  x4 += cos(angle)*radius;
  y4 += sin(angle)* radius;
  
  //prohibit offscreen points
  if (x1<0 || x1>width || y1<0 || y1>width){
  x1 = OLDx1;
  y1 = OLDy1;
  }  
  if (x2<0 || x2>width || y2<0 || y2>width){
  x2 = OLDx2;
  y2 = OLDy2;
  }
  if (x3<0 || x3>width || y3<0 || y3>width){
  x3 = OLDx3;
  y3 = OLDy3;
  }
  if (x4<0 || x4>width || y4<0 || y4>width){
  x4 = OLDx4;
  y4 = OLDy4;
  }
  
  //draw lines
  strokeWeight(2);
  stroke(r1, g1, b1);
  line(x1,y1,OLDx1, OLDy1);
  stroke(r2, g2, b2);
  line(x2,y2,OLDx2, OLDy2);
  stroke(r3, g3, b3);
  line(x3,y3,OLDx3, OLDy3);
  stroke(r4, g4, b4);
  line(x4,y4,OLDx4, OLDy4);
  
 //set angle points
  strokeWeight(4);
  stroke(r1, g1, b1);
  point(x1,y1);
  stroke(r2, g2, b2);
  point(x2,y2);
  stroke(r3, g3, b3);
  point(x3,y3);
  stroke(r4, g4, b4);
  point(x4,y4);
  
  //save old points for backup  
  OLDx1 = x1;
  OLDy1 = y1;
  OLDx2 = x2;
  OLDy2 = y2;
  OLDx3 = x3;
  OLDy3 = y3;
  OLDx4 = x4;
  OLDy4 = y4;  
  if(mousePressed){saveFrame();
}  
} 
  
