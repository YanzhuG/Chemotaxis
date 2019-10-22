 //declare bacteria variables here   
Bacteria[] a; 
 int x=150;
 int y=150;
 int col;
 void setup(){   
   size(255,255);
   background(0);
   a=new Bacteria[10];
   for(int i=0;i<a.length;i++){
     a[i]=new Bacteria();
   }
 	//initialize bacteria variables here   
 }   
 void draw()   
 { 
   fill(255,255,255,5);
   rect(0,0,255,255);
  for(int i=0;i<a.length;i++){
     a[i].move();
     a[i].show();
      
   } 
   
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
   int myX,myY;
   Bacteria(){
     myX=x;
     myY=y;
   }
 	void show(){
   
  stroke(255,myX,myY,150);
  fill(myX,200,myY,50);
   ellipse(myX,myY,35,35);
   
 }
 void move(){
   if(mouseX<255&&mouseX>0&&mouseY<255&&mouseY>0&&get(mouseX,mouseY)!=color(get(10,10)))
     myY=myY+1;
     if(myY>=255)
     myY=0;
 else{
   myX=myX+(int)(Math.random()*5)-2;
   myY=myY+(int)(Math.random()*3)-1;
 }
 }
 }//lots of java!   
 
