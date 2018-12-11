
class Normal {
  protected float x_pos, y_pos, speed, angle;
  protected float colorR, colorG, colorB;
  
  public Normal(float x, float y, float angle, float speed){
    x_pos=x;
    y_pos=y;
    this.angle = angle;
    this.speed = speed;
    //this.colorR = colorR;
    //this.colorG = colorG;
    //this.colorB = colorB;
  }
    
  void move(){
    if (x_pos > 600 || x_pos < 0) {
      angle = angle-180;
    }
    if (y_pos > 500 || y_pos < 0) {
      angle = angle-180;
    }
    if (!mousePressed) {
      x_pos += Math.cos(radians(angle))*speed;
      y_pos += Math.sin(radians(angle))*speed;
    }else {
      //x_pos = mouseX - Math.random()*20;
     // y_pos = mouseY - Math.random()*20;
      colorR = (int)(Math.random()*255);
      colorG = (int)(Math.random()*255);
      colorB = (int)(Math.random()*255);
    }
  }
  
  void show(){
    int colorR = (int)(Math.random() * 255);
    int colorG = (int)(Math.random() * 255);
    int colorB = (int)(Math.random() * 255);
    fill(colorR, colorG, colorB);
    pushMatrix();
    translate(x_pos, y_pos);
    
    ellipse(x_pos, y_pos, angle, angle);
    popMatrix();
    
  }
}
