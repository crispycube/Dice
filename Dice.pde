void setup() {
  noLoop();
  size(251, 500);
}

void draw() {
  background(160);
  int total = 0;
  for (int i = 0; i < 300; i += 100) {
    for (int j = 0; j < 300; j += 100) {
      fill(255);
      Die obj = new Die(i, j);
      obj.show();
      obj.roll();
      fill(0);
      text(obj.value, obj.xCoord + 25, obj.yCoord + 25);
      total += obj.value;
      text(total, 125, 400);
    }
  }
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
  }
}
