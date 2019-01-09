float circleX;
float circleY;
int incrementX = 1;
int incrementY = 1;
float randomSize = 20;

void setup() {
  size(640, 360);
  background(50);
  circleX = width/2;
  circleY = height/2;
}

void draw() {
  // Draw stuff
  background(50);
  fill(255);
  ellipse(circleX, circleY, randomSize, randomSize);

  // Logic
  randomSize = random(15,20);
  circleX += incrementX;
  circleY += incrementY;

  if ((circleX > width) || (circleX < 0)) {
    incrementX *= -1;
  }

  if ((circleY > height) || (circleY < 0)) {
    incrementY *= -1;
  }
}
