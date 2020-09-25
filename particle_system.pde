Drop drop;
ArrayList<Drop> dropList;

void setup() {
  size(900, 600);
  dropList = new ArrayList<Drop>();
  frameRate(100);
}

void draw() {
  background(0);
  fillArrayList();
  run();
}

void fillArrayList() {
  dropList.add(new RectDrop(new PVector(450, 50)));
}

void run() {
  for (int i = 0; i < dropList.size(); i++) {
    drop = dropList.get(i);
    drop.update();
    drop.display();
    if (drop.position.y > height) {
      dropList.remove(drop);
    }
  }
}

class Drop {

  PVector position;
  PVector velocity;
  PVector acceleration;

// Denna behöver finns av "design-skäl" pga hur javas kompilator fungerar, 
// det är en default konstruktor som i det här fallet inte gör något 
// annat än att undvika kompileringsfel
  Drop() {
  }

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

// En subklass av superklassen Drop, ärver datafält och metoder från Drop,
// kan även "override:a"/skriva över metoder genom att definera om dom 
// med samma namn men med annan implementation
class RectDrop extends Drop {
  
    RectDrop(PVector startPos) {
    position = startPos.copy();
    velocity = new PVector(random(-1, 1), random(-1, 1));
    acceleration = new PVector(0, 0.01);
  }

  //Här omdefinerar vi vad display gör när vi kallar på en RectDrop variabel
  void display() {
    stroke(0);
    fill(127);
    //Ny form
    rect(position.x, position.y, 10, 10);
  }
}
