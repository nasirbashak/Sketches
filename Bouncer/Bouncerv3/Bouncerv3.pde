
ArrayList<Circle> circles;
ArrayList<Circle> collidedCircles;

float hu;


void setup(){
  
  size(800,600);
  
  colorMode(HSB);
  
  circles = new ArrayList<Circle>();
 
  
  hu = 0;
  
}



void draw(){
  
  background(hu,255,255);
  //background(0);
   collidedCircles = new ArrayList<Circle>();
  
   stroke(255);
    noFill();
    strokeWeight(5);
    rect(20-5,20-5,760+10,560+10,25);
    
    hu = hu+0.5;
    
    if(hu>255){
      hu = 0;
    }

  if(frameCount % 5 == 0){
    
    if(mouseX <100 || mouseY < 100){
      
      circles.add(new Circle(100,100));
    
    }else{
     
      circles.add(new Circle(random(100,width-100),random(100,height-100)));
    }
    
    
        
   
  }
  
  for(Circle c1 : circles){
    
    c1.show();
    c1.move();
    
    for(Circle c2 : circles){
      
       PVector p1 = new PVector(c1.x,c1.y);
       PVector p2 = new PVector(c2.x,c2.y);
       
       int d = int(p1.dist(p2));
      
       
       
       
       if(d<= c1.w+c2.w && !c1.equals(c2)){
         
          stroke(255);
       ellipse(p1.x,p1.y,d,d);
       ellipse(p2.x,p2.y,d,d);
         
         
         
        
         
         color f1 = c1.c;
         color f2 = c2.c;
         
         if(c1.w>c2.w && !(new Integer(f1).equals(new Integer(f2)))){
           c1.w = c1.w+0.1;
           
            c1.xSpeed = c1.xSpeed*-1;
            c1.ySpeed = c1.ySpeed*-1;
         
            c2.xSpeed = c2.xSpeed*-1;
            c2.ySpeed = c2.ySpeed*-1;
           
           
           collidedCircles.add(c2);
           
           
         }else if(c1.w<c2.w && !(new Integer(f1).equals(new Integer(f2)))){
            c2.w = c2.w + 0.1;
            
            
             c1.xSpeed = c1.xSpeed*-1;
             c1.ySpeed = c1.ySpeed*-1;
         
             c2.xSpeed = c2.xSpeed*-1;
             c2.ySpeed = c2.ySpeed*-1;
            
            
            collidedCircles.add(c1);
           
         }
         
         
        
        //collidedCircles.add(c);
        
         
         
         
       }
       
      
      
      
      
    }
    
    
        
  }
  
  circles.removeAll(collidedCircles);
  
  
  
  
  
}
