//Deklarerar ett objekt av klassen drop

Drop drop;
ArrayList<Drop> dropList;

void setup() {
  size(900, 600);
  dropList = new ArrayList<Drop>(); 
  //drop = new Drop(450, 50)); 
  frameRate(100);
  background(50);
  //for (int i = 0; i < 10; i++) {
  //drop = new Drop(new PVector(450, 50)); 
  //dropList.add(drop);
}

//drop = new Drop(new PVector(450, 50));


void draw() {
  //background(50);
  //for (int i = 0; i < 10; i++) {
  fillArrayList();
  run();
  //dropStart = new Drop(new PVector(450, 50));
  //addDrop();
}

void run() {
  for (int i = 0; i < dropList.size()-1; i++) {
    drop = dropList.get(i);
    drop.update();
    drop.display();
    if (drop.position.y>height) {
      dropList.remove(drop);
    }
  }
}

//void addDrop(){
//dropList.add(new Drop(dropStart.position)); 

void fillArrayList() {
  dropList.add(new CircleDrop());
  dropList.add(new RectangleDrop());
  dropList.add(new StarDrop());
}

void keyPressed() {
  clear();
  dropList.removeAll(dropList);
  background(50);
}

void mousePressed() {
  fill(255, 0, 0);
}

void mouseReleased() {
  fill(0, 0, 255);

  //for (int i = 0; i < 10; i++) {
  //drop = new Drop(new PVector(450, 50)); 
  //dropList.add(drop);
}
