// main animation speed 

void animationSpeed(int newSpeed) {
  animationSpeed = newSpeed;
}


// Main led animations

public void allOn(){
  currentEffect = "allLightsOn";
}

public void turnOff(){
  currentEffect = "turnOff"; 
}

public void insideOut() {
  currentEffect = "insideOut";
  currentAnimationIndex = 0;
  currentAnimationMaxIndex = 140;
  currentAnimationIndexSteps = 2;
  currentAnimationRange = 40;
  currentAnimationDome = 0;
}

public void leftRight() {
  currentAnimationIndex = 0;
  currentAnimationMaxIndex = 60;
  currentAnimationIndexSteps = 1;
  currentAnimationRange = 7;
  currentAnimationDome = 0;
  currentEffect = "leftRight";
}

public void alphaAnimate() {
  shouldAlphaAnimate = !shouldAlphaAnimate;
}

void currentAnimationRange(int newRange) {
  currentAnimationRange = newRange;
}

void ledsAlpha(int newAlpha) {
   for (Led l : leds) {
    l.setAlpha(newAlpha); 
  }
}

public void ledColorScheme(float newValue){
  for (Led l : leds) {
    l.setColorScheme(int(newValue));
  }
}

public void alphaFuzz(float newValue){
  float currentLedAlphaAmount = cp5.getController("ledsAlpha").getValue();
  print(currentLedAlphaAmount);
  for (Led l : leds) {
    l.setAlphaFuzz(int(newValue), currentLedAlphaAmount);
  }
}


// object animations

public void spotlight(){
  spotlightOn = !spotlightOn; 
}

public void swirl(){
  currentAnimationIndex = 0;
  currentAnimationMaxIndex = 150;
  currentAnimationIndexSteps = 1;
  currentAnimationRange = 7;
  currentAnimationDome = 0;
  stepNumber = 0;
  currentEffect = "swirl";
}

public void movingCircles(){
  if(movingCirclesScene != null){
    if(movingCirclesScene.circleCount() > 0){ 
      movingCirclesScene.deleteCircles();
    } else {
      movingCirclesScene.addCircles();
    }
  }
}

public void curveBallBang() {
  curveBallPct = 0.0;
  curveBallBeginX = curveBallX;
  curveBallBeginY = curveBallY;
  curveBallEndX = random(800) + 100;
  curveBallEndY = random(400) + 200;
  curveBallDistX = curveBallEndX - curveBallBeginX;
  curveBallDistY = curveBallEndY - curveBallBeginY;
  
circle.bang();
}



// see bpm tab for beatmatch related
