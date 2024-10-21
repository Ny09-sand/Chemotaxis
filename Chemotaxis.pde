chemotaxis [] bacterium; 
void setup(){ 
  size(500,500); 
  bacterium= new chemotaxis[15]; 
  for ( int i= 0 ; i <bacterium.length;i++){ 
    bacterium[i]=new chemotaxis(10,2,3);
    
    
}} 
void draw(){
  background(160,160,50); 
  for ( int i= 0 ; i <bacterium.length;i++){ 
    bacterium[i].jiglr(); 
    bacterium[i].show(); 
    //bacterium[i].chase();

  }}
class chemotaxis{
  int jiggle, xspeed,yspeed,posx,posy,str,ytr,WAAZAAA,WEEE; 
  chemotaxis(int jig, int x, int y ){ 
    jiggle=jig; 
    xspeed=x; 
    yspeed=y; 
    str=(int)(Math.random()*500)+1; 
    ytr=(int)(Math.random()*500)+1; 
    posx=mouseX; 
    posy=mouseY; 
    WAAZAAA=abs(posx-str); 
    WEEE=abs(posy-str);
  } 
  void jiglr(){ 
    jiggle*=-1; 
  } 
  void sets(){ 
    str=(int)(Math.random()*500)+1; 
    ytr=(int)(Math.random()*500)+1; 
  } 
  void show(){ 
    
    ellipse(str+jiggle,ytr+jiggle,20,20);
  } 
  void if_mouse_pressed(){ 
    if (mousePressed){
     if (posx>str){ 
       str+=(int)(Math.random()*5-2);
     }else if( posx<str
    }
  } 
} 


