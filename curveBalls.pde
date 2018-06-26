float curveBallBeginX = 200;  // Initial x-coordinate
float curveBallBeginY = 200;  // Initial y-coordinate
float curveBallEndX = 200;   // Final x-coordinate
float curveBallEndY = 200;   // Final y-coordinate
float curveBallDistX;          // X-axis distance to move
float curveBallDistY;          // Y-axis distance to move
float curveBallExponent = 8;   // Determines the curve
float curveBallX = 0.0;        // Current x-coordinate
float curveBallY = 0.0;        // Current y-coordinate
float curveBallStep = 0.01;    // Size of each step along the path
float curveBallPct = 0.0;      // Percentage traveled (0.0 to 1.0)

void curveBallDraw() {
  if((curveBallX - curveBallEndX) > 1 || (curveBallX - curveBallEndX) < - 1){
    curveBallPct += curveBallStep;
    if (curveBallPct < 1.0) {
      curveBallX = curveBallBeginX + (curveBallPct * curveBallDistX);
      curveBallY = curveBallBeginY + (pow(curveBallPct, curveBallExponent) * curveBallDistY);
    }
    fill(255);
    noStroke();
    ellipse(curveBallX, curveBallY, 100, 100);
  }
}
