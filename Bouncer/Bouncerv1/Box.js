function Box(x,y){
 
  this.x=x;
  this.y=y;
  this.w = 40
  
  this.r = random(-5,5);
  
  this.xSpeed = random(-5,5);
  this.ySpeed = random(-5,5);
  
  this.c = [random(10,255),random(10,255),random(10,255)]
  colorMode(HSB)
  
  
  
  
  this.move = function(){
   
     this.x = this.x + this.xSpeed;
     this.y = this.y + this.ySpeed;
  
  
  if(this.x  >= width - 1.5*this.w  || this.x  <= this.w/2){
    this.xSpeed = this.xSpeed * -1;
    
  }
  
  if(this.y  >= height - 1.5*this.w || this.y <= this.w/2){
    this.ySpeed = this.ySpeed * -1;
    
  }
    
    
  }
  
  this.show = function(){
    
    //stroke(this.c[0],this.c[1],this.c[2]);
    fill(this.c[0],this.c[1],this.c[2]);

    
    rect(this.x,this.y,this.w,this.w);
    
    
  }
  
  
  
  
  
}
