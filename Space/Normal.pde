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
    fill(#42F2A7);
    ellipse(100,100,100,100);
    popMatrix();
    
  }
}
