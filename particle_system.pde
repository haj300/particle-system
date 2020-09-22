Drop drop;
ArrayList<Drop> dropList;

void setup() {
  size(900, 600);
  dropList = new ArrayList<Drop>();

  for (int i = 0; i < 10; i++) {
    drop = new Drop(new PVector(450, 50));
    dropList.add(drop);
  }

  // drop = new Drop(new PVector(450, 50));
  frameRate(100);
}

void draw() {
  background(0);
  for (int i = 0; i < 10; i++) {
    drop = dropList.get(i);
    drop.update();
    drop.display();
  }
}

class Drop {

  PVector position;
  PVector velocity;
  PVector acceleration;


  Drop(PVector startPos) {
    position = startPos.copy();
    velocity = new PVector(random(-1, 1), random(-1, 1));
    acceleration = new PVector(0, 0.01);
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
