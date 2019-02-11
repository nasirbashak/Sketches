function Circle(x,y){
 
  this.x=x;
  this.y=y;
  this.w = random(5,40)
  this.bound = 40

  
  this.r = random(-5,5);
  
  this.xSpeed = random(-5,5)/(this.w/(this.w+1));
  this.ySpeed = random(-5,5)/(this.w/(this.w+1));
  
  this.c = [random(10,255),random(10,255),random(10,255)]
  colorMode(HSB)
  
  
  
  
  this.move = function(){
   
     this.x = this.x + this.xSpeed;
     this.y = this.y + this.ySpeed;
  
  
  if(this.x  >= width -this.bound  || this.x  <= this.bound){
    this.xSpeed = this.xSpeed * -1;
    
  }
  
  if(this.y  >= height -this.bound || this.y <= this.bound){
    this.ySpeed = this.ySpeed * -1;
    
  }
    
    
  }
  
  this.show = function(){
    
    stroke(this.c[0],this.c[1],this.c[2]);
    fill(this.c[0],this.c[1],this.c[2]);
    ellipse(this.x,this.y,this.w,this.w);
  
  }

  
}
