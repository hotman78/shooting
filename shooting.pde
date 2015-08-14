import ddf.minim.*;
Minim minim;
AudioSnippet damage;
AudioSnippet shot1;
ArrayList<Shot_array> shot_array;
ArrayList<Enemy_array> enemy_array;
PImage[] fire;
PImage stage1;
PImage zako;
PImage gameover;
PImage shot;
float mode=0;
int key_n=0;
int stage_sel=1;
int difficulty=1;
float time;
Draw draw;
Player player;
KeyTipe kt;
Stage stage;

void setup(){
  size(600,450);
  minim = new Minim( this );
  damage= minim.loadSnippet("nc899.wav");
  shot1= minim.loadSnippet("shot002.wav");
  PFont font = loadFont("HGPMinchoB-48.vlw");
  stage1 = loadImage("pipo-battlebg020.jpg");
  gameover = loadImage("gameover.png");
  zako =loadImage("dot-kaze-ti.png");
  shot =loadImage("shot_all.png");
  fire = new PImage[5];
  for(int i=0;i<5;i++)fire[i] = loadImage("fire"+i+".png");
  shot_array = new ArrayList<Shot_array>();
  enemy_array =new ArrayList<Enemy_array>();
  draw =new Draw();
  player=new Player();
  kt = new KeyTipe();
  stage = new Stage();
}

void draw(){
  draw.draw();
}

void keyPressed(){
  kt.keyPressed();
}

void keyReleased(){
  kt.keyReleased();
}

void stop()
{
  shot1.close();
  damage.close();
  minim.stop();
  super.stop();
}
