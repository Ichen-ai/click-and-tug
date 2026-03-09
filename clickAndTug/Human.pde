class Human{
  //Fields
  int strength, size, number;
  PVector pos;
  
  //Constructor
  Human(int str, int s, PVector p, int n){
    this.strength = str;
    this.size = s;
    this.pos = p;
    this.number = n;
  }
  
  //Methods
  void pull(){
    flagPos.x += strength;
  }
  
  void fixDistance(float cDistance, float difference){
    cDistance = flagPos.x - this.pos.x;
    if (cDistance != sDistance[number]){
      difference = cDistance - sDistance[number];
      this.pos.x += difference;
    }
  }
}
