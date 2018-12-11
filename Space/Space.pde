//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] normal = new Normal[100];
//Normal n1= new Normal(width/2, height/2, 3, 3.4, 100, 34, 34);

void setup() {
  size (600, 500);
  background (10);
  frameRate(1);
  for (int i= 0; i < normal.length; i++){
    normal[i] = new Normal((int)(Math.random()*600), (int)(Math.random()*600), 5, (int)(Math.random()*360));
  }
  
  
	//your code here
} //end of setup
 

void draw() {
  fill(255);
  //normal = new Normal[10];
  for (int i=0; i < normal.length; i++){
    normal[i].show();
  }
  
  for (int i=0; i<normal.length; i++){
    normal[i].move();
  }
	//your code here
} //end of draw
