public class Ship{
  void update(){
    rotate(radians(direction));
    triangle(-20,-20,-20,20,70,0);}
  
  void turn(){
    if(ROTATE_LEFT)
      direction -=5.0;
    if (ROTATE_RIGHT)
      direction +=5.0;
  }
  void move(){
    if (MOVE_FORWARD ==true){
      if(speed<3){
        speed+=0.5;
      }
    }else{
      if (speed>0){
        speed-=0.5;
      }
      if(speed<0)
        speed =0;
    }
    if (MOVE_DOWN){
      direction+=3;
    }else{
      if (speed>0){
        speed-=0.5;
      }
      if(speed<0)
        speed =0;
    }
    if (y_pos >= 800 || y_pos <= 0) {
      direction = direction*-1;      
    }
    x_pos= x_pos+speed*(float)Math.cos(radians(direction));
    y_pos= y_pos+speed*(float)Math.sin(radians(direction));
  }
  void show(){
    fill(40,40,50);
    rect(0,700,1000,500);
    pushMatrix();
    fill(255);
    translate(x_pos, y_pos);
    rotate(radians(direction));
    //ellipse(0,10,20,20);
    triangle(-20,-20,-20,20,70,0);
    triangle(-20,-30,-10,5, 35,0);
    popMatrix();
  }
}
