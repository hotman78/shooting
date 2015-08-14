void menu(){
  for(int i=0;i<5;i++){if(5*(i-1)<=time%20 && time%20<5*i)image(fire[i],0,0);}
  stroke(0);
  noFill();
  if(key_n==0)rect(50,170,80,30);
  if(key_n==1)rect(50,200,100,30);
  if(key_n==2)rect(50,230,240,30);
  if(key_n==3)rect(50,260,120,30);
  if(key_n==4)rect(50,290,80,30);
  if(key_n==0 && (kt.key_enter==1 || kt.key_z==1)){mode=1;time=0;}
  if(key_n==1 && (kt.key_enter==1 || kt.key_z==1)){mode=1;time=0;stage_sel=0;}
  if(key_n==4 && (kt.key_enter==1 || kt.key_z==1))exit();
  textSize(60);
  fill(200,0,0);
  text("SHOOTING",175,100);
  textSize(30);
  text("PLAY",50,200);
  text("EXTRA",50,230);
  text("SPELL PRACTICE",50,260);
  text("CONFIG",50,290);
  text("EXIT",50,320);
}
