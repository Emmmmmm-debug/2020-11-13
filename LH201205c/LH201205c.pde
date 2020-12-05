float speed = 0;
float easing = 0.07;

int r1,g1,b1,weight,draw;

int r = floor(random(255)),
    g = floor(random(255)),
    b = floor(random(255));

void setup(){
  size(900,720);
  background(0);
  stroke(255);
  strokeWeight(3);
}

void draw(){
  noStroke(); 
  fill(255,255,255,50);
  String txt1 = "Drawing Table";
  String txt2 = "clean";
  String txt3 = "weight";
  String txt4 = "change color";
  String txt6 = "-1";
  String txt7 = "+1";
  String txt9 = "line";
  String txt10= "ellipse";
  String txt11= "rect";
  String txt12= "speed line";
 
  textSize(20);
  text(txt1,350,90);
  line(0,100,900,100);
  rect(0,100,900,5);
  rect(150,0,5,100);
  rect(58,10,80,15);
  rect(10,45,40,20);
  rect(165,10,50,12);
  rect(165,30,50,12);  
  rect(245,30,17,12);
  rect(265,30,17,12);
  rect(600,0,5,100);
  rect(620,10,40,12);
  rect(620,30,40,12);
  rect(620,50,40,12);
  rect(620,70,60,12);
  fill(0);
  textSize(12);
  text(txt2,170,20);
  text(txt3,170,40);
  text(txt4,60,20);
  text(txt6,247,40);
  text(txt7,265,40);
  text(txt9,620,20);
  text(txt10,620,40);
  text(txt11,620,60);
  text(txt12,620,80);

  fill(r,g,b,100);
  rect(10,10,40,20);

  if(((mouseX>10)&&(mouseX<50)&&(mouseY>10)&&(mouseY<30))&& mousePressed == true) {
    r1=r;
    b1=b;
    g1=g;
    fill(r,g,b,255);
    rect(10,10,40,20);
  }
  else{
    fill(r,g,b,50);
  }

  if((mouseX>58)&&(mouseX<138)&&(mouseY>10)&&(mouseY<25)&& mousePressed == true) {
    r = floor(random(255));
    g = floor(random(255));
    b = floor(random(255));
    fill(r,g,b);
    rect(10,10,40,20);
    fill(255,255,255,255);
    rect(58,10,80,15);
   strokeWeight(2);
    }

  if(((mouseX>10)&&(mouseX<50)&&(mouseY>45)&&(mouseY<65))&& mousePressed == true) {
    r1=255;
    g1=255;
    b1=255;
    fill(255,255,255,255);
    rect(10,45,40,15);
    strokeWeight(2);
  }
  
  if(((mouseX>245)&&(mouseX<262)&&(mouseY>30)&&(mouseY<42))&& mousePressed == true) {
     weight=weight-1;
     fill(255,255,255,255);
     rect(245,30,17,12);
     strokeWeight(2);
  }
  
   if(((mouseX>265)&&(mouseX<282)&&(mouseY>30)&&(mouseY<42))&& mousePressed == true) {
     weight=weight+1;
     fill(255,255,255,255);
     rect(265,30,17,12);
     strokeWeight(2);
  }
  
  if(((mouseX>285)&&(mouseX<310)&&(mouseY>30)&&(mouseY<42))&& mousePressed == true) {
     weight=floor(speed);
     fill(255,255,255,255);
     rect(285,30,25,12);
     strokeWeight(2);
  }
   if(((mouseX>165)&&(mouseX<215)&&(mouseY>10)&&(mouseY<22))&& mousePressed == true) {
     fill(255,255,255,255);
     rect(165,10,50,12);
     strokeWeight(2);
     fill(0);
     rect(0,100,900,620);
  }
  
   if(((mouseX>620)&&(mouseX<660)&&(mouseY>0)&&(mouseY<25))&& mousePressed == true) {
     draw = 1;
     weight=5;
     fill(255,255,255,255);
     rect(620,10,40,12);
     strokeWeight(2);
  }
  
   if(((mouseX>620)&&(mouseX<660)&&(mouseY>25)&&(mouseY<45))&& mousePressed == true) {
     draw = 2;
     weight=10;
     fill(255,255,255,255);
     rect(620,30,40,12);
  }
  
  if(((mouseX>620)&&(mouseX<660)&&(mouseY>45)&&(mouseY<70))&& mousePressed == true) {
    draw = 3;
    weight=10;
    fill(255,255,255,255);
    rect(620,50,40,12);
  }
  
  if(((mouseX>620)&&(mouseX<660)&&(mouseY>65)&&(mouseY<90))&& mousePressed == true) {
    draw = 4;
    fill(255,255,255,255);
    rect(620,70,60,12);
  }
  
  
  switch(draw){
    case 1:{
      if(((mouseX>0)&&(mouseX<900)&&(mouseY>105)&&mouseY<(720))&&mousePressed == true) {
        stroke(r1,g1,b1);
        line(mouseX,mouseY,pmouseX,pmouseY);
        strokeWeight(weight);
      }
    break;
    }
   
    case 2:{
      if(((mouseX>0)&&(mouseX<900)&&(mouseY>105)&&mouseY<(720))&&mousePressed == true) {
        fill(r1,g1,b1);
        ellipse(mouseX,mouseY,weight,weight);
      }
    break;
    }
    case 3:{
      if(((mouseX>0)&&(mouseX<900)&&(mouseY>105)&&mouseY<(720))&&mousePressed == true) {
        fill(r1,g1,b1);
        rect(mouseX-weight/2,mouseY-weight/2,weight,weight);
      }
    break;
    }
    case 4:{
      if(((mouseX>0)&&(mouseX<900)&&(mouseY>105)&&mouseY<(720))&&mousePressed == true) {
        stroke(r1,g1,b1);
        float target = dist(mouseX, mouseY, pmouseX, pmouseY);
        speed += (target - speed) * easing;
        strokeWeight(speed/2);
        line(mouseX, mouseY, pmouseX, pmouseY);
      }
    }
    break;
    }
  
}
