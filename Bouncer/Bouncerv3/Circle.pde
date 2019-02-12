class Circle{

  float x;
  float y;
  float w;
  float bound;
  float xSpeed;
  float ySpeed;
  color c;
  
  
  Circle(float x, float y){
    this.x = x;
    this.y = y;
    
    w = random(5,40);
    bound = 40;
    
    xSpeed = random(-5,5)/(this.w/(this.w+1));
    ySpeed = random(-5,5)/(this.w/(this.w+1));
    
    colorMode(HSB);
    int r = int(random(2));
    if(r ==0){
          c =  color(0);

      
    }else{
          c =  color(255);

    }
     c =  color(random(255),255,255);

  }
  
  
  void move(){
   
    x = x + xSpeed;
    y = y +ySpeed;
    
     if(x  >= width - bound  ||  x <= bound){
          xSpeed = xSpeed * -1;
    
      }
  
      if(y  >= height - bound || y <= bound){
           ySpeed = ySpeed * -1;
    
      }
      
  }
  
  void show(){
   
    stroke(c);
    fill(c);
    ellipse(x,y,w,w);
    
    
  }
  

}
