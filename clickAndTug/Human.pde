class Human{
  //Fields
  int strength, size, number;
  PVector pos;
  color col;
  
  //Constructor
  Human(int str, int s, float x, float y, int n, color c){
    this.strength = str;
    this.size = s; //radius
    this.pos = new PVector(x, y);
    this.number = n;
    this.col = c;
  }
  
  //Methods
  void pull(){
    flagPos.x += strength;
  }
  
  void fixDistance(float cDistance, float difference){
    cDistance = flagPos.x - this.pos.x;
    if (cDistance != sDistance.get(number)){
      difference = cDistance - sDistance.get(number);
      this.pos.x += difference;
    }
  }
  
  void display(){
    fill(col);
    circle(this.pos.x, this.pos.y, this.size);
  }
}
