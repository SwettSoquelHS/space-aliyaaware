
class Normal {
  float x_pos, y_pos, speed, angle;
  float colorR, colorG, colorB;
  
  public Normal(int x, int y, int angle, int colorR, int colorG, int colorB){
    x_pos=x;
    y_pos=y;
    this.angle = angle;
    this.colorR = colorR;
    this.colorG = colorG;
    this.colorB = colorB;
  }
    
  void move(){
    x_pos += Math.cos(angle*  speed); 
    y_pos += Math.sin(angle*  speed);
  }
  
  void show(){
    pushMatrix();
    translate(x_pos, y_pos);
    for (int i = 0; i < normal.length; i++) {
      int x = (int)(2 * width * Math.random());
      int y = (int)(2 * height * Math.random());
      int a = 20;
      int colorR = (int)(Math.random() * 255);
      int colorG = (int)(Math.random() * 255);
      int colorB = (int)(Math.random() * 255);
      normal[i] = new Normal(x, y, a, colorR, colorG, colorB);
    }
    ellipse(x_pos, y_pos, angle, angle);
    popMatrix();
    
  }
}
