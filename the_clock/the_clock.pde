
clock c,c2,c3,c4,c5,c6;

clock[] clock=new clock[15];
void setup(){
//size(600,600);
  fullScreen();
//imageMode(CENTER);
background(0,0,0);
//int index=0;
//for(int i=0;i<2;i++){clock[index++]=new clock(random(0,width),random(height-200,height),random(-0.2,0.2),"pequeno");}
//for(int i=2;i<8;i++){clock[index++]=new clock(random(200,width-200),random(0,height),random(-0.2,0.2),"grande");}
//for(int i=8;i<15;i++){clock[index++]=new clock(random(0,width),random(0,height),random(-0.2,0.2),"medio");}

clock[0]=new clock(0,height/4,0.02,"grande");
clock[1]=new clock(width,height/4*3,0.02,"grande");
clock[2]=new clock(width/2,height-100,0.02,"grande");
clock[3]=new clock(width/5*4,height/10,0.08,"medio");
clock[4]=new clock(width/8*7,height/10*3,0.08,"pequeno");
clock[5]=new clock(width/5*2-150,height/3+100,0.08,"grande");
clock[6]=new clock(width/2+250,height/3+100,0.08,"medio");
clock[7]=new clock(width/2,-100,0.08,"grande");
clock[8]=new clock(1176,1014,0.08,"pequeno");
clock[9]=new clock(220,865,0.08,"medio");

}




void draw(){
background(215,229,227);
clock[0].update();
clock[1].update();
clock[2].update();
clock[3].update();
clock[4].update();
clock[5].update();
clock[6].update();
clock[7].update();
clock[8].update();
clock[9].update();


clock[9].show();
clock[8].show();
clock[7].show();
clock[6].show();
clock[4].show();
clock[0].show();
clock[5].show();
clock[1].show();
clock[3].show();
clock[2].show();

//saveFrame("folder/clock_####.png");

//println(frameRate);
}

void mousePressed(){
println("  mouseX= ",mouseX,"  mouseY= ",mouseY);


}
