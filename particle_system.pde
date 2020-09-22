Drop drop;

void setup() {
  size(900, 600);
  drop = new Drop(new PVector(450, 50));
  frameRate(10);
}

void draw() {
  background(0);
  drop.run();
}

class Drop {

  PVector position;
  PVector velocity;
  PVector acceleration;


  Drop(PVector startPos) {
    position = startPos.copy();
    velocity = new PVector(1, 1);
    acceleration = new PVector(0, -0.01);
  }

  void run() {
    update();
    display();
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
  }

  void display() {
    stroke(0);
    fill(127);
    ellipse(position.x, position.y, 10, 10);
  }
}
