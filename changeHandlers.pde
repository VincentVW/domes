
void animationSpeed(int newSpeed) {
  animationSpeed = newSpeed;
}

void currentAnimationRange(int newRange) {
  currentAnimationRange = newRange;
}

public void insideOut() {
  currentEffect = "insideOut";
  currentAnimationIndex = 0;
  currentAnimationMaxIndex = 140;
  currentAnimationIndexSteps = 2;
  currentAnimationRange = 1;
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

public void allLightsOn(){
  currentEffect = "allLightsOn";
}

public void randomColors(){
  for (Led l : leds) {
    l.toggleRandomColor(); 
  }
}

public void spotlight(){
  spotlightOn = !spotlightOn; 
}

public void turnOff(){
  currentEffect = "turnOff"; 
}

public void movingCircles(){
  movingCircles = !movingCircles;
}
