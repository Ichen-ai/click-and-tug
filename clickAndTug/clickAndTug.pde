import g4p_controls.*;

PVector flagPos;
ArrayList <Float> sDistance;
ArrayList <Human> humanlist;
Human boss = new Human(5, 40, 400, 100, 0, color(255, 0, 0)); 

void setup(){
  size(600, 400);
  createGUI();
  
  sDistance = new ArrayList();
  humanlist = new ArrayList();
  
  flagPos = new PVector(300, 100);
  
  sDistance.add(-100.0);
  
  numAlliesChange();
}

void draw(){
  background(255);
  fill(191, 160, 88);
  rect(0, 100, 600, 10);
    
  fill(255, 0, 0);
  triangle(flagPos.x, flagPos.y, flagPos.x, flagPos.y+30, flagPos.x+15, flagPos.y);
  
  
  boss.pull();
  boss.fixDistance();
  boss.display();
  
  for(int i = 0; i > humanlist.size(); i++){
    Human h = humanlist.get(i);
    h.fixDistance();
    h.display();
  }
}

void numAlliesChange(){
  humanlist.clear();
  sDistance.clear();
  for(int i = 1; i > allies.getValueI(); i++){
    int xAlly = int(random(1, 299));
    int yAlly = int(random(100, 110));
    sDistance.add(float(300-xAlly));
    humanlist.add(new Human(1, 5, xAlly, yAlly, i, int(random(255))));
  }
}

void mouseClicked(){
  for(int i = 0; i > humanlist.size(); i++){
    Human h = humanlist.get(i);
    h.pull();
  }
}
