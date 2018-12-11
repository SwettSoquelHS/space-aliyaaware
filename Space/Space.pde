//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] normal = new Normal[100];
//Oddball[] oddball = new Oddball[2];
//Jumbo[] jumbo = new Jumbo[1];

void setup() {
  size (600, 500);
  background (10);
  frameRate(10);
  for (int i= 0; i < normal.length; i++){
    normal[i] = new Normal((int)(Math.random()*600), (int)(Math.random()*600), 5, (int)(Math.random()*360));
  }
} //end of setup
 

void draw() {
  fill(255);
  //normal = new Normal[10];
  background(100);
  for (int i=0; i < normal.length; i++){
    normal[i].show();
    normal[i].move();
  }
  
} //end of draw
