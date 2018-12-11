class Oddball extends Normal{
  public Oddball(float x_pos, float y_pos, float angle, float speed){
    super(x_pos, y_pos, angle, speed);
  }
  
  void move(){
    if(x_pos >= 800 || x_pos <= 0){
      x_pos = x_pos * -1;
    }
    if(y_pos >= 600 || y_pos <= 0){
      y_pos = y_pos * -1;
    }
    
    if(!mousePressed){
       x_pos = x_pos + ((float)(Math.cos(angle) * (speed / 2)) * x_pos) + (((float)(Math.random() * 10) - 5));
       y_pos = y_pos + ((float)(Math.sin(angle) * (speed / 2)) * y_pos) + (((float)(Math.random() * 10) - 5));
    }else if(mousePressed){
      x_pos = mouseX - (int)(((Math.random()) * 20) + 10);
      y_pos = mouseY - (int)(((Math.random()) * 20) + 10);
    }
  }
  
  void show(){
    pushMatrix();
    translate((float)x_pos, (float)y_pos);
    fill(10, 10, 10);
    triangle(-30.0, 0, 30.0, 0, 0, 25);
    popMatrix();
  }
}
