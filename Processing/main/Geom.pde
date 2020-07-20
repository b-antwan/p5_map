class Icon {
 
 float center_x;
 float center_y;
 
 float x1;
 float y1;
 
 float x2;
 float y2;
 
 float x3;
 float y3;
 
 float x4;
 float y4;
 
 float width;
 
 float delta_1;
 float delta_2;
 float delta_3;
 float delta_4;
  
 boolean selected = false;
 
 public Icon(float x, float y, float width){
   this.center_x = x;
   this.center_y = y;
   
   this.x1 = (x - width/2) + random( - width/4 , width/4);
   this.y1 = (y + width/2) + random( - width/4 , width/4);
   
   this.x2 = (x + width/2) + random( - width/4 , width/4);
   this.y2 = (y + width/2) + random( - width/4 , width/4);
   
   this.x3 = (x + width/2) + random( - width/4 , width/4);
   this.y3 = (y - width/2) + random( - width/4 , width/4);
   
   this.x4 = (x - width/2) + random( - width/4 , width/4);
   this.y4 = (y - width/2) + random( - width/4 , width/4);
 

   
   this.width = width;
   this.selected = false;
   
   float min_delta = width/15;
   float max_delta = width/10;
   this.delta_1  = (random(min_delta, max_delta) % this.x1) % this.y1;
   this.delta_2 = (random(min_delta, max_delta) % this.x2) % this.y2;
   this.delta_3 = (random(min_delta, max_delta) % this.x3) % this.y3;
   this.delta_4 = (random(min_delta, max_delta) % this.x4) % this.y4;
   
 }
 
 void select(){
   this.selected = true;
 }
 
 void deselect(){
   this.selected = false;
 }
 
 void show(){
   
   //Outside
   strokeWeight(this.width/20);
   if(!this.selected){
     fill(255,255,255);
     stroke(0,0,0);
   }else{
     fill(0,0,0);
     stroke(255,255,255);
   }
   quad(x1,y1,x2,y2,x3,y3,x4,y4);
  
   //Middle
   if(this.selected){
     fill(255,255,255);
     stroke(0,0,0);
   }else{
     fill(0,0,0);
     stroke(255,255,255);
   }
   quad(x1 + this.delta_1,y1 - this.delta_1,x2 - this.delta_2 ,y2 - this.delta_2,x3 - this.delta_3 ,y3 + this.delta_3,x4 + this.delta_4,y4 + this.delta_4); 
 }
 
 
 void translate(float x, float y){
   this.x1 += x;
   this.x2 += x;
   this.x3 += x;
   this.x4 += x;
   this.y1 += y;
   this.y2 += y;
   this.y3 += y;
   this.y4 += y;
 }
 
}