class Draw{
  void draw(){
    time++;
    noStroke();
    background(255);
    if(mode==0){
      menu();
    }
    if(mode==0.5){
      player.HP=10;
      shot_array.clear();
      enemy_array.clear();
      image(gameover,0,0);
      if(kt.key_x==1)mode=0;
    }
    if(mode==1){
    image(stage1,0,0);
    stage.select();
    fill(0,200,0);
    player.move();
    fill(200,0,0);
    shotMove();
    fill(255,255,0);
    enemy_move();
    fill(255);
    rect(400,0,200,450);
    fill(0,0,200);
    textSize(30);
    text("BOMB:",400,30);
    text("PLAYER:"+player.HP,400,60);
    }

  }
}
