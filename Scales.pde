void setup() {
  size(500, 500);
}

float spin = 0;
float acc = PI/540;

void draw() {
  noStroke();
  translate(250, 250);
  while(acc < PI/4) {
    fill(10, 10);
    rect(-250, -250, 500, 500);
    rotate(spin);    
    propeller(0, 0);
    spin += acc;
    acc += PI/36000;
    System.out.println(acc);
  }
  fill(10, 10);
  rect(-250, -250, 500, 500);
  rotate(spin);    
  propeller(0, 0);
  spin += PI/4;
}
void propeller(int x, int y) {
  fill(250);
  for (float rot = 0; rot < PI; rot += PI/3) {
    translate(x, y);
    rotate(rot);
    bezier(x - 200, y - 200, x + 200, y - 200, x - 200, y + 200, x + 200, y + 200);
    rotate(-rot);
    translate(-x, -y);
  }
}

