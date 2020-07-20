

Icon my_icon = new Icon(150, 250 , 100);

Icon my_icon_1 = new Icon(500, 600 , 50);

Icon my_icon_2 = new Icon(200, 600 , 100);

Road my_road = new Road(150, 250, 500-50, 600-50, 50);

Road my_road_2  = new Road(150, 250, 200-50, 600-50, 50);

void setup(){
  size(700, 700);
  

}

void draw(){
  background(255,0,0); 
  my_road.show();
  my_road_2.show();
  my_icon.show();
  my_icon_1.show();
  my_icon_2.show();


}
