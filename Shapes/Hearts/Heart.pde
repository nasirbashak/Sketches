class Heart{

  float x;
  float y;
  float r;
  float hu = 0;
  float R;
  int i = 0;
  float dr;

  Heart(float x, float y , float r){
    this.x= x;
    this.y = y;
    this.r = r;
    this.R = r;
    this.dr = 2;
    
    colorMode(HSB);
    
    
    
  }
  
  void show(){
    
     stroke(hu++,255,255);
     float w = map(r,0,R,3,7);
    strokeWeight(w);
    
    if(hu>255){
      hu=0;
      
    }
    
    
    
    for(int j = 0;j<500;j++){
 
        float a = x+ r*16/16*pow(sin(i),3) ;
        float b = y-(  (r*13/16) * cos(i) - r*5/16* cos(2*i) - r*2/16*cos(3*i) - r/16* cos(4*i)) ;
  
         point(a,b);
         i+=1;
     
         if(int(i) % 500 == 0){
             if(r<=0 || r>R){
              dr=dr*-1;       
             }
           r = r-dr;  
         }

   }
      
  }

}
