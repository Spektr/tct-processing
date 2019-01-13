Ball[] balls;
int ballsCount = 500;

void setup() {
  size(640, 360);
  background(50);

  // initialize balls
  balls = new Ball[ballsCount];
  
  // first ball
  balls[0] = new Ball(300, true);
  
  // other balls
  for (int i =1; i< ballsCount; i++) {
    balls[i] = new Ball(random(5,20), false);
  }

  // connect balls between themeselves
  for (int i =0; i< ballsCount; i++) {
    Ball ball = balls[i];

    for (int j = i; j< ballsCount; j++) {
      ball.connect(balls[j]);
    }
  }
}

void draw() {
  // Draw stuff
  background(50);
  fill(255);

  // show and move balls
  for (int i=0; i < ballsCount; i++) {
    balls[i].display();
    balls[i].move();
  }

  // handle balls clash
  for (int i=0; i < ballsCount; i++) {
    balls[i].clash();
  }
}
