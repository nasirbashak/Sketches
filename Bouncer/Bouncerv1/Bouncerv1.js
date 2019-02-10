var boxes = [];


function setup() {
  
  createCanvas(800,600)
  background(0)
  
  var x=random(width)
  var y = random(height)
   
  colorMode(HSB)
 
  boxes.push(new Box(x,y))  
  
}

function draw() {
  
    stroke(255)
    noFill();
    strokeWeight(5)
    rect(20-5,20-5,760+10,560+10);

 
  if(frameCount % 50 == 0){
    
      boxes.push(new Box(mouseX,mouseY))  
   
  }
  
  for(var i = 0 ; i<boxes.length ; i++){
    
    boxes[i].show();
    boxes[i].move();
        
  }
 
}
