
  
//import processing.sound.*;

//FFT fft;
//AudioIn in;
//int bands = 512;
//float[] spectrum = new float[bands];

//void setup() {
//  size(512, 360);
//  background(255);
    
//  // Create an Input stream which is routed into the Amplitude analyzer
//  fft = new FFT(this, bands);
//  in = new AudioIn(this, 0);
  
//  // start the Audio Input
//  in.start();
  
//  // patch the AudioIn
//  fft.input(in);
//}      

//void draw() { 
//  background(255);
//  fft.analyze(spectrum);

//  for(int i = 0; i < bands; i++){
//  // The result of the FFT is normalized
//  // draw the line for frequency band i scaling it up by 5 to get more amplitude.
//  line( i, height, i, height - spectrum[i]*height*5 );
//  } 
//}


//var colorA, colorB, sound, numBands = 512, fft;

//function preload() {
//  sound = loadSound('reggie_watts_conan.mp3');
//}

//function setup() {
//  createCanvas(500, 500);
//  fft = new p5.FFT(0.8, numBands);  
//  colorA = color(0, 0, 255);
//  colorB = color(255, 0, 0);
//  colorMode(HSB, 360, 100, 100, 100);
//  sound.play(0);
//}

//function draw() {
//  background(0);
//  stroke(0);
  
//  var spectrum = fft.analyze();
//  for (var i=0; i<spectrum.length; i++) {
//    var amt = map(i, 0, spectrum.length, 0, 1);
//    var color = lerpColor(colorA, colorB, amt);
//    var diam = map(spectrum[i], 0, 255, 0, 500);
//    noFill();
//    stroke(color);
//    ellipseMode(CENTER);
//    ellipse(width/2, height/2, diam, diam);
//  }

//}
