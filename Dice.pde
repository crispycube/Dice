void setup() {
  noLoop();
  size(251, 300);
}

void draw() {
  background(160);
  int total = 0;
  for (int i = 0; i < 300; i += 100) {
    for (int j = 0; j < 300; j += 100) {
      fill(255);
      Die obj = new Die(i, j);
      obj.roll();
      obj.show();
      fill(0);
      total += obj.value;
    }
  }
  text(total, 125, 275);
}

void mousePressed() {
  redraw();
}

class Die {
  int xCoord, yCoord, value;
  Die(int x, int y) {
    xCoord = x;
    yCoord = y;
  }

  void roll() {
    value = (int)(Math.random()*6 + 1);
  }

  void show() {
    rect(xCoord, yCoord, 50, 50, 4);
    fill(0);
    if(value == 1){
      ellipse(xCoord + 25, yCoord + 25, 10, 10);
    } else if(value == 2){
      ellipse(xCoord + 40, yCoord + 10, 10, 10);
      ellipse(xCoord + 10, yCoord + 40, 10, 10);
    } else if(value == 3){
      ellipse(xCoord + 40, yCoord + 10, 10, 10);
      ellipse(xCoord + 25, yCoord + 25, 10, 10);
      ellipse(xCoord + 10, yCoord + 40, 10, 10);
    } else if(value == 4){
      ellipse(xCoord + 40, yCoord + 10, 10, 10);
      ellipse(xCoord + 10, yCoord + 10, 10, 10);
      ellipse(xCoord + 10, yCoord + 40, 10, 10);
      ellipse(xCoord + 40, yCoord + 40, 10, 10);
    } else if(value == 5){
      ellipse(xCoord + 40, yCoord + 10, 10, 10);
      ellipse(xCoord + 10, yCoord + 10, 10, 10);
      ellipse(xCoord + 10, yCoord + 40, 10, 10);
      ellipse(xCoord + 40, yCoord + 40, 10, 10);
      ellipse(xCoord + 25, yCoord + 25, 10, 10);
    } else {
      ellipse(xCoord + 40, yCoord + 10, 10, 10);
      ellipse(xCoord + 10, yCoord + 10, 10, 10);
      ellipse(xCoord + 10, yCoord + 40, 10, 10);
      ellipse(xCoord + 40, yCoord + 40, 10, 10);
      ellipse(xCoord + 10, yCoord + 25, 10, 10);
      ellipse(xCoord + 40, yCoord + 25, 10, 10);
    }
  }
}
