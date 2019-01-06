PImage img_p,img_m,img_g,
p_min_p,p_hora_p,

p_min,p_hora,

p_min_g,p_hora_g;


class clock{

  float x,y;
  float vel,angulo=random(0,360);
  String tamanho;
  clock(float x,float y,float vel,String tamanho){
  p_min_p=loadImage("p.pequeno.min.png");
  p_hora_p=loadImage("p.pequeno.hora.png");
  
  p_min=loadImage("p.min.png");
  p_hora=loadImage("p.hora.png");
  
  p_min_g=loadImage("p.grande.min.png");
  p_hora_g=loadImage("p.grande.hora.png");
  
  img_p=loadImage("clock_Pequeno.png");
  img_m=loadImage("clock_Medio.png");
  img_g=loadImage("clock_Grande.png");
  this.vel=vel;
  this.x=x;
  this.y=y;
  this.tamanho=tamanho;
  }




void show(){for(int i=1;i<4;i++){
  
/////////////////////////////////////////////////////////////////////////  
    if(tamanho=="pequeno"){   
 
     
      image(img_p,x-img_p.width/2-5,y-img_p.height/2-5);
//HORA
pushMatrix();
translate(x-8,y);
rotate(angulo/12);
image(p_hora_p,-12,-146);
popMatrix();


//MINUTO
pushMatrix();
translate(x-8,y);
rotate(angulo);
image(p_min_p,0-11,0-148);
popMatrix();

}

////////////////////////////////////////////////////////////////////////

    if(tamanho=="medio"){  
 image(img_m,x-img_m.width/2-5,y-img_m.height/2-5);
//HORA
pushMatrix();
translate(x-8,y);
rotate(angulo/12);
image(p_hora,0-12,0-200);
popMatrix();


//MINUTO
pushMatrix();
translate(x-8,y);
rotate(angulo);
image(p_min,0-13,0-215);
popMatrix();

}

//////////////////////////////////////////////////////////////////////
     if(tamanho=="grande"){  
 image(img_g,x-img_g.width/2-5,y-img_g.height/2-5);
//HORA
pushMatrix();
translate(x-8,y);
rotate(angulo/12);
image(p_hora_g,0-15,0-260);
popMatrix();


//MINUTO
pushMatrix();
translate(x-8,y);
rotate(angulo);
image(p_min_g,0-15,0-260);
popMatrix();
}
 // print("| img_p.width: ",img_p.width,"| img_p.height: ",img_p.height);
 // print("|| img_m.width: ",img_m.width,"|| img_m.height: ",img_m.height);
 // println("||| img_g.width: ",img_g.width,"||| img_g.height: ",img_g.height);
  
//println("|| p_min_p.width: ",p_min_p.width,"|| p_min_p.height: ",p_min_p.height,"|| p_hora_p.width: ",p_hora_p.width,"|| p_hora_p.height: ",p_hora_p.height);
//println("|| p_min.width: ",p_min.width,"|| p_min.height: ",p_min.height,"|| p_hora.width: ",p_hora.width,"|| p_hora.height: ",p_hora.height);
//println("|| p_min_g.width: ",p_min_g.width,"|| p_min_g.height: ",p_min_g.height,"|| p_hora_g.width: ",p_hora_g.width,"|| p_hora_g.height: ",p_hora_g.height);




}
}



void update(){angulo+=vel;
if(angulo==360){angulo=0;}


}
void teste(){
  
  pushMatrix();
  translate(x,y);
  rotate(angulo);
image(p_min_p,0,0);
image(p_hora_p,0,9);
popMatrix();

/*
image(p_min,0,0);
image(p_hora,0,16);

image(p_min_g,0,0);
image(p_hora_g,0,0);

*/

}



}
