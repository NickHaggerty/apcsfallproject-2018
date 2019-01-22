// Inspired By: https://twitter.com/beesandbombs/status/1019924265540431872

// Globals
// *************************************************************************************************
int[] $gridWidthArray = {10,20,50,100};
int $gridWidthArrayIndex = 1;
int $gridWidth = $gridWidthArray[$gridWidthArrayIndex]; //10, 20, 30, 50 for(600,600) canvas size
boolean $grid = true;
boolean $debug = false;
boolean $anime = true;
boolean $animating = false;
int $fRate = 40; // 40 seems to be smoothest for animation
int $strokeWeight = 3;
int $borderWidth = 100;
int $cols, $rows;
int numbah;
Director director; // create a Director object to handle interactions between elements

// Helper Methods
// *************************************************************************************************
void calculateProperties() {
  $cols = (width-2*$borderWidth)/$gridWidth;
  $rows = (height-2*$borderWidth)/$gridWidth;
}

void prepareAndCreateDirector(int newGridWidthArrayIndex) {
  background(255);
  $gridWidthArrayIndex = newGridWidthArrayIndex;
  $gridWidth = $gridWidthArray[$gridWidthArrayIndex];
  println("gridWidth: " + $gridWidth);
  println("gridWidthArrayIndex: " + $gridWidthArrayIndex);
  
  if ($grid) { drawGrid($gridWidth); }; // show grid
  
  calculateProperties();
  director = new Director(); 
}

// Setup
// *************************************************************************************************
void setup() {
  size(800, 800);
  background(255);
  smooth(8);
  rectMode(CORNER);
  stroke(0);
  strokeWeight($strokeWeight);
  frameRate($fRate);
  smooth(8);

  calculateProperties();
  
  if ($grid) { drawGrid($gridWidth); };

  director = new Director(); 

}

// Test segments to show how $animating works

// used in demo animation



// Draw
// *************************************************************************************************
void draw() {
  if($animating == true && $anime){
    director.Animate();
  }
  
  
  
  
}
