var forestImage = loadImage("https://t4.ftcdn.net/jpg/02/55/17/43/360_F_255174366_ojDuATz84e5h7lIlxh2moUJa9Kpd5wKk.jpg");
var caveSceneImage = loadImage("https://media.istockphoto.com/id/912291130/photo/couple-standing-underneath-glow-worm-sky-in-waipu-cave-new-zealand.jpg?s=612x612&w=0&k=20&c=3qWyOIcN4WRLU1USn9GjbQk1l9sIdlmhSort6_G3xbY=");

var sceneImage = caveSceneImage;
var sceneText = "Where do you want to go? [f for forest, c for cave]";

setup = function() {
    size(600, 400);
};

draw = function() {
   // Draw the current scene background
   image(sceneImage, 0, 0, 600, 400);
    
   // Draw the text box at the bottom
   fill(0, 0, 0);
   rect(0, 350, 600, 100);
      
   fill(255, 255, 255);
   textSize(20);
   text(sceneText, 10, 375);

   // Keyboard interaction to change scenes
   if (keyPressed) {
     if (key == 'f') {
       sceneImage = forestImage;   
       sceneText = "In the Forest! [Press s to restart]";
     } 
     if (key == 'c') {
       sceneImage = caveSceneImage;
       sceneText = "In the Cave! [Press f for forest]";
     }
     if (key == 's') {
      sceneImage = caveSceneImage;
      sceneText = "Restarted. [f for forest, c for cave]";
    } 
   }
};


