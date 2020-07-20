class Road {

  constructor(x_1, y_1,x_2,y_2, width) {
    this.start_x = x_1;
    this.start_y = y_1;

    this.end_x = x_2;
    this.end_y = y_2;
    this.width_stroke = random(width/3, width/1.5);
    this.width_size = random(width/4, width/3.5 );
    this.width = width;
    this.r = random(255);
    this.g = random(255);
    this.b = random(255);
 

}  

 translate(x, y){
   this.start_x += x;
   this.start_y += y;
   this.end_x += x;
   this.end_y+= y;
 }
 

  show() {
    strokeWeight(this.width_stroke);
    stroke(0, 0, 0);
    //inside
    line(this.start_x, this.start_y, this.end_x+this.width, this.end_y+this.width);
    strokeWeight(this.width_size);
    stroke(this.r,this.g,this.b);
    line(this.start_x, this.start_y, this.end_x+this.width, this.end_y+this.width);
  }
}