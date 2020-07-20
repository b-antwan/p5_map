let icons = [];


let roads = [] ;


let nb_spots = 5;

let coordinates_x = [46.264826,
                   46.281132, 
                   46.273588,
                    46.326935,
                    46.248561];
let coordinates_y = [6.103940,
                   6.08508,
                   6.097993,
                    6.063127,
                    6.120677]; 


let max_map_x = Math.max.apply(Math, coordinates_x) + 0.01;
let max_map_y = Math.max.apply(Math, coordinates_y) + 0.01;
let min_map_x = Math.min.apply(Math, coordinates_x) - 0.01;
let min_map_y = Math.min.apply(Math, coordinates_y) - 0.01;

let new_coords_x = [];
let new_coords_y = [];

let road_width = 15;
let icon_width = 50;

function setup(){
  createCanvas(700, 700);
  
  //Mapping values
  for (let i= 0; i < nb_spots; i++){
    new_coords_x[i] = map(coordinates_x[i], min_map_x, max_map_x, 0, 700 );
    new_coords_y[i] = map(coordinates_y[i], min_map_y, max_map_y, 0, 700 );
    icons[i] = new Icon(700-new_coords_x[i], new_coords_y[i], icon_width);
  }
  
  for(let i =  0; i < nb_spots; i++){ 
    roads[i] = new Road(icons[i].center_x, icons[i].center_y, icons[(i + 1) % nb_spots].center_x -road_width, icons[(i + 1) % nb_spots].center_y -road_width, road_width );
  
  }
  


}

function draw(){
  background(255,0,0); 
  for (let i= 0; i < nb_spots; i++){
    roads[i].show();
  }
  for (let i= 0; i < nb_spots; i++){
      icons[i].show();
  }



}