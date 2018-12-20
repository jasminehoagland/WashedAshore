float timeOffset = 10;
float timeIncrement =.01;
float yIncrement = .04;

float x,y;
float speed=1;

PImage wa;
PImage wa1;
PImage wa2;
PImage wa3;
PImage wa4;
PImage wa5;
PImage wa6;
PImage wa7;
PImage wa8;
PImage wa9;
PImage wa10;
PImage wa11;
PImage wa12;
PImage wa13;
PImage wa14;



void setup(){
  size(1620, 1080);
  wa = loadImage(("background.jpg"));
  wa1 = loadImage("1.png");
  wa2 = loadImage("2.png");
   wa3 = loadImage("3.png");
   wa4 = loadImage("a3.png");
    wa5 = loadImage("15.png");
   wa6 = loadImage("16.png");
   wa7 = loadImage("6.png");
   wa7 = loadImage("6.png");
    wa8 = loadImage("7.png");
    wa9 = loadImage("9.png");
    wa10 = loadImage("120.png");
     wa11 = loadImage("14.png");
     wa12 = loadImage("a14.png");
     wa13 = loadImage("13.png");
     wa14 = loadImage("4.png");
     
       x=width/2;
  y=height/2;

}
void draw(){
   
  background(wa);
if (mouseX <= 50) { 

  image(wa2,300,200);
  image(wa1, 0, 300);
   image(wa2,1000,5);
   image(wa3,400,100);
    image(wa4,400,200);
    image(wa9,970,100);
    image(wa6,600,10);
    image(wa5,200,.001);
}
if (mousePressed){
    image(wa1, 0, 300);
   image(wa2,1000,5);
   image(wa3,400,100);
    image(wa4,400,200);
}
{ 
       image(wa13, 950,y);
    image(wa7,0,y);
    image(wa8,850,y);
    image(wa10,450,y);
        image(wa11,600,y);
 image(wa12,220,y);
 image(wa12, 1250,y);
 image(wa14, 100,y);
  image(wa14, 980,y);

  y +=random(-speed,-speed);   
  if (y <= 100){
     y=900; }  
}
   
  fill(199,236,255);
  stroke(255);
  strokeWeight(10);
  beginShape();
  float yOffset = 0;
  
  for(float x =6; x<=width;x+=80){
    
    float y = noise(yOffset,timeOffset)*width;
    vertex(x,y);
    
    yOffset +=yIncrement;

    
  }
 
vertex(width,height);
vertex(0,height);
endShape(CLOSE);
  
  
  timeOffset += timeIncrement;
}
