

Icon my_icon = new Icon(350, 350 , 100);
Road my_road = new Road(100, 500, 500, 100, 15);

void setup(){
  size(700, 700);
  my_road.translate(-100, -100);
}

void draw(){
  background(255,0,0); 

  my_icon.show();
  my_road.show();
}
