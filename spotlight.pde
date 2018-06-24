import de.looksgood.ani.*;

float spotlightTargetX = random(800) + 150;
float spotlightTargetY = random(500) + 150;
float spotlightRadius = 300;
float easing = 0.01;


void setupSpotlight() {
  // you have to call always Ani.init() first!
  Ani.init(this);
  // set the default easing
  Ani.setDefaultEasing(Ani.QUART_IN_OUT);

}

void drawSpotlight() {
  
  if (isBeatFrame){
    float newX = spotlightTargetX + random(400) - 200;
    if(newX > 1000){newX = 900; }
    float newY = spotlightTargetY + random(400) - 200;
    if(newY > 1000){newY = 500; }
    Ani.to(this, 1.5, "spotlightTargetX", newX);
    Ani.to(this, 2.0, "spotlightTargetY", newY);
  }
  
    
  for (int i = 1; i < 10; i++) {
    fill(255,255,255, float(i)*14);
    ellipse(spotlightTargetX, spotlightTargetY, spotlightRadius-((spotlightRadius / 5)*i), spotlightRadius-(spotlightRadius / 5)*i);
  }
  
  //for (int i = 1; i < 10; i++) {
  //  fill(255,255,255, float(i)*14);
  //  ellipse(spotlightTargetX, spotlightTargetY, spotlightRadius-((spotlightRadius / 10)*i), spotlightRadius-(spotlightRadius / 10)*i);
  //}
}
