void setup(){
  noLoop();
  size(500, 500);
}

void draw(){
  background(160);
  for(int i = 0; i < 300; i += 100){
    for(int j = 0; j < 300; j += 100){
      Die obj = new Die(i, j);
      obj.show();
    }
  }
}

void mousePressed(){
  redraw();
}

class Die{
  int xCoord, yCoord, roll;
  Die(int x, int y){
    xCoord = x;
    yCoord = y;
  }
  
  void roll(){
    
  }
  
  void show(){
    rect(xCoord, yCoord, 50, 50, 4);
  }
}
