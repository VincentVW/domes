import controlP5.*;

ControlP5 cp5;
Slider abc;
DropdownList d1, d2;
String[] colorSchemes = new String[]{"white","random color","art deco"};

void setupGUI(){
  cp5 = new ControlP5(this);
  
  // add a vertical slider
  cp5.addSlider("animationSpeed")
     .setPosition(1100,50)
     .setSize(400,20)
     .setRange(10,1000)
     .setValue(500)
     ;
  
  // reposition the Label for controller 'slider'
  cp5.getController("animationSpeed").getValueLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  cp5.getController("animationSpeed").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  
  // add a vertical slider
  cp5.addSlider("currentAnimationRange")
     .setPosition(1100,260)
     .setSize(400,20)
     .setRange(1,100)
     .setValue(4)
     ;
  
  // reposition the Label for controller 'slider'
  cp5.getController("currentAnimationRange").getValueLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  cp5.getController("currentAnimationRange").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  
  
  
  // LED COLOR RELATED
  d1 = cp5.addDropdownList("ledColorScheme")
          .setSize(90,100)
          .setPosition(1100, 310)
          ;   
  d1.addItems(colorSchemes);
  d1.close();
  
  d2 = cp5.addDropdownList("alphaFuzz")
          .setLabel("Alpha Fuzz")
          .setSize(90,100)
          .setPosition(1200, 310)
          ;
  d2.addItem("off", 0);
  d2.addItem("slightly fuzzy", 1);
  d2.addItem("very fuzzy", 2);
  d2.close();
  
  
  // add a horizontal slider
  cp5.addSlider("ledsAlpha")
     .setPosition(1300,310)
     .setSize(200,20)
     .setRange(1,255)
     .setValue(255)
     ;
  
  // reposition the Label for controller 'slider'
  cp5.getController("ledsAlpha").getValueLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  cp5.getController("ledsAlpha").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
   
   
  cp5.addToggle("insideOut")
     .setLabel("Inside out")
     .setValue(0)
     .setPosition(1250,200)
     .setSize(100,19)
     ;
  
  cp5.addToggle("leftRight")
     .setLabel("Left to right")
     .setValue(0)
     .setPosition(1100,200)
     .setSize(100,19)
     ;
   
   cp5.addToggle("alphaAnimate")
     .setLabel("Animate alpha")
     .setValue(0)
     .setPosition(1400,200)
     .setSize(100,19)
     ;
   
   
   cp5.addButton("allOn")
   .setLabel("All leds on")
   .setValue(0)
   .setPosition(1100,150)
   .setSize(100,19)
   ;
  
   cp5.addButton("turnOff")
   .setLabel("All leds off")
   .setValue(0)
   .setPosition(1250,150)
   .setSize(100,19)
   ;
   
   
   cp5.addToggle("movingCircles")
   .setValue(0)
   .setPosition(1250, 430)
   .setSize(100,19)
   ;
   
   cp5.addToggle("spotlight")
   .setValue(0)
   .setPosition(1100,430)
   .setSize(100,19)
   ;
   
   
    
   cp5.addButton("tapBPM")
   .setValue(0)
   .setPosition(1100,700)
   .setSize(100,19)
   ;
   
   cp5.addButton("resetBpmCount")
   .setValue(0)
   .setPosition(1220,700)
   .setSize(100,19)
   ;
   
   cp5.addButton("startAnimation")
   .setValue(0)
   .setPosition(1400,700)
   .setSize(100,19)
   ;
}

void drawGui(){
  strokeWeight(0);
  fill(40);
  rect(1024,0,width,height);
  
  // Main animation
  textSize(14);
  fill(255);
  text("Overal animation speed (ms per beat)", 1100, 30); 
  
  
  // Main animation
  textSize(14);
  fill(255);
  text("Main led animation (select one)", 1100, 120); 
  
  
  // Stackable object animations
  textSize(14);
  fill(255);
  text("Stackable object animations (toggles)", 1100, 400); 
  
  
  // One shots
  textSize(14);
  fill(255);
  text("One shots (bangs)", 1100, 550); 
  
  
  
  
  // BPM related
  
  textSize(14);
  fill(255);
  text("BPM", 1100, 680); 
  
  
  
  textSize(14);
  fill(255);
  text(bpmText, 1200, 680); 
  
  
  for(int i = 0; i < 16; i++){
    if(beatNumber == i){
      fill(255,00,0);
    } else {
      fill(60,60,60);
    }
    ellipse(1110 + (i*22), 740, 20, 20);
  }
  

}
