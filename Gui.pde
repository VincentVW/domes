import controlP5.*;

ControlP5 cp5;
Slider abc;

void setupSlider(){
  cp5 = new ControlP5(this);
  
  // add a vertical slider
  cp5.addSlider("animationSpeed")
     .setPosition(1100,50)
     .setSize(350,20)
     .setRange(10,1000)
     .setValue(400)
     ;
  
  // reposition the Label for controller 'slider'
  cp5.getController("animationSpeed").getValueLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  cp5.getController("animationSpeed").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  
  // add a vertical slider
  cp5.addSlider("currentAnimationRange")
     .setPosition(1100,150)
     .setSize(350,20)
     .setRange(1,100)
     .setValue(4)
     ;
  
  // reposition the Label for controller 'slider'
  cp5.getController("currentAnimationRange").getValueLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  cp5.getController("currentAnimationRange").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
   
  cp5.addButton("insideOut")
     .setValue(0)
     .setPosition(1250,250)
     .setSize(100,19)
     ;
  
  cp5.addButton("leftRight")
     .setValue(0)
     .setPosition(1100,250)
     .setSize(100,19)
     ;
     
   cp5.addButton("allLightsOn")
   .setValue(0)
   .setPosition(1400,250)
   .setSize(100,19)
   ;
   
   cp5.addButton("randomColors")
   .setValue(0)
   .setPosition(1100,350)
   .setSize(100,19)
   ;
   
   
}

void drawGui(){
  strokeWeight(0);
  fill(100);
  rect(1024,0,width,height);
}

void animationSpeed(int newSpeed) {
  animationSpeed = newSpeed;
}

void currentAnimationRange(int newRange) {
  currentAnimationRange = newRange;
}

public void insideOut() {
  activeInsideOut();
}

public void leftRight() {
  activeLeftRight();
}

public void allLightsOn(){
  activeAllOn();
}

public void randomColors(){
  toggleRandomColor();
}
