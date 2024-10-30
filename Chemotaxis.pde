chemotaxis [] bacterium; 
void setup(){ 
  size(1250,600); 
  bacterium= new chemotaxis[100]; 
  for ( int i= 0 ; i <bacterium.length;i++){ 
    bacterium[i]=new chemotaxis(10,2,3);
    
}} 
void draw(){
  background(160,160,50); 
  // int gb=(int)Math.random()*255+1;int r=(int)Math.random()*255+1;int z=(int)Math.random()*255+1;
  for ( int i= 0 ; i <bacterium.length;i++){ 
 //   fill(gb,r,z); 
    bacterium[i].show(); 
    bacterium[i].if_mouse_pressed(); 
    //bacterium[i].chase();

  }}
class chemotaxis{
  int jiggle, xspeed,yspeed,posx,posy,str,ytr,colors,colorz,colorss; 
  chemotaxis(int jig, int x, int y ){ 
    jiggle=jig; 
    xspeed=x; 
    yspeed=y; 
    str=(int)(Math.random()*1250)+1; 
    ytr=(int)(Math.random()*600)+1; 
    posx=mouseX; 
    posy=mouseY; 
    colors=(int)(Math.random()*256+1);
    colorz=(int)(Math.random()*256+1);
    colorss=(int)(Math.random()*256+1);
  } 
 
 
  void show(){ 
    fill(colors,colorz,colorss) ;
    ellipse(str+jiggle,ytr+jiggle,20,20);
  } 
  void if_mouse_pressed(){ 
    if (posx==str && posy==ytr){
       posx=mouseX; 
       posy=mouseY; 
       str+=(int)(Math.random()*1000-500);
       colors=(int)(Math.random()*256+1);
       colorz=(int)(Math.random()*256+1);
       colorss=(int)(Math.random()*256+1);
       ytr+=(int)(Math.random()*1000-500);
                                       
     }
     else{
      posx=mouseX; 
      posy=mouseY; 
     if (posx>str){ 
       str+=(int)(Math.random()*6-2);
     } if( posx<str){
       str-=(int)(Math.random()*6-2);
     } else { 
       str-=(int)(Math.random()*6-3);
     } 
     if (posy>ytr){
       ytr+=(int)(Math.random()*6-2);
     }if (posy<ytr){
       ytr-=(int)(Math.random()*6-2);
     }else { 
       ytr-=(int)(Math.random()*6-3);}
    }
}}
