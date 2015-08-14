class Shot_array{
  float x,y,v,t,pro;
  float o_time=0;
  String pro_2;
  void set(float x0, float y0,float v0,float t0,float pro0,String pro1){
    x = x0; y = y0; v = v0; t = t0; pro = pro0;pro_2=pro1;
  }
}

void tyokusen(float enemyX,float enemyY,float v,float t,float pro){
  Shot_array nextshot = new Shot_array();
  nextshot.set(enemyX, enemyY,v,t,pro,"tyokusenn");
  shot_array.add(nextshot);
}
void kasoku(float enemyX,float enemyY,float v,float t,float pro){
  Shot_array nextshot = new Shot_array();
  nextshot.set(enemyX, enemyY,v,t,pro,"kasoku");
  shot_array.add(nextshot);
}
