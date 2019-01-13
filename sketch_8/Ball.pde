class Ball {
  float diameter;
  float x;
  float y;
  int incrementX = 1;
  int incrementY = 1;
  ArrayList<Ball> balls = new ArrayList<Ball>();
  boolean isMarked;

  Ball(float diameter, boolean isMarked) {
    this.isMarked = isMarked;
    this.diameter = diameter;
    this.x = random(width);
    this.y = random(height);
  }

  void display() {
    if (isMarked) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }

    ellipse(this.x, this.y, this.diameter, this.diameter);
  }

  void move() {
    x += incrementX;
    y += incrementY;

    if (x > width) {
      x = width;
      incrementX *= -1;
    }

    if (x < 0) {
      x=0;
      incrementX *= -1;
    }

    if (y > height) {
      y = height;
      incrementY *= -1;
    }

    if (y < 0) {
      y = 0;
      incrementY *= -1;
    }
  }

  boolean overlap(Ball ball) {
    float dist = dist(x, y, ball.x, ball.y);

    if (dist > (this.diameter/2 + ball.diameter/2)) {
      return false;
    } else {
      return true;
    }
  }

  void rollover(Ball ball) {

    if (ball.x > x) {
      incrementX = -1;
    } else {
      incrementX = 1;
    }


    if (ball.y > y) {
      incrementY = -1;
    } else {
      incrementY = 1;
    }
  }

  void connect(Ball ball) {
    if (this.equals(ball)) {
      return;
    }
    
    balls.add(ball);
  }

  void clash() {
    for (int i=0; i < balls.size()-1; i++) {
      Ball connectedBall = balls.get(i);
      if (this.overlap(connectedBall)) {
        this.rollover(connectedBall);
        connectedBall.rollover(this);
      }
    }
  }
}
