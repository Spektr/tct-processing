float[] coords = new float[400];

void setup() {
  size(400, 300);
  background(50);

  for (int i = 0; i < 400; i = i + 4 ) {
    coords[i] = random(0, width);
    coords[i+1] = 0;
    coords[i+2] = random(-1, 1);    
    coords[i+3] = random(1, 5);
  }
}

void draw() {
  background(50);

  for (int i = 0; i < 400; i = i + 4 ) {
    float circleX = coords[i];
    float circleY = coords[i+1];
    float circleShiftX = coords[i+2];
    float circleShiftY = coords[i+3];

    ellipse(circleX, circleY, 5, 5);

    // calculate properties
    if(circleY > height){
      circleY = 0;
      circleX = random(0, width);
    }
    coords[i] = circleX + circleShiftX;
    coords[i+1] = circleY + circleShiftY;
    
  }
}
