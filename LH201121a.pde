void setup(){
  size(700,600);
  background(255);
}

void draw(){
  line(50,0,50,700);
  strokeWeight(5);
  int i=floor(random(255)),
      j=floor(random(255)),
      k=floor(random(255));
  
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
  
  fill(0);
  rect(250,400,50,200);
  
  fill(0);
  rect(300,120,150,280);
  
  fill(i);
  delay(200);
  rect(50,0,200,120);
  
  fill(j);
  delay(200);
  rect(300,0,150,80);
  
  fill(k);
  delay(200);
  rect(650,0,50,320);
  
  fill(j);
  delay(200);
  rect(50,320,200,80);
  
  fill(k);
  delay(200);
  rect(0,400,50,160);
  
  fill(i);
  delay(200);
  rect(450,400,200,160);
  
}
