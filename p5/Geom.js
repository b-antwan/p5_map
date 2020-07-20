class Icon {


  constructor(x, y, width) {
    this.center_x = x;
    this.center_y = y;

    this.x1 = (x - width / 2) + random(-width / 4, width / 4);
    this.y1 = (y + width / 2) + random(-width / 4, width / 4);

    this.x2 = (x + width / 2) + random(-width / 4, width / 4);
    this.y2 = (y + width / 2) + random(-width / 4, width / 4);

    this.x3 = (x + width / 2) + random(-width / 4, width / 4);
    this.y3 = (y - width / 2) + random(-width / 4, width / 4);

    this.x4 = (x - width / 2) + random(-width / 4, width / 4);
    this.y4 = (y - width / 2) + random(-width / 4, width / 4);



    this.width = width;
    this.selected = false;

    this.min_delta = width / 15;
    this.max_delta = width / 10;
    this.delta_1 = (random(this.min_delta, this.max_delta) % this.x1) % this.y1;
    this.delta_2 = (random(this.min_delta, this.max_delta) % this.x2) % this.y2;
    this.delta_3 = (random(this.min_delta, this.max_delta) % this.x3) % this.y3;
    this.delta_4 = (random(this.min_delta, this.max_delta) % this.x4) % this.y4;

  }

  select() {
    this.selected = true;
  }

  deselect() {
    this.selected = false;
  }

  show() {

    //Outside
    strokeWeight(this.width / 20);
    if (!this.selected) {
      fill(255, 255, 255);
      stroke(0, 0, 0);
    } else {
      fill(0, 0, 0);
      stroke(255, 255, 255);
    }
    quad(this.x1, this.y1, this.x2, this.y2, this.x3, this.y3, this.x4, this.y4);

    //Middle
    if (this.selected) {
      fill(255, 255, 255);
      stroke(0, 0, 0);
    } else {
      fill(0, 0, 0);
      stroke(255, 255, 255);
    }
    quad(this.x1 + this.delta_1, this.y1 - this.delta_1, this.x2 - this.delta_2, this.y2 - this.delta_2, this.x3 - this.delta_3, this.y3 + this.delta_3, this.x4 + this.delta_4, this.y4 + this.delta_4);
  }


  translate(x, y) {
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