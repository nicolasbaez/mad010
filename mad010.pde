float i=0;
float w=32;
float div=3;
void setup() {
  size(512, 256);
  background(255);
}
void draw() {
  noStroke();
  fill(255, 255, 255, 16);
  rect(0, 0, width, height);
  stroke(0);
  float r=height/3;
  for (float j=i; j<=360+i; j+=360/div) {
    float x=r*cos(radians(j))+width/2;
    float y=r*sin(radians(j))+height/2-w/2;
    fill(random(255), random(255), random(255));
    rect(x, y, w, w);
  }
  i+=1;
  if (i>=360&&i<=360*2) {
    saveFrame("gif/mad010-######.png");
  }
}
