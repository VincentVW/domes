class Led {
  color c = color(255,255,255);
  float xPos;
  float yPos;
  int xIndex;
  int yIndex;
  int ledIndex;
  int dome1Index;
  int dome;
  int distanceGroup;
  boolean show;
  int alpha = 255;
  
  // The Constructor is defined with arguments.
  Led(int tempLedIndex, int tempDome1Index, float tempXpos, float tempYpos, int tempXIndex, int tempYIndex, int tempDome, int tempDistanceGroup) {
    show = false;
    ledIndex = tempLedIndex;
    dome1Index = tempDome1Index;
    xPos = tempXpos;
    yPos = tempYpos;
    xIndex = tempXIndex;
    yIndex = tempYIndex;
    dome = tempDome;
    distanceGroup = tempDistanceGroup;
  }
  
  void turnOn(){
    show = true;
  }
  
  void turnOff(){
    show = false;
  }
  
  void setAlpha(int newAlpha){
    alpha = newAlpha;
  }
  
  void setColorScheme(int scheme){
    
    switch (scheme) {
        case 0:  
          c = color(255,255,255);
          break;
        case 1:
          c = randomArtDecoColor();
          break;
        case 2:
          c = color(random(255), random(255), random(255));
          break;
        default: 
          c = color(255,255,255);
          break;
      }
  }
  
  public int calcFuzz(float deviation, float currentAlpha){
     if(random(1) > 0.5){
       if((currentAlpha + deviation) > 255){
         return 255;
       } else{
         return int(currentAlpha + deviation);
       }
     }
     if((currentAlpha - deviation) < 0){
       return 0;
     } else{
       return int(currentAlpha - deviation);
     }
  }
  
  void alphaAnimate(){
    alpha = calcFuzz(30, alpha);
  }
  
  void setAlphaFuzz(int amount, float currentAlpha){
    
    switch (amount) {
        case 0:  
          // no fuzz
          alpha = int(currentAlpha);
          break;
        case 1:
          // light fuzz
          alpha = calcFuzz(random(50), currentAlpha);
          break;
        case 2:
          // high fuzz
          alpha = calcFuzz(random(150), currentAlpha);
          break;
        default: 
          alpha = int(currentAlpha);
          break;
      }
  }
  
  void inXRange(int activeXIndex, int lines) {
    int diff = activeXIndex - xIndex;
    if(diff > 0 && diff < lines){
      show = true;
    } else {
      show = false;
    }
  }
  
  void inDistanceRange(int activeDome, int activeGroup, int lines) {
    int diff = activeGroup - distanceGroup;
    if(diff > 0 && diff < lines && (activeDome == dome || activeDome == 0)){
      show = true;
    } else {
      show = false;
    }
  }
  
  void inActiveDomeIndex(int index){
    if(dome1Index <= index){
      show = true;
    }
  }
  
  void changeColor(color newColor){
    c = newColor;
  }
      
  void display() {
    if(show == true) {
      stroke(c, alpha);
      strokeWeight(8);
      point(xPos, yPos);
      
      //textSize(14);
      //fill(255, 0, 0);
      //text(ledIndex, xPos+3, yPos); 
    } 
    
  }
}
