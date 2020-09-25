// klass, här anges droppens attribut/datafält. dessa kan defieneras vidare via funktioner/metoder. 
//PVector är ett objekt - de deklareras här (genom position osv) men inte initialiserats till skillnad från int/float som är primitiva datayper
class Drop { 

  PVector position;
  PVector velocity;
  PVector acceleration;  
  //float lifespan;

  //konstruktor, where objects are born, kallas vid new Drop 
  //Drop(){
  //position = new PVector(450, 50);
  //velocity = new PVector(1, 1);
  //acceleration = new PVector(1, 4);

  //}
  // ytterligare en konstruktor med argument/paramterar angivna inom parantes.
  Drop() {
    position = new PVector(mouseX, mouseY);
    velocity = new PVector(random(-1, 1), random(-1, 1));
    acceleration = new PVector (0, 0.01);
  }  

  void run() {
    update();
    display();
  }
  //
  void update() {
    velocity.add(acceleration); // tar velocity (1,1) + acceleration (0,01, 1) 
    position.add(velocity); // dessa tre adderas i varandra från drop klassen (ovanför)
    //lifespan -= 1.0;
  }

  void display() {
    stroke(0);
    fill(127);
    ellipse(position.x, position.y, 10, 10);

  }
}
