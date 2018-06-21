int time = millis();
int animationSpeed = 400;

void setup() {
  size(1536, 768);
  initLeds(leds);
  background(0);
  setupSlider();
}

boolean loopBack = true;
boolean reverse = false;

int currentAnimationIndex = 0;
int currentAnimationMaxIndex = 60;
int currentAnimationIndexSteps = 1;
int currentAnimationRange = 7;
int currentAnimationDome = 0;
String currentEffect = "insideOut";

void activeInsideOut() {
  currentEffect = "insideOut";
  currentAnimationIndex = 0;
  currentAnimationMaxIndex = 140;
  currentAnimationIndexSteps = 2;
  currentAnimationRange = 1;
  currentAnimationDome = 0;
}

void activeLeftRight() {
  currentAnimationIndex = 0;
  currentAnimationMaxIndex = 60;
  currentAnimationIndexSteps = 1;
  currentAnimationRange = 7;
  currentAnimationDome = 0;
  currentEffect = "leftRight";
}

void activeAllOn() {
  currentEffect = "allLightsOn";  
}

void toggleRandomColor(){
  for (Led l : leds) {
    l.toggleRandomColor(); 
  }
}

void draw() {
  strokeWeight(8);

  if (millis() > time + animationSpeed)
   {
     if(reverse == true){
       currentAnimationIndex -= currentAnimationIndexSteps;
       
       if(currentAnimationIndex < 0){ 
         reverse = false;
       }
     } else {
       
       currentAnimationIndex += currentAnimationIndexSteps;
       
       if(currentAnimationIndex > currentAnimationMaxIndex){ 
         if(loopBack == true){
           reverse = true;
         } else {
           currentAnimationIndex = 0;
         }
       }
     }
     
     time = millis();  
   }
   
  for (Led l : leds) {
    switch (currentEffect) {
      case "insideOut":  
        l.inDistanceRange(currentAnimationDome, currentAnimationIndex, currentAnimationRange);
        break;
      case "leftRight":
        l.inXRange(currentAnimationIndex, currentAnimationRange);
        break;
      case "allLightsOn":
        l.turnOn();
        break;
      default: 
        l.inXRange(currentAnimationIndex, currentAnimationRange);
        break;
    }
    l.display();
  }
  
  drawGui();
}
