int time = millis();
int animationSpeed = 400;
PImage img;

// led animations
boolean loopBack = true;
boolean reverse = false;
int currentAnimationIndex = 0;
int currentAnimationMaxIndex = 60;
int currentAnimationIndexSteps = 1;
int currentAnimationRange = 7;
int currentAnimationDome = 0;
String currentEffect = "insideOut";

// stackable object animations
boolean spotlightOn = false;
boolean movingCircles = false;

void setup() {
  img = loadImage("mask.png");
  size(1536, 768);
  initLeds(leds);
  background(0);
  
  // prepare all animations
  setupSlider();
  setupSpotlight();
  setupMovingCircles();
}

void draw() {
  background(0);
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
          case "turnOff":
            l.turnOff();
            break;
          default: 
            //l.inXRange(currentAnimationIndex, currentAnimationRange);
            break;
        }
      }
   }
  // redraw all leds every frame
  for (Led l : leds) {
    l.display();
  }
    
  
  // stackable object animations
  if(spotlightOn){
    drawSpotlight();
  }
  if(movingCircles){
    drawMovingCircles();
  }
  
  image(img, -5, 9);
  
  drawGui();
  
}
