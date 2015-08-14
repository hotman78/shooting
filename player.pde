class Player{
  float playerX=200;
  float playerY=400;
  int HP=10;
  void move(){
    if(time%5==0)player.shot();
    if(kt.key_up==1 && kt.key_shift==1)playerY--;
    if(kt.key_down==1 && kt.key_shift==1)playerY++;
    if(kt.key_left==1 && kt.key_shift==1)playerX--;
    if(kt.key_right==1 && kt.key_shift==1)playerX++;
    if(kt.key_up==1 && kt.key_shift==0)playerY-=2;
    if(kt.key_down==1 && kt.key_shift==0)playerY+=2;
    if(kt.key_left==1 && kt.key_shift==0)playerX-=2;
    if(kt.key_right==1 && kt.key_shift==0)playerX+=2;
    if(playerX>400)playerX=400;
    if(playerY>450)playerY=450;
    if(playerX<0)playerX=0;
    if(playerY<0)playerY=0;
    ellipse(playerX,playerY,5,5);
  }
  void damage(){
    HP--;
    playerX=200;
    playerY=400;
    shot_array.clear();
    if(HP<0){mode=0.5;}
  }
  void shot(){
    if(kt.key_z==1)tyokusen(playerX,playerY,5,PI/2*3,1);
    if(kt.key_z==1)shot1.rewind();
    if(kt.key_z==1)shot1.play();
  }
}
