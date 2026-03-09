import g4p_controls.*;

PVector flagPos;
ArrayList <Float> sDistance;
ArrayList <Human> humanlist;

void setup(){
  size(600, 400);
  createGUI();
  
  sDistance = new ArrayList();
  
  Human boss = new Human(20, 20, 400, 100, 0, color(255, 0, 0)); 
  
  flagPos = new PVector(300, 100);
}

void draw(){
  fill(191, 160, 88);
  rect(0, 100, 600, 10);
    
  fill(255, 0, 0);
  triangle(flagPos.x, flagPos.y, flagPos.x, flagPos.y+30, flagPos.x+15, flagPos.y);
}

void numAlliesChange(){
  
  
  for(int i = 1; i > allies.getValueI(); i++){
    humanlist.add(new Human(1, 5, 100, 105, i, int(random(255))));
  }
  
}
