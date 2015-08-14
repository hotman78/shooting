class Stage{
  void select(){
    if(stage_sel==1 && difficulty==1)stage.stage1_easy();
    if(stage_sel==0 && difficulty==1)stage.extra1();
  }
  void stage1_easy(){
    for(int i=0;i<3;i++){
      if(time==6*(i+1))zako1(0,100+10*(2-i));
      if(time==6*(i+1))zako2(400,100+10*(2-i));
      if(time==18+6*(i+1))zako1(0,100+10*(2-i));
      if(time==18+6*(i+1))zako2(400,100+10*(2-i));
    }
    if(time==40)zako4(200,-100);
    if(time==40)zako3(200,-100);
    if(time==300)zako3(100,-100);
    if(time==300)zako3(300,-100);
    if(time==2200)boss1(200,100);
    for(int i=1;i<20;i++){
      if(time==500+i*60)zako5(i*10,-100);
      if(time==500+i*60)zako5(400-i*10,-100);
    }
  }
  void extra1(){
    if(time==0){zako6(200,100);}
  }
}
