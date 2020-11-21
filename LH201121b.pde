void setup(){
  size(700,600);
  background(255);
}

void draw(){
  line(50,0,50,700);
  strokeWeight(5);
  int r=int(random(255));
  int g=int(random(255));
  int b=int(random(255));
  int i= int(random(200));
  println(r,g,b);
 
  line(50,0,50,700);
  strokeWeight(5);
  
  line(250,0,250,700);
  strokeWeight(5);
  
  line(300,0,300,700);
  strokeWeight(5);
  
  line(450,0,450,700);
  strokeWeight(5);
  
  line(650,0,650,700);
  strokeWeight(5);
  
  line(0,80,50,80);
  strokeWeight(5);
  
  line(250,80,450,80);
  strokeWeight(5);
  
  line(50,120,250,120);
  strokeWeight(5);
  
  line(300,120,680,120);
  strokeWeight(5);
  
  line(50,320,250,320);
  strokeWeight(5);
  
  line(40,320,700,320);
  strokeWeight(5);
  
  line(0,400,700,400);
  strokeWeight(5);
  
  line(0,560,250,560);
  strokeWeight(5);
  
  line(300,560,700,560);
  strokeWeight(5);
  
  fill(r,g,b);
  delay(1000);
  rect(50,0,200,120);
  
  fill(r+i,g,b);
  delay(500);
  rect(300,0,150,80);
  
   fill(r,g+i,b);
  delay(150);
  rect(650,0,50,320);
  
   fill(r,g,b+i);
  delay(100);
  rect(300,120,150,280);
  
   fill(r+i,g+i,b);
  delay(500);
  rect(50,320,200,80);
  
   fill(r,g+i,b+2*i);
  delay(1500);
  rect(0,400,50,160);
  
   fill(r,g,b);
  rect(250,400,50,200);
  
   fill(r,g,b+2*i);
  delay(2000);
  rect(450,400,200,160);
  
  
}
