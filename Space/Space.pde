//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] normal = new Normal[1000];
Oddball[] oddball = new Oddball[5];
Jumbo[] jumbo = new Jumbo[1];
float speed;
void setup() {
  size (600, 500);
  background (10);
  frameRate(10);
  for (int i= 0; i < normal.length; i++){
    normal[i] = new Normal((int)(Math.random()*600), (int)(Math.random()*600), 5, (int)(Math.random()*360));
  }
   for (int i = 0; i < oddball.length; i++){
    oddball[i] = new Oddball((int)(Math.random() * 800), (int)(Math.random() * 800), (int)(Math.random() * 360), (int)((Math.random() - 2) * 4));
  }
  for (int i = 0; i < jumbo.length; i++){
    jumbo[i] = new Jumbo((int)(Math.random() * 800), (int)(Math.random() * 800), (int)(Math.random() * 360), (int)((Math.random() - 2) * 4));
  }
} //end of setup
 

void draw() {

  //normal = new Normal[10];
  background(290);
  for (int i=0; i < normal.length; i++){
    normal[i].show();
    normal[i].move();
  }
   for(int i = 0; i < oddball.length; i++){
    oddball[i].show();
    oddball[i].move();
  }
  for(int i = 0; i < jumbo.length; i++){
    jumbo[i].show();
    jumbo[i].move();
  }
  
} //end of draw
