//root size
float radius = 50;
  float x, y, z;
  float OLDx, OLDy, OLDz;

  //start color
  int r=100;
  int g=0;
  int b=100;

  void setup(){
  size(1200,1200,P3D);
  background(0);
  x = width/2;
  y =height/2+200;
  z = 200;
  OLDx = x;
  OLDy = y;
  OLDz = z;
  frameRate(60);
  }
  
  void draw(){
  //point of view
  rotateX(-0.7);
  rotateY(0.34);  
  
  //draw
  fill(r,g,b);
  stroke(r+50,g+50,b+50);
  strokeWeight(4);
  point(x,y,z);
  stroke(r,g,b);
  strokeWeight(2);
  beginShape();
  vertex(OLDx,OLDy,OLDz);
  vertex(x, y, z);
  
  //backup old values
  OLDx = x;
  OLDy = y;
  OLDz = z;
  
  //define new x, y, z
  int q = (int)random(12);
  if(q==1){
  x = x+radius;
  }
  if(q==2){
  x = x-radius;
  }
  if(q==3){
  y = y+radius;
  }
  if(q==4){
  y = y-radius;
  } 
  if(q==5){
  z = z+radius/2;
  r=r+30;
  b = b-30;
  }
  if(q==6){
  z = z-radius;
  b=b+30;
  r = r-30;
  } 
  
  //prohibit vertex to run out of screen
  if(y<0 || y>height||x<0 || x>width||z<0 || z>height/4){
  y = OLDy;
  x = OLDx;
  z = OLDz;
  
  //prohibit colorvalue to run out of range
  }
  if(r>255){
  r=255;
  }
  if(b>255){
  b=255;
  }

  vertex(x, y, z);
  endShape(); 
  point(x,y);
  if(mousePressed){saveFrame();}
}   
