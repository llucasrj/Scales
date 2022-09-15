void setup() {
   size(600, 600);  //feel free to change the size
   noLoop();
}

void draw() {
  boolean shift = true;
  for(int i = 600; i>=-100; i-=35){
    for(int h = -100; h<=600;h+=100){
      if(shift == true)
        scale(h+50,i);
       else
         scale(h,i);
    }
    if(shift == true)
      shift = false;
     else
       shift = true;
  }
}
void scale(int x, int y) {
  int diam = 0;
  float r = 255;
  noFill();
  while(diam < 50){
    stroke(0,r,0);
    beginShape();
    curveVertex(x+20+diam,y+diam);
    curveVertex(x+20+diam,y+diam);
    curveVertex(x+diam,y+50);
    curveVertex(x+50,y+100-diam);
    curveVertex(x+100-diam,y+50);
    curveVertex(x+80-diam,y+diam);
    curveVertex(x+80-diam,y+diam);
    endShape();
    diam++; 
    r-=255/47.0;
  }
  strokeWeight(2);
  stroke(255);
  beginShape();
   curveVertex(x+20,y);
   curveVertex(x+20,y);
   curveVertex(x,y+50);
   curveVertex(x+50,y+100);
   curveVertex(x+100,y+50);
   curveVertex(x+80,y);
   curveVertex(x+80,y);
   endShape();
}
