class Enemy_array{
  float x,y,HP;
  float o_time=0;
  float flag=2;
  float par1=0;
  float par2=0;
  String pro;
  void set(float x0, float y0,int HP0,String pro0){
    x = x0; y = y0; HP=HP0; pro=pro0;
  }
}
  void zako1(float x,float y){
    int HP=1;
    Enemy_array nextenemy = new Enemy_array();
    nextenemy.set(x,y,HP,"zako1");
    enemy_array.add(nextenemy);
  }
  void zako2(float x,float y){
    int HP=1;
    Enemy_array nextenemy = new Enemy_array();
    nextenemy.set(x,y,HP,"zako2");
    enemy_array.add(nextenemy);
  }
  void zako3(float x,float y){
    int HP=10;
    Enemy_array nextenemy = new Enemy_array();
    nextenemy.set(x,y,HP,"zako3");
    enemy_array.add(nextenemy);
  }
  void zako4(float x,float y){
    int HP=10;
    Enemy_array nextenemy = new Enemy_array();
    nextenemy.set(x,y,HP,"zako4");
    enemy_array.add(nextenemy);
  }
  void zako5(float x,float y){
    int HP=3;
    Enemy_array nextenemy = new Enemy_array();
    nextenemy.set(x,y,HP,"zako5");
    enemy_array.add(nextenemy);
  }
  void boss1(float x,float y){
    int HP=100;
    Enemy_array nextenemy = new Enemy_array();
    nextenemy.set(x,y,HP,"boss1");
    enemy_array.add(nextenemy);
  }
  void zako6(float x,float y){
    int HP=1000;
    Enemy_array nextenemy = new Enemy_array();
    nextenemy.set(x,y,HP,"zako6");
    enemy_array.add(nextenemy);
  }
