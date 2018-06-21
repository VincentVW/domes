//String newLine = System.getProperty("line.separator");
      
class Led {
  color c;
  float xPos;
  float yPos;
  int xIndex;
  int yIndex;
  int dome;
  int distanceGroup;
  boolean show;
  boolean randomColor = true;

  // The Constructor is defined with arguments.
  Led(int newColor, float tempXpos, float tempYpos, int tempXIndex, int tempYIndex, int tempDome, int tempDistanceGroup) {
    show = true;
    c = newColor;
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
  
  void toggleRandomColor(){
    randomColor = !randomColor;
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
  
  void changeColor(color newColor){
    c = newColor;
  }
      
  void display() {
    if(show == true && randomColor == true){
      stroke( random(255), random(255), random(255)); 
    }else if(show == true) {
      stroke(c);
    } else {
      stroke(0,0,0);
    }
      strokeWeight(8);
      point(xPos, yPos);
  }
}
