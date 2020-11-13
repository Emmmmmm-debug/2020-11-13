int r=150,i,j,d=11;
int x=r/2,y=r/2;
    
void setup(){
  size(1200,1200);
  background(0);
 
}

void draw(){
 for(j=0;j<20;j++){
   for(i=0;i<20;i++){
     arc(x,y,r/2,r/2,0,PI/4);
     arc(x,y,2*r/3,2*r/3,PI/2,PI);
     arc(x,y,3*r/4,3*r/4,radians(5*i+PI),radians(PI+10*i));
     arc(x,y,r,r,radians(170+10*i),radians(280+10*i));
     x=x+r-d;
     r=r-d;
     }
   if(i==20){
     x=75;
     r=150-j*d;
     i=0;
     y=y+r+d;
     }
  }
}
