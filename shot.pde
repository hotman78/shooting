void shotMove(){
  if(shot_array.size()>0){
    for (int i = shot_array.size()-1 ; i >= 0 && shot_array.size()>0; i--) {
      Shot_array s = (Shot_array)shot_array.get(i);
      s.o_time++;
      if(s.pro_2=="tyokusenn")tyokusenn_move(i);
      if(s.pro_2=="kasoku")kasoku_move(i);
      if(dist(s.x,s.y,player.playerX,player.playerY)<5 && s.pro==0){player.damage();damage.rewind();damage.play();}
      if(enemy_array.size()>0){
        for (int j = enemy_array.size()-1 ; j >= 0 && enemy_array.size()>0; j--) {
          Enemy_array e = (Enemy_array)enemy_array.get(j);
          if(dist(s.x,s.y,e.x,e.y)<15 && s.pro==1){
            e.HP--;
            shot_array.remove(i);
          }
        }
      }
    }
  }
}

void tyokusenn_move(int i){
      Shot_array s = (Shot_array)shot_array.get(i);
      s.x=s.x+s.v*cos(s.t);
      s.y=s.y+s.v*sin(s.t);
      ellipse(s.x,s.y,5,5);
      if(s.x<0 || s.x>400 || s.y<0 || s.y>450)shot_array.remove(i);
}
void kasoku_move(int i){
      Shot_array s = (Shot_array)shot_array.get(i);
      s.x=s.x+s.v*cos(s.t)*s.o_time/200;
      s.y=s.y+s.v*sin(s.t)*s.o_time/200;
      ellipse(s.x,s.y,5,5);
}
