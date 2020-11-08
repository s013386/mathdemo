PFont font;
int fontSize = 20;
int firstnum = (int)random(10);
int secondnum = (int)random(10);
int operator = (int)random(3);
int wrongone=0,wrongtwo=0;
int savedtime;
int answer;
int position;
int score = 0;
void setup(){
 size(1600,500);
 background(0);
 font = createFont("Arial Italic", fontSize, true);
 textFont(font, fontSize);
 newquestion();

}
void mouseClicked(){
  if(mouseY>230&&mouseY<320){
  if(mouseX>150 && mouseX<200 && position==0)score+=1;
  if(mouseX>200 && mouseX<250 && position==1)score+=1;
  if(mouseX>250 && mouseX<300 && position==2)score+=1;
 println(mouseX);
  newquestion();
  
  }
}

void draw(){
  fill(0);
  rect(0,0,50,50);
  fill(255);
  float percentageleft= ((float)millis()-(float)savedtime)/5000;
  arc(25,25,25,25,0,2*PI*percentageleft);
  if (savedtime<millis()-5000){
   newquestion(); 
  }
}

void newquestion(){
savedtime = millis();
//text(score,400,100);
background(0);
text(score,1550,25);
 firstnum = (int)random(10);
 secondnum = (int)random(10);
operator = (int)random(3);
position = (int)random(3);
switch(operator){
  case 0:
  answer = firstnum+secondnum;
  break;
  case 1:
  answer = firstnum-secondnum;
  break;
  case 2:
  answer = firstnum*secondnum;
  break;

  
}
 
  wrongone = answer+(int)random(5,1)*(1-((int)(random(2))*2));

  wrongtwo = answer+(int)random(5,1)*(1-((int)(random(2))*2));
  if( wrongtwo == wrongone) wrongtwo+=(int)random(5,1)*(1-(int)(random(2))*2);
 switch(operator){
  case 0:
  text(firstnum + "+" + secondnum + " =",800,250);
  break;
  case 1:
  text(firstnum + "-" + secondnum + " =",800,250);
  break;
  case 2:
  text(firstnum + "*" + secondnum + " =",800,250);
  break;

  
} 

switch(position){
  case(0):
     fill(0,0,255);
   text(answer,750,300); 
   fill(255);
   text(wrongone,800,300); 
   text(wrongtwo,850,300); 
   break;
   case(1):
   text(wrongone,750,300); 
      fill(0,0,255);
   text(answer,800,300); 
   fill( 255);
   text(wrongtwo,850,300); 
   break;  
   case(2):
   text(wrongone,750,300); 
   text(wrongtwo,800,300); 
   fill(0,0,255);
   text(answer,850,300); 
   fill(255);
   break;
}
}
