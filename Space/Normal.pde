class Normal {
  protected float x_pos, y_pos, angle;
  float speed;
  int xDirection = 1;
  int yDirection = 1;
  
  public Normal(float x, float y, float angle, float speed){
    x_pos=x;
    y_pos=y;
    this.angle = angle;
    this.speed = speed;
  }
    
  void move(){
    
    if (x_pos >= 300 || x_pos <= 0) {
      xDirection = xDirection*-1;
    }
    if (y_pos >= 250 || y_pos <= 0) {
      yDirection = yDirection*-1;
    }
    if (!mousePressed) {
      x_pos += Math.cos(radians(angle)*speed) *xDirection*2;
      y_pos += Math.sin(radians(angle)*speed)*yDirection*2;
    }else if(mousePressed) {
      x_pos = mouseX - (float)(Math.random()*5);
      y_pos = mouseY - (float)(Math.random()*5);
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
