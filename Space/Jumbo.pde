class Jumbo extends Normal{
  public Jumbo(float x_pos, float y_pos, float angle, float speed){
    super(x_pos,y_pos,speed,angle);
  }
  
  void show(){
    pushMatrix();
    translate((float)x_pos, (float)y_pos);
    ellipse(0, 0, 100, -100);
    popMatrix();
  }
}
