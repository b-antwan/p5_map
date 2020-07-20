class Road {
  float start_x;
  float start_y;
  float end_x;
  float end_y;
  float width_stroke;
  float width_size;
  float width;
  int r;
  int g;
  int b;
  
  public Road(float x_1, float y_1, float x_2, float y_2, float width) {
    this.start_x = x_1;
    this.start_y = y_1;

    this.end_x = x_2;
    this.end_y = y_2;
    this.width_stroke = random(width/3, width/1.5);
    this.width_size = random(width/4, width/3.5 );
    this.width = width;
    this.r = (int)random(255);
    this.g = (int)random(255);
    this.b = (int)random(255);
 

}  

  void translate(float x, float y){
   this.start_x += x;
   this.start_y += y;
   this.end_x += x;
   this.end_y+= y;
 }
 

  void show() {
    strokeWeight(width_stroke);
    stroke(0, 0, 0);
    //inside
    line(start_x, start_y, end_x+width, end_y+width);
    strokeWeight(width_size);
    stroke(col);
    line(start_x, start_y, end_x+width, end_y+width);
  }
}
