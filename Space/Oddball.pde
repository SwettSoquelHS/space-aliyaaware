class Oddball extends Normal{
  public Oddball(float x_pos, float y_pos, float angle, float speed){
    super(x_pos, y_pos, angle, speed);
  }
  
  void move(){
    if (x_pos >= 300 || x_pos <= 0) {
      xDirection = xDirection*-1;
    }
    if (y_pos >= 250 || y_pos <= 0) {
      yDirection = yDirection*-1;
    }
    if (!mousePressed) {
      x_pos += Math.cos(radians(angle)*speed) *xDirection*5;
      y_pos += Math.sin(radians(angle)*speed)*yDirection*5;
    }else if(mousePressed) {
      x_pos = mouseX - (float)Math.random()*3;
      y_pos = mouseY - (float)Math.random()*3;
    }

  }
  
  void show(){
    pushMatrix();
    translate((float)x_pos, (float)y_pos);
    fill(255);
    rect(30, 10, 30.0, 10, 25);
    popMatrix();
  }
}
