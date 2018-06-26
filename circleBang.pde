Circle circle;

void setupCircleBang(){
  circle = new Circle();
}

void drawCircleBang() {
  circle.draw();
}

class Circle {
  float x = random(0, width);
  float y = random(0, height);
  color c = color(255);
  
  Ani diameterAni;
  float diameterStart = 200;
  float diameterEnd = 5;
  float diameter = diameterStart;
  float duration = 0.9;
  
  Circle() {
    // diameter animation
    diameterAni = new Ani(this, duration, "diameter", diameterEnd);
    diameterAni.pause();
    diameter = diameterEnd;
  }

  void bang() {
    diameterAni.end();
    diameter = diameterStart;
    diameterAni.seek(0);
    diameterAni.start();
  }

  void draw() {
    fill(c);
    ellipse(x, y, diameter, diameter);
  }
}
