import controlP5.*;


import java.util.HashMap;
import java.util.Map;
import javax.sound.midi.Receiver;
import javax.sound.midi.MidiMessage;

Map<String, String> midimapper = new HashMap<String, String>();



ControlP5 cp5;
Slider abc;
DropdownList d1, d2;
String[] colorSchemes = new String[]{"white","random color","art deco"};

void setupGUI(){
  cp5 = new ControlP5(this);


  // add a vertical slider
  cp5.addSlider("currentAnimationRange")
     .setPosition(1100,160)
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
          .setPosition(1100, 200)
          ;
  d1.addItems(colorSchemes);
  d1.close();

  d2 = cp5.addDropdownList("alphaFuzz")
          .setLabel("Alpha Fuzz")
          .setSize(90,100)
          .setPosition(1200, 200)
          ;

  d2.addItem("off", 0);
  d2.addItem("slightly fuzzy", 1);
  d2.addItem("very fuzzy", 2);
  d2.close();

  // add a horizontal slider
  cp5.addSlider("ledsAlpha")
     .setPosition(1300,200)
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
     .setPosition(1250,80)
     .setSize(100,19)
     ;

  cp5.addToggle("leftRight")
     .setLabel("Left to right")
     .setValue(0)
     .setPosition(1100,80)
     .setSize(100,19)
     ;

   cp5.addToggle("alphaAnimate")
     .setLabel("Animate alpha")
     .setValue(0)
     .setPosition(1400,80)
     .setSize(100,19)
     ;

   cp5.addButton("allOn")
   .setLabel("All leds on")
   .setValue(0)
   .setPosition(1100,40)
   .setSize(100,19)
   ;

   cp5.addButton("turnOff")
   .setLabel("All leds off")
   .setValue(0)
   .setPosition(1250,40)
   .setSize(100,19)
   ;

   cp5.addToggle("swirl")
   .setLabel("Swirl test")
   .setValue(0)
   .setPosition(1400,200)
   .setSize(100,19)
   ;

   cp5.addToggle("movingCircles")
   .setValue(0)
   .setPosition(1250, 300)
   .setSize(100,19)
   ;

   cp5.addToggle("spotlight")
   .setValue(0)
   .setPosition(1100,300)
   .setSize(100,19)
   ;




   // add a vertical slider
    cp5.addSlider("animationSpeed")
       .setPosition(1100,630)
       .setSize(400,20)
       .setRange(10,1000)
       .setValue(500)
       ;

    // reposition the Label for controller 'slider'
    cp5.getController("animationSpeed").getValueLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
    cp5.getController("animationSpeed").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);

   cp5.addButton("tapBPM")
   .setValue(0)
   .setPosition(1100,700)
   .setSize(100,19)
   ;

   cp5.addButton("resetBpmCount")
   .setValue(0)
   .setPosition(1400,700)
   .setSize(100,19)
   ;

   cp5.addButton("startAnimation")
   .setValue(0)
   .setPosition(1220,700)
   .setSize(100,19)
   ;

   cp5.addButton("scrubBack")
   .setLabel("Scrub < TODO")
   .setValue(0)
   .setPosition(1100,674)
   .setSize(100,19)
   ;

   cp5.addButton("scrubForward")
   .setLabel("Scrub > TODO")
   .setValue(0)
   .setPosition(1220,674)
   .setSize(100,19)
   ;

   cp5.addButton("resetScrub")
   .setLabel("Reset scrub TODO")
   .setValue(0)
   .setPosition(1400,674)
   .setSize(100,19)
   ;

  final String device = "Device [hw:2,0,0]";
  // record button
   midimapper.put( ref( device, 38 ), "tapBPM" );
   midimapper.put( ref( device, 40 ), "resetBpmCount" );
   midimapper.put( ref( device, 39 ), "startAnimation" );
  midimapper.put( ref( device, 15 ), "scrubBack" );
  midimapper.put( ref( device, 16 ), "scrubForward" );
  midimapper.put( ref( device, 17 ), "resetScrub" );
  //midimapper.put( ref( device, 64 ), "a-6" );

  //midimapper.put( ref( device, 16 ), "b-1" );
  //midimapper.put( ref( device, 17 ), "b-2" );
  //midimapper.put( ref( device, 18 ), "b-3" );

  boolean DEBUG = true;

  if (DEBUG) {
    new MidiSimple( device );
  }
  else {
    new MidiSimple( device , new Receiver() {

      @Override public void send( MidiMessage msg, long timeStamp ) {

        byte[] b = msg.getMessage();

        if ( b[ 0 ] != -48 ) {

          Object index = ( midimapper.get( ref( device , b[ 1 ] ) ) );

          if ( index != null ) {

            Controller c = cp5.getController(index.toString());
            if (c instanceof Slider ) {
              float min = c.getMin();
              float max = c.getMax();
              c.setValue(map(b[ 2 ], 0, 127, min, max) );
            }  else if ( c instanceof Button ) {
              if ( b[ 2 ] > 0 ) {
                c.setValue( c.getValue( ) );
                c.setColorBackground( 0xff08a2cf );
              } else {
                c.setColorBackground( 0xff003652 );
              }
            } else if ( c instanceof Bang ) {
              if ( b[ 2 ] > 0 ) {
                c.setValue( c.getValue( ) );
                c.setColorForeground( 0xff08a2cf );
              } else {
                c.setColorForeground( 0xff00698c );
              }
            } else if ( c instanceof Toggle ) {
              if ( b[ 2 ] > 0 ) {
                ( ( Toggle ) c ).toggle( );
              }
            }
          }
        }
      }

      @Override public void close( ) {
      }
    }
    );
  }
}


String ref(String theDevice, int theIndex) {
  return theDevice+"-"+theIndex;
}

void drawGui(){
  strokeWeight(0);
  fill(40);
  rect(1024,0,width,height);

  // Main animation
  textSize(14);
  fill(255);
  text("Main led animation (select one)", 1100, 24);

  // Stackable object animations
  textSize(14);
  fill(255);
  text("Stackable object animations (toggles)", 1100, 280);

  // One shots
  textSize(14);
  fill(255);
  text("One shots (bangs)", 1100, 400);

  // BPM related
  textSize(14);
  fill(255);
  text("Tempo", 1100, 614);

  textSize(11);
  fill(255);
  text(bpmText, 1250, 664);

  int extraMargin = 0;
  for(int i = 0; i < 16; i++){
    if(beatNumber == i){
      fill(255,00,0);
    } else {
      fill(60,60,60);
    }

    if(i%4 == 0){
      extraMargin += 7;
    }
    ellipse(1102 + (i*24) + extraMargin, 740, 20, 20);
  }
}
