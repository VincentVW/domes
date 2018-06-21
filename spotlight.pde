float x;
float y;
float easing = 0.05;



void setupSpotlight() {
  
}

float spotlightTargetX = random(800) + 150;
float spotlightTargetY = random(500) + 150;

void drawSpotlight() {
  
  if (millis() > time + animationSpeed){
    spotlightTargetX = random(800) + 150;
    spotlightTargetY = random(500) + 150;
  }
  
  float dx = spotlightTargetX - x;
  x += dx * easing;
  
  float dy = spotlightTargetY - y;
  y += dy * easing;
  
  //float radius = 300;
  
  //for (int i = 1; i < 20; i++) {
  //    fill(float(i)*20);
  //    ellipse(x, y, radius*2-((radius / 10)*i), radius*2-(radius / 10*i));
  //  }
  
    
  //    float radius = 200;
  
  //for (int i = 1; i < 20; i++) {
  //    fill(float(i)*20);
  //    ellipse(x, y, radius*2-((radius / 10)*i), radius*2-(radius / 10*i));
  //  }
    
     for (int i = 1; i < 20; i++) {
        fill(float(i)*10);
        ellipse(x, y, 300-(2*i), 300-(2*i));
      }
      

}
