ArrayList<Heart> hearts ;

void setup(){
 
  size(1200,700);
  
  background(10);
  
  colorMode(HSB);
  
  hearts = new ArrayList<Heart>();

  hearts.add(new Heart(random(50,width-50),random(50,height-50),random(50,100)));
  
}


void draw(){
  
  for(Heart h : hearts){
   
    h.show();
    
  }
  
 // saveFrame("images/#####.png");
     
}

void keyPressed(){
  
  hearts.add(new Heart(mouseX,mouseY,random(50,100)));
  
}
