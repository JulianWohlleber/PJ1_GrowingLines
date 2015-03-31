float x, y, x0, y0, c1, c2, c3;
int s = 1000;
float radius = s/200;

void setup()
{
  size(s,s);
  background(0);
  x = width/2;
  y = height/2;
  x0 = x;
  y0 = y;
  c1 = 0;
  c2 = 100;
  c3 = 150;
  

  
  
  strokeWeight(3);
  point(x0, y0);
  frameRate(10000);
}

void draw(){
  stroke(c1,c2,c3);
  fill(c1,c2,c3);
  beginShape();
  vertex(x0, y0);
  
  float angle=(TWO_PI/4) * floor(random(-4,4));
  
  x0 = x0 + cos(angle)*radius;
  y0 = y0 + sin(angle)* radius;
  
  endShape();
   
    if(x0>width){
      x0 = 0;
     c1=255;
     c2=0;
     c3=0;
    }
     if(x0<0){
      x0 = width;
     c1=0;
     c2=255;
     c3=0;
     }
       if(y0>height){
      y0 = 0;
     c1=0;
     c2=0;
     c3=255;
       }
     if(y0<0){
      y0 = height;
     c1=255;
     c2=150;
     c3=0;
     
    }
  
  
  }  
    
  
