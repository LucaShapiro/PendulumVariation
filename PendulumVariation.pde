// Modified from code
// by Dan Shiffman
// Nature of Code


Pendulum[] pendulum = new Pendulum[10];

void setup() {
  size(800, 200);

  for (int i = 0; i < pendulum.length; i++) {
    pendulum[i] = new Pendulum(new PVector(80*i+40, 0), 175);
  }


  // Make a new Pendulum with an origin location and armlength
  //p = new Pendulum(new PVector(width/2,0),175);
}

void draw() {

  background(255);

  for (int i = 0; i < pendulum.length; i++) {
    pendulum[i].go();
  }
}

void mousePressed() {
  for (int i = 0; i < pendulum.length; i++) {
    pendulum[i].clicked(mouseX, mouseY);
  }
}
  void mouseReleased() {
    for (int i = 0; i < pendulum.length; i++) {
      pendulum[i].stopDragging();
    }
  }

