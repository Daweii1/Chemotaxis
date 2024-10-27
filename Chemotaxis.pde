taxi [] boom;
public void setup() {
  size(500,500);
  boom = new taxi[100];
  
  for (int i =0; i  < boom.length; i++) {
    boom[i] = new taxi((int)(Math.random()*500),(int)(Math.random()*500));
}
}  

public void draw() {
  background(0);
         for(int i =0; i< boom.length; i++) {
                 boom[i].walk();   
           boom[i].show();
      
    }

}

class taxi 
{
  int myX,myY,myColor;
  
  taxi(int x, int y){
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      
  }
    
 
    void walk(){
     
     if(mouseX > myX) {
        myX += (int)(Math.random()*3);
     } else if (mouseX <myX) {
               myX += (int)(Math.random()*3 -2);
     }

      if(mouseY > myY) {
        myY += (int)(Math.random()*3);
     } else if (mouseY <myY) {
               myY += (int)(Math.random()*3 -2);
     }
     
     if (mousePressed == true) {
       if(mouseX > myX) {
        myX -= (int)(Math.random()*6);
     } else if (mouseX <myX) {
               myX -= (int)(Math.random()*6 -2);
     }

      if(mouseY > myY) {
        myY -= (int)(Math.random()*6);
     } else if (mouseY <myY) {
               myY -= (int)(Math.random()*6 -2);
     }
     }

  }

  
   void show(){
     fill(myColor);
       rect(myX, myY, 10,10);   
  }
  
  
  
}

