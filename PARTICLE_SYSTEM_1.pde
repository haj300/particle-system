//Deklarerar ett objekt av klassen drop
Drop drop;
ArrayList<Drop> dropList;

void setup() {
  size(900, 600);
  dropList = new ArrayList<Drop>(); 
  //drop = new Drop(450, 50)); 
  for (int i = 0; i < 10; i++) {
  drop = new Drop(new PVector(450, 50)); 
  dropList.add(drop); 
  }
  
  //drop = new Drop(new PVector(450, 50));
  frameRate(100);
}

void draw() {
  background(50);
  for (int i = 0; i < 10; i++) {
  drop = dropList.get(i);
  drop.update();
  drop.display();
  //dropStart = new Drop(new PVector(450, 50));
  //addDrop(); 
  }
  
}
  
  //void addDrop(){
    //dropList.add(new Drop(dropStart.position)); 
  


// klass, här anges droppens attribut/datafält. dessa kan defieneras vidare via funktioner/metoder. 
//PVector är ett objekt - de deklareras här (genom position osv) men inte initialiserats till skillnad från int/float som är primitiva datayper
class Drop { 
  
  PVector position;
  PVector velocity;
  PVector acceleration;  
  
  //konstruktor, where objects are born, kallas vid new Drop 
  //Drop(){
    //position = new PVector(450, 50);
    //velocity = new PVector(1, 1);
    //acceleration = new PVector(1, 4);
    
  //}
  // ytterligare en konstruktor med argument/paramterar angivna inom parantes.
  Drop(PVector startPos) {
    position = startPos.copy();
    velocity = new PVector(random(-1, 1), random(-2, 0));
    acceleration = new PVector (0, 0,01); 
  }  
  
   //
  void update() {
    velocity.add(acceleration); // tar velocity (1,1) + acceleration (0,01, 1) 
    position.add(velocity); // dessa tre adderas i varandra från drop klassen (ovanför)
    }
    
    
    void display() {
      stroke(0);
      fill(127);
    ellipse(position.x, position.y, 10, 10);
  }
}
  
