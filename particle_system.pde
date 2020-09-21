Drop dropStart;
Drop drop;
//ArrayList<Drop> dropList;

void setup() {
  size(900, 600);
//  dropList = new ArrayList();
  drop = new Drop(new PVector(450, 50));
}

void draw() {
  background(0);
  drop.run();

  // dropStart = new Drop(new PVector(450, 50));
}

class Drop {

  PVector position;
  PVector velocity;
  PVector acceleration;


  Drop(PVector startPos) {
    position = startPos.copy();
    velocity = new PVector(1, 1);
    acceleration = new PVector(1, 1);
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
