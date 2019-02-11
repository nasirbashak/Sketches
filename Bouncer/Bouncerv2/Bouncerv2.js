var circles = [];

var hu;
function setup() {
  
  createCanvas(800,600)
  background(0)
  
  var x=random(width)
  var y = random(height)
   
  colorMode(HSB)
  hu = 0;
 
  
  
}

function draw() {
  
  background(hu,255,255)
  
  
    stroke(255)
    noFill();
    strokeWeight(5)
    rect(20-5,20-5,760+10,560+10,25);
    
    hu = hu+0.5
    
    if(hu>255){
      hu = 0
    }

  if(frameCount % 5 == 0){
    
    if(mouseX <100 || mouseY < 100){
      
      circles.push(new Circle(100,100))
    
    }else{
     
      circles.push(new Circle(mouseX,mouseY))
    }
    
    
        
   
  }
  
  for(var i = 0 ; i<circles.length ; i++){
    
    circles[i].show();
    circles[i].move();
        
  }
 
}
