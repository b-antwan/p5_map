class Road {
  float start_x;
  float start_y;
  float end_x;
  float end_y;
  float width_start;
  float width_end;
  float width;

  public Road(float x_1, float y_1, float x_2, float y_2, float width) {
    this.start_x = x_1;
    this.start_y = y_1;

    this.end_x = x_2;
    this.end_y = y_2;

    this.width_start = random(width/3, width/1.5);
    this.width_end = random(width/3, width/1.5);

    this.width = width;
  }  

  void translate(float x, float y){
   this.start_x += x;
   this.start_y += y;
   this.end_x += x;
   this.end_y+= y;
 }
 

  void show() {
    //outside
    fill(0, 0, 0);
    stroke(0, 0, 0);
    quad(start_x - width_start/2, start_y - width_start/2, end_x + width_end/2, end_y+ width_end/2 , end_x + width + width_end/2, end_y + width + width_end/2, start_x + width + width_start/2, start_y + width + width_start/2);

    fill(255, 255, 255);
    stroke(0, 0, 0);
    //inside
    quad(start_x, start_y, end_x, end_y, end_x + width, end_y + width, start_x + width, start_y + width);
  }
}
