setup = function() {
    size(400, 400);

};
var answer = 1; 

draw = function() {
  background(100, 100, 100);
  fill(0, 0, 0);
  ellipse(200, 200, 375, 375);
  fill(60, 0, 255);
  triangle(200, 104, 280, 280, 120, 280);
  fill(255, 255, 255);

  //first answer 
  if (answer == 1) {
    text("YES", 200, 220); 
  } else if (answer == 2) {
    text("NO", 200, 220);
  } else if (answer == 3) {
    text("MAYBE", 200, 220);
  } else if (answer == 4) {
    text("LATER", 200, 220);
  } else {
    text("ASK AGAIN", 200, 220);
  }
};

// mouseClicked: Triggers the randomizer
mouseClicked = function() {
  answer = round(random(1, 5)); // Picking a random number between 1 and 5
};



