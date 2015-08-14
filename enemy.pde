void enemy_move(){
  if(enemy_array.size()>0){
    for (int i = enemy_array.size()-1 ; i >= 0 && enemy_array.size()>0; i--) {
      Enemy_array w = (Enemy_array)enemy_array.get(i);
      float x=w.x;
      float y=w.y;
      float HP=w.HP;
      float o_time=w.o_time;
      String pro=w.pro;
      w.o_time++;
      zako_img();
      ellipse(x,y,20,20);
      if(pro=="zako1")zako1_move(i);
      if(pro=="zako2")zako2_move(i);
      if(pro=="zako3")zako3_move(i);
      if(pro=="zako4")zako4_move(i);
      if(pro=="zako5")zako5_move(i);
      if(pro=="zako6")zako6_move(i);
      if(pro=="boss1")boss1_move(i);
    }
  }
}
void zako1_move(int i){
  Enemy_array w = (Enemy_array)enemy_array.get(i);
  w.x=w.o_time;
  if(w.x%20==0)tyokusen(w.x,w.y,1,PI/4*3,0);
  enemy_damage(w.HP,i);
}
void zako2_move(int i){
  Enemy_array w = (Enemy_array)enemy_array.get(i);
  w.x=400-w.o_time;
  if(w.x%20==0)tyokusen(w.x,w.y,1,PI/4,0);
  enemy_damage(w.HP,i);
}

void zako3_move(int i){
  Enemy_array w = (Enemy_array)enemy_array.get(i);
  for(int j=0;j<1000;j++){
    if(150 > w.o_time && j==w.o_time)w.y=j;
    if(150 < w.o_time && 200 > w.o_time && j==w.o_time)w.y=150;
    if(200 < w.o_time && j==w.o_time)w.y=350-j;
  }
    if(w.o_time%20==0)for(int j=0;j<20;j++)tyokusen(w.x,w.y,2,PI/10*j,0);
    enemy_damage(w.HP,i);
}
void zako4_move(int i){;
  Enemy_array w = (Enemy_array)enemy_array.get(i);
  float a=atan2(w.y-player.playerY,w.x-player.playerX);
  for(int j=0;j<1000;j++){
    if(150 > w.o_time && j==w.o_time)w.y=j;
    if(150 < w.o_time && 200 > w.o_time && j==w.o_time)w.y=150;
    if(200 < w.o_time && j==w.o_time)w.y=350-j;
  }
  if(w.o_time%10==0)tyokusen(w.x,w.y,5,PI+a,0);
  enemy_damage(w.HP,i);
}
void zako5_move(int i){
  Enemy_array w = (Enemy_array)enemy_array.get(i);
  for(int j=0;j<1000;j++){
    if(150 > w.o_time && j==w.o_time)w.y=j;
    if(150 < w.o_time && 200 > w.o_time && j==w.o_time)w.y=150;
    if(200 < w.o_time && j==w.o_time)w.y=350-j;
  }
    if(w.o_time%60==0)for(int j=0;j<40;j++)tyokusen(w.x,w.y,2 ,PI/10*j,0);
    enemy_damage(w.HP,i);
}
void zako6_move(int i){
  Enemy_array w = (Enemy_array)enemy_array.get(i);
  if(w.o_time%60==0 && w.x>=225){w.par1=random(-3,-1);}
  if(w.o_time%60==0 && w.x<=225){w.par1=random(1,3);}
  if(w.o_time%80==0 && w.y>=50){w.par2=random(-1,0);}
  if(w.o_time%80==0 && w.y<=50){w.par2=random(0,1);}
  if(w.o_time%80<60)w.x+=w.par1;
  if(w.o_time%80<60)w.y+=w.par2;
    if(w.o_time%60==0)for(int j=0;j<40;j++)kasoku(w.x,w.y,2 ,PI/10*j,0);
    enemy_damage(w.HP,i);
}
void boss1_move(int i){
  Enemy_array w = (Enemy_array)enemy_array.get(i);
  if(w.o_time%60==0 && w.x>=225){w.par1=random(-3,-1);}
  if(w.o_time%60==0 && w.x<=225){w.par1=random(1,3);}
  if(w.o_time%80==0 && w.y>=50){w.par2=random(-1,0);}
  if(w.o_time%80==0 && w.y<=50){w.par2=random(0,1);}
  if(w.o_time%80<60)w.x+=w.par1;
  if(w.o_time%80<60)w.y+=w.par2;
  if(w.o_time%10==0 && w.flag==0)for(int j=0;j<40;j++)tyokusen(w.x,w.y,1,PI/20*j+w.o_time,0);
  if(w.o_time%20==0 && w.flag==1)for(int j=0;j<40;j++){tyokusen(w.x,w.y,1,PI/20*j+w.o_time,0);tyokusen(w.x,w.y,1,PI/20*j-w.o_time,0);}
  if(w.o_time%30==0 && w.flag==2)for(int j=0;j<40;j++){tyokusen(w.x,w.y,2,PI/20*j+(w.o_time*0.1),0);tyokusen(w.x,w.y,1,PI/20*j+(w.o_time*0.2),0);tyokusen(w.x,w.y,1,PI/20*j+(w.o_time*0.3),0);}
  if(w.o_time%30==0 && w.flag==3)enemy_array.remove(i);
  if(w.HP==0){w.flag++;w.HP=1000;}
}

void enemy_damage(float HP,int i){
  if(HP<0)enemy_array.remove(i);
}

void zako_img(){
  
}

