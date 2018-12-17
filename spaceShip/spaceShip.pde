
float x_pos, y_pos;
float speed, direction;

boolean ROTATE_LEFT;
boolean ROTATE_RIGHT;
boolean MOVE_FORWARD;
boolean MOVE_DOWN;
someAstroids[] a = new someAstroids[500];
Ship[] ship = new Ship[1];
void setup(){
  size(1000,800);
  x_pos = width/23.0;
  y_pos= height/3.0;
  for (int i= 0; i < ship.length; i++){
    ship[i] = new Ship();
  }
  for (int i= 0; i < a.length; i++){
    a[i] = new someAstroids();
  }
  speed = 3;
  direction =-1;
  //MOVE_FORWARD = false;
}

void draw(){
  background(0);
  
  for (int i=0; i < ship.length; i++){
    ship[i].show();
    ship[i].move();
    ship[i].turn();
    ship[i].update();
  }
  //for (int i=0; i < ship.length; i++){
  //  a[i].show();
  //  a[i].move();
  //}

  if(keyPressed){
    speed = 5;
  }else{
    speed =0;    
  }
  //if (x_pos >= 600 || x_pos <= 0) {
  //    direction = direction*-1;
  //  }
      
}

void keyPressed(){
  if (key == CODED){
    if (keyCode == LEFT){
      ROTATE_LEFT = true;
    } else if(keyCode == RIGHT){
      ROTATE_RIGHT = true;
    }else if (keyCode==UP){
      MOVE_FORWARD=true;
    }else if (keyCode==DOWN){
      MOVE_DOWN=true;
    }
  }
}

void keyReleased(){
  if (key == CODED){
    if (keyCode == LEFT){
      ROTATE_LEFT = false;
    } else if(keyCode == RIGHT){
      ROTATE_RIGHT = false;
    }else if (keyCode ==UP){
      MOVE_FORWARD = false;
    }else if (keyCode==DOWN){
      MOVE_DOWN=false;
    }
  }
}
