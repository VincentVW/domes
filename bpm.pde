int bpmSum = 0;
int bpmEntries = 0;
int lastBpm = 0;
String bpmText = "-";

public void tapBPM(){
  int now = millis();
  if(lastBpm == 0){lastBpm = now; return; };
  int diff =  now - lastBpm;
  lastBpm = now;
  bpmSum = bpmSum + diff;
  bpmEntries++;

  float average = bpmSum/bpmEntries;
  float bpm = 60000 / average;
  
  // set the current animation speed based upon the ticks
  animationSpeed = int(average);
  time = millis();
  cp5.getController("animationSpeed").setValue(animationSpeed);
  
  beatNumber = 0;
  bpmText = str(bpm);
}

public void resetBpmCount(){
  bpmSum = 0;
  bpmEntries = 0;
  lastBpm = 0;
  bpmText = "tap to set";
}

public void startAnimation(){
  time = millis();
  beatNumber = 0;
}
