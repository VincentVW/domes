int time = millis();
int animationSpeed = 500;
PImage img;

// led animations
boolean loopBack = true;
boolean reverse = false;
int currentAnimationIndex = 0;
int currentAnimationMaxIndex = 60;
int currentAnimationIndexSteps = 1;
int currentAnimationRange = 7;
int currentAnimationDome = 0;

int beatNumber = 0;
int stepNumber = 0;

String currentEffect = "insideOut";

MovingCirclesScene movingCirclesScene;

// stackable object animations
boolean spotlightOn = true;
boolean shouldAlphaAnimate = true;
boolean isBeatFrame = false;

void setup() {
  img = loadImage("mask.png");
  size(1536, 768);
  background(0);
  
  // prepare all animations
  setupGUI();
  setupSpotlight();
  
  movingCirclesScene = new MovingCirclesScene();
}

void draw() {
  background(0);
  strokeWeight(8);

  if (millis() > time + animationSpeed)
   {
     isBeatFrame = true;
     if(beatNumber == 15){
       beatNumber = 0;
     } else {
       beatNumber += 1;
     }
     
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
     stepNumber += 1;
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
            l.inActiveDomeIndex(stepNumber);
            break;
          default: 
            //l.inXRange(currentAnimationIndex, currentAnimationRange);
            break;
        }
        
        if(shouldAlphaAnimate){
          l.alphaAnimate();
        }
        
      }
      
   } else {
     isBeatFrame = false;
   }
  // redraw all leds every frame
  for (Led l : leds) {
    l.display();
    
  }

   //stackable object animations
  if(spotlightOn){
    drawSpotlight();
  }
  
  movingCirclesScene.display(); 
  
  image(img, -5, 9);
  
  drawGui();
}
