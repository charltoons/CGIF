import geomerative.*;
//import gifAnimation.*;

RShape letter;
RShape polyLetter;
RPoint[] points;
GifMaker gifExport;


void setup() {
  size(500, 500, P2D); 
  RG.init(this);
  letter = RG.loadShape("Letter-C.svg");
  points = letter.getPoints();

  noLoop();
  
//  gifExport = new GifMaker(this, "export.gif", 1, 255);
//  gifExport.setRepeat(1);
//  gifExport.setTransparent(255);
}
void draw() {
  background(255);
  scale(1);
  polyLetter = RG.polygonize(letter);
//  RG.shape(polyLetter, 0, 0);
 
  PShape x = createShape();
  x.beginShape();
  for (int i=0; i < points.length; i+=5){
    x.vertex(points[i].x, points[i].y);
    print(points[i].x);
  }
  x.endShape();
  shape(x);
  
//  gifExport.setDelay(1);
//  gifExport.addFrame();
//  gifExport.finish();
}
