void setup() {
  size(640, 360);
  backgroundReset();
}

void draw() {
  stroke(255);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mousePressed() {
  backgroundReset();
}

void keyPressed() {
  background(0, 255, 0);
}

void backgroundReset() {
  background(50);
}
