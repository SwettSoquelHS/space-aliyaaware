public class someAstroids extends Ship{
  void move(){
    x_pos = x_pos+(int)Math.random()*3;
    y_pos = x_pos+(int)Math.random()*3;
  }
  void show(){
    pushMatrix();
    translate(x_pos, y_pos);
    ellipse(10,10,10,10);
    popMatrix();
  
  }
}
