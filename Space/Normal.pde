
class Normal {
  protected float x_pos, y_pos, speed, angle;
  int xDirection = 1;
  int yDirection = 1;
  
  public Normal(float x, float y, float angle, float speed){
    x_pos=x;
    y_pos=y;
    this.angle = angle;
    this.speed = speed;
  }
    
  void move(){
    if (x_pos > 800 || x_pos < 0) {
      xDirection = xDirection-180;
    }
    if (y_pos > 600 || y_pos < 0) {
      yDirection = yDirection-180;
    }
    if (!mousePressed) {
      x_pos += Math.cos(radians(angle))*speed +10;
      y_pos += Math.sin(radians(angle))*speed+10;
    }else {
      x_pos = mouseX - (float)Math.random()*20;
      y_pos = mouseY - (float)Math.random()*20;
      
    }
  }
  
  void show(){
    int colorR = (int)(Math.random() * 255);
    int colorG = (int)(Math.random() * 255);
    int colorB = (int)(Math.random() * 255);
    fill(colorR, colorG, colorB);
    noStroke();
    pushMatrix();
    translate(x_pos, y_pos);
    ellipse(x_pos, y_pos, 10, 10);
    popMatrix();
    
  }
}
