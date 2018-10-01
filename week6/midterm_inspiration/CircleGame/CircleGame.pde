//Circle Game

//by John C

String state = "pregame";
PImage img;
float R = 255;
float G = 255;
float B = 255;
int X=400;
int Y=400;
int X1=200;
int Y1=400;
int X2=600;
int Y2=400;
int score = 0;
int currentTime=0;
int r1=0;
int r2=0;
float ay=0;
float by=0;
float cy=0;
float dy=0;
float ey=0;
float fy=0;
float gy=0;
float hy=0;
float a2y=0;
float b2y=0;
float c2y=0;
float d2y=0;
float e2y=0;
float f2y=0;
float g2y=0;
float a3y=50;
float b3y=150;
float c3y=250;
float d3y=350;
float e3y=450;
float f3y=550;
float g3y=650;
float h3y=750;
float ax=50;
float bx=150;
float cx=250;
float dx=350;
float ex=450;
float fx=550;
float gx=650;
float hx=750;
float a2x=100;
float b2x=200;
float c2x=300;
float d2x=400;
float e2x=500;
float f2x=600;
float g2x=700;
float a3x=0;
float b3x=0;
float c3x=0;
float d3x=0;
float e3x=0;
float f3x=0;
float g3x=0;
float h3x=0;
float a1=0;
float b1=0;
float c1=0;
float d1=0;
float e1=0;
float f1=0;
float g1=0;
float h1=0;
float a2=0;
float b2=0;
float c2=0;
float d2=0;
float e2=0;
float f2=0;
float g2=0;
float a3=0;
float b3=0;
float c3=0;
float d3=0;
float e3=0;
float f3=0;
float g3=0;
float h3=0;
float health=100;
float health1=100;
float health2=100;
void setup(){
  size(800,800);
  rectMode(CENTER);
  textAlign(CENTER);
  ellipseMode(CENTER);
  img=loadImage("controls.jpg");
}

void draw(){
  if (state=="pregame"){
    background(252,166,208);
    textSize(36);
    fill(255);
    text("press 1 for single player mode", width/2, 350);
    text("press 2 for two player mode", width/2, 450);
    textSize(18);
    text("press c for controls", width/2, 500);
    r1=15;
    r2=15;
    a1 = -10;
    b1 = -10;
    c1 = -10;
    d1 = -10;
    e1 = -10;
    f1 = -10;
    g1 = -10;
    h1 = -10;
    a2 = -10;
    b2 = -10;
    c2 = -10;
    d2 = -10;
    e2 = -10;
    f2 = -10;
    g2 = -10;
    a3 = -10;
    b3 = -10;
    c3 = -10;
    d3 = -10;
    e3 = -10;
    f3 = -10;
    g3 = -10;
    h3 = -10;
    health=100;
    health1=100;
    health2=100;
    X=400;
    Y=400;
    X1=200;
    Y1=400;
    X2=600;
    Y2=400;
    R = 255;
    G = 255;
    B = 255;
  }
  else if(state=="controls"){
    image(img,0,0);
    fill(255);
    text("click to return to main menu",400,750);  
  }
  else if (state=="oneplayer"){
    background(212,166,252);
    println(ay, a2y, a3x, by, b2y, b3x, cy, c2y, c3x, dy, d2y, d3x, ey, e2y, e3x, fy, f2y, f3x, gy, g2y, g3x, hy, h3x);
    currentTime=currentTime +1;
    textSize(18);
    text(currentTime/60, 750, 50);
    fill(255,0,0);
    rect(700,750, health, 20);
    a1 = a1 + 1;
    a2 = a2 + 1;
    b1 = b1 + 1;
    b2 = b2 + 1;
    c1 = c1 + 1;
    c2 = c2 + 1;
    d1 = d1 + 1;
    d2 = d2 + 1;
    e1 = e1 + 1;
    e2 = e2 + 1;  
    f1 = f1 + 1;
    f2 = f2 + 1;
    g1 = g1 + 1;
    g2 = g2 + 1;
    h1 = h1 + 1;
    a3 = a3+1;
    b3 = b3+1;
    c3 = c3+1;
    d3 = d3+1;
    e3 = e3+1;
    f3 = f3+1;
    g3 = g3+1;
    h3 = h3+1;
    ay = 2.5*(a1-10);
    a2y = a2-100;
    a3x = 2.9*(a3-10);
    by = 2*(b1-60);
    b2y = .6*(b2-80);
    b3x = 2.4*(b3-60);
    cy = c1*1.5;
    c2y = 1.7*(c2-30);
    c3x = c3*1.5;
    dy = d1-27;
    d2y = 1.5*(d2-200);
    d3x = d3-300;
    ey = (e1-15)*2.8;
    e2y = (e2-35)*1.9;
    e3x = (e3-15)*2.8;
    fy = f1*1.2;
    f2y = (f2-20)*.6;
    f3x = f3*1.2;
    gy = g1*1.4;
    g2y = (g2-150)*2.6;
    g3x = g3*1.4;
    hy = (h1-40)*.7;
    h3x = (h3-40)*2.7;
    theCircle(ax,ay,15);
    theCircle(a2x,a2y,15);
    theCircle(bx,by,r1);
    theCircle(b2x,b2y,15);
    theCircle(cx,cy,15);
    theCircle(c2x,c2y,r2);
    theCircle(dx,dy,15);
    theCircle(d2x,d2y,15);
    theCircle(ex,ey,r1);
    theCircle(e2x,e2y,15);
    theCircle(fx,fy,15);
    theCircle(f2x,f2y,r2);
    theCircle(gx,gy,15);
    theCircle(g2x,g2y,15);
    theCircle(hx,hy,r1);
    thePlayer(X,Y,50);
    if (ay > 815){
        a1 = 5;
    }
    if (by > 815){
        b1 = 55;
    }
    if (cy > 815){
        c1 = (-6 -(2/3));
    }
    if (dy > 815){
        d1 = 17;
    }
    if (ey > 815){
        e1 = 2.5;
    }
    if (fy > 815){
        f1 = (-3 -(1/3));
    }
    if (gy > 815){
        g1 = -7.143;
    }
    if (hy > 815){
        h1 = 25.715;
    }
    if (a2y > 815){
        a2 = 90;
    }
    if (b2y > 815){
        b2 = 63.3;
    }
    if (c2y > 815){
        c2 =24.12;
    }
    if (d2y > 815){
        d2 = 193.3;
    }
    if (e2y > 815){
        e2 = 29.74;
    }
    if (f2y > 815){
        f2 = 3.3;
    }
    if (g2y > 815){
        g2 = 133.3;
    }
    if (a3x > 815){
        a3 = 5;
    }
    if (b3x > 815){
        b3 = 55;
    }
    if (c3x > 815){
        c3 = (-6 -(2/3));
    }
    if (d3x > 815){
        d3 = 17;
    }
    if (e3x > 815){
        e3 = 2.5;
    }
    if (f3x > 815){
        f3 = (-3 -(1/3));
    }
    if (g3x > 815){
        g3 = -7.143;
    }
    if (h3x > 815){
        h3 = 25.715;
    }
    if ((X+25) >= ax && ax >= (X-25) && ay >= (Y-25) && ay <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= bx && bx >= (X-25) && by >= (Y-25) && by <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= cx && cx >= (X-25) && cy >= (Y-25) && cy <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= dx && dx >= (X-25) && dy >= (Y-25) && dy <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= ex && ex >= (X-25) && ey >= (Y-25) && ey <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= fx && fx >= (X-25) && fy >= (Y-25) && fy <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= gx && gx >= (X-25) && gy >= (Y-25) && gy <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= hx && hx >= (X-25) && hy >= (Y-25) && hy <= (Y+25)){
      health = health - 2;
    }
     if ((X+25) >= a2x && a2x >= (X-25) && a2y >= (Y-25) && a2y <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= b2x && b2x >= (X-25) && b2y >= (Y-25) && b2y <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= c2x && c2x >= (X-25) && c2y >= (Y-25) && c2y <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= d2x && d2x >= (X-25) && d2y >= (Y-25) && d2y <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= e2x && e2x >= (X-25) && e2y >= (Y-25) && e2y <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= f2x && f2x >= (X-25) && f2y >= (Y-25) && f2y <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= g2x && g2x >= (X-25) && g2y >= (Y-25) && g2y <= (Y+25)){
      health = health - 2;
    }
    if ((X+25) >= a3x && a3x >= (X-25) && a3y >= (Y-25) && a3y <= (Y+25) && currentTime/60 > 20){
      health = health - 2;
    }
    if ((X+25) >= b3x && b3x >= (X-25) && b3y >= (Y-25) && b3y <= (Y+25) && currentTime/60 > 30){
      health = health - 2;
    }
    if ((X+25) >= c3x && c3x >= (X-25) && c3y >= (Y-25) && c3y <= (Y+25) && currentTime/60 > 20){
      health = health - 2;
    }
    if ((X+25) >= d3x && d3x >= (X-25) && d3y >= (Y-25) && d3y <= (Y+25) && currentTime/60 > 30){
      health = health - 2;
    }
    if ((X+25) >= e3x && e3x >= (X-25) && e3y >= (Y-25) && e3y <= (Y+25) && currentTime/60 > 20){
      health = health - 2;
    }
    if ((X+25) >= f3x && f3x >= (X-25) && f3y >= (Y-25) && f3y <= (Y+25) && currentTime/60 > 30){
      health = health - 2;
    }
    if ((X+25) >= g3x && g3x >= (X-25) && g3y >= (Y-25) && g3y <= (Y+25) && currentTime/60 > 20){
      health = health - 2;
    }
    if ((X+25) >= h3x && h3x >= (X-25) && h3y >= (Y-25) && h3y <= (Y+25) && currentTime/60 > 30){
      health = health - 2;
    }
    if((currentTime/60) < 2){
    textSize(36);
    text("Dodge the circles", width/2, (height/2)-200);
    }
    if((currentTime/60) == 20){
      a3 = 5;
      c3 = (-6 -(2/3));
      e3 = 2.5;
      g3 = -7.143;   
    }
    if ((currentTime/60) > 20){
    theCircle(a3x,a3y,15);
    theCircle(c3x,c3y,15);
    theCircle(e3x,e3y,r2);
    theCircle(g3x,g3y,15);
    }
    if((currentTime/60) == 30){
      b3 = 55;
      d3 = 17;
      f3 = (-3 -(1/3));
      h3 = 25.715;
    }
    if ((currentTime/60) > 30){
      theCircle(b3x,b3y,15);
      theCircle(d3x,d3y,r1);
      theCircle(f3x,f3y,15);
      theCircle(h3x,h3y,15);
    }
    if ((currentTime/60) >= 50){
      R = R+random(20);
      B = B+random(20);
      G = G+random(20);
      r1=int(random(10,20));
      r2=int(random(10,20));
    }
    if (G>255){
      G = 0;
    }
    if (B>255){
      B = 0;
    }
    if (R>255){
      R = 0;
    }
    if ((health) <= 0){
      score = int(currentTime)/60;
      state = "gameover1";
    }
   }
   else if(state== "twoplayer"){
    background(212,166,252);
    fill(255,0,0);
    rect(700,700, health1, 20);
    rect(700,750, health2, 20);
    currentTime=currentTime +1;
    a1 = a1 + 1;
    a2 = a2 + 1;
    b1 = b1 + 1;
    b2 = b2 + 1;
    c1 = c1 + 1;
    c2 = c2 + 1;
    d1 = d1 + 1;
    d2 = d2 + 1;    
    e1 = e1 + 1;
    e2 = e2 + 1;    
    f1 = f1 + 1;
    f2 = f2 + 1;
    g1 = g1 + 1;
    g2 = g2 + 1;
    h1 = h1 + 1;
    a3 = a3+1;
    b3 = b3+1;
    c3 = c3+1;
    d3 = d3+1;
    e3 = e3+1;
    f3 = f3+1;
    g3 = g3+1;
    h3 = h3+1;
    ay = 2.5*(a1-10);
    a2y = a2-100;
    a3x = 2.9*(a3-10);
    by = 2*(b1-60);
    b2y = .6*(b2-80);
    b3x = 2.4*(b3-60);
    cy = c1*1.5;
    c2y = 1.7*(c2-30);
    c3x = c3*1.5;
    dy = d1-27;
    d2y = 1.5*(d2-200);
    d3x = d3-27;
    ey = (e1-15)*2.8;
    e2y = (e2-35)*1.9;
    e3x = (e3-15)*2.8;
    fy = f1*1.2;
    f2y = (f2-20)*.6;
    f3x = f3*1.2;
    gy = g1*1.4;
    g2y = (g2-150)*2.6;
    g3x = g3*1.4;
    hy = (h1-40)*.7;
    h3x = (h3-40)*2.7;
    theCircle(ax,ay,15);
    theCircle(a2x,a2y,15);
    theCircle(bx,by,r1);
    theCircle(b2x,b2y,15);
    theCircle(cx,cy,15);
    theCircle(c2x,c2y,r2);
    theCircle(dx,dy,15);
    theCircle(d2x,d2y,15);
    theCircle(ex,ey,r1);
    theCircle(e2x,e2y,15);
    theCircle(fx,fy,15);
    theCircle(f2x,f2y,r2);
    theCircle(gx,gy,15);
    theCircle(g2x,g2y,15);
    theCircle(hx,hy,r1);
    thePlayer(X1,Y1,50);
    thePlayer(X2,Y2,50);
    textSize(12);
    fill(0);
    text("1",X1,Y1);
    text("2",X2,Y2);
    text("1",630,700);
    text("2",630,750);
    if (ay > 810){
        a1 = 5;
    }
    if (by > 810){
        b1 = 55;
    }
    if (cy > 810){
        c1 = (-6 -(2/3));
    }
    if (dy > 810){
        d1 = 17;
    }
    if (ey > 810){
        e1 = 2.5;
    }
    if (fy > 810){
        f1 = (-3 -(1/3));
    }
    if (gy > 810){
        g1 = -7.143;
    }
    if (hy > 810){
        h1 = 25.715;
    }
    if (a2y > 810){
        a2 = 90;
    }
    if (b2y > 810){
        b2 = 63.3;
    }
    if (c2y > 810){
        c2 =24.12;
    }
    if (d2y > 810){
        d2 = 193.3;
    }
    if (e2y > 810){
        e2 = 29.74;
    }
    if (f2y > 810){
        f2 = 3.3;
    }
    if (g2y > 810){
        g2 = 133.3;
    }
    if (a3x > 810){
        a3 = 5;
    }
    if (b3x > 810){
        b3 = 55;
    }
    if (c3x > 810){
        c3 = (-6 -(2/3));
    }
    if (d3x > 810){
        d3 = 17;
    }
    if (e3x > 810){
        e3 = 2.5;
    }
    if (f3x > 810){
        f3 = (-3 -(1/3));
    }
    if (g3x > 810){
        g3 = -7.143;
    }
    if (h3x > 810){
        h3 = 25.715;
    }
    if ((X1+25) >= ax && ax >= (X1-25) && ay >= (Y1-25) && ay <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= bx && bx >= (X1-25) && by >= (Y1-25) && by <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= cx && cx >= (X1-25) && cy >= (Y1-25) && cy <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= dx && dx >= (X1-25) && dy >= (Y1-25) && dy <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= ex && ex >= (X1-25) && ey >= (Y1-25) && ey <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= fx && fx >= (X1-25) && fy >= (Y1-25) && fy <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= gx && gx >= (X1-25) && gy >= (Y1-25) && gy <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= hx && hx >= (X1-25) && hy >= (Y1-25) && hy <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= a2x && a2x >= (X1-25) && a2y >= (Y1-25) && a2y <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= b2x && b2x >= (X1-25) && b2y >= (Y1-25) && b2y <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= c2x && c2x >= (X1-25) && c2y >= (Y1-25) && c2y <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= d2x && d2x >= (X1-25) && d2y >= (Y1-25) && d2y <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= e2x && e2x >= (X1-25) && e2y >= (Y1-25) && e2y <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= f2x && f2x >= (X1-25) && f2y >= (Y1-25) && f2y <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X1+25) >= g2x && g2x >= (X1-25) && g2y >= (Y1-25) && g2y <= (Y1+25)){
      health1 = health1 - 2;
    }
    if ((X2+25) >= ax && ax >= (X2-25) && ay >= (Y2-25) && ay <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= bx && bx >= (X2-25) && by >= (Y2-25) && by <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= cx && cx >= (X2-25) && cy >= (Y2-25) && cy <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= dx && dx >= (X2-25) && dy >= (Y2-25) && dy <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= ex && ex >= (X2-25) && ey >= (Y2-25) && ey <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= fx && fx >= (X2-25) && fy >= (Y2-25) && fy <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= gx && gx >= (X2-25) && gy >= (Y2-25) && gy <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= hx && hx >= (X2-25) && hy >= (Y2-25) && hy <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= a2x && a2x >= (X2-25) && a2y >= (Y2-25) && a2y <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= b2x && b2x >= (X2-25) && b2y >= (Y2-25) && b2y <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= c2x && c2x >= (X2-25) && c2y >= (Y2-25) && c2y <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= d2x && d2x >= (X2-25) && d2y >= (Y2-25) && d2y <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= e2x && e2x >= (X2-25) && e2y >= (Y2-25) && e2y <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= f2x && f2x >= (X2-25) && f2y >= (Y2-25) && f2y <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X2+25) >= g2x && g2x >= (X2-25) && g2y >= (Y2-25) && g2y <= (Y2+25)){
      health2 = health2 - 2;
    }
    if ((X1+25) >= a3x && a3x >= (X1-25) && a3y >= (Y1-25) && a3y <= (Y1+25) && currentTime/60 > 20){
      health1 = health1 - 2;
    }
    if ((X1+25) >= b3x && b3x >= (X1-25) && b3y >= (Y1-25) && b3y <= (Y1+25) && currentTime/60 > 30){
      health1 = health1 - 2;
    }
    if ((X1+25) >= c3x && c3x >= (X1-25) && c3y >= (Y1-25) && c3y <= (Y1+25) && currentTime/60 > 20){
      health1 = health1 - 2;
    }
    if ((X1+25) >= d3x && d3x >= (X1-25) && d3y >= (Y1-25) && d3y <= (Y1+25) && currentTime/60 > 30){
      health1 = health1 - 2;
    }
    if ((X1+25) >= e3x && e3x >= (X1-25) && e3y >= (Y1-25) && e3y <= (Y1+25) && currentTime/60 > 20){
      health1 = health1 - 2;
    }
    if ((X1+25) >= f3x && f3x >= (X1-25) && f3y >= (Y1-25) && f3y <= (Y1+25) && currentTime/60 > 30){
      health1 = health1 - 2;
    }
    if ((X1+25) >= g3x && g3x >= (X1-25) && g3y >= (Y1-25) && g3y <= (Y1+25) && currentTime/60 > 20){
      health1 = health1 - 2;
    }
    if ((X1+25) >= h3x && h3x >= (X1-25) && h3y >= (Y1-25) && h3y <= (Y1+25) && currentTime/60 > 30){
      health1 = health1 - 2;
    }
    if ((X2+25) >= a3x && a3x >= (X2-25) && a3y >= (Y2-25) && a3y <= (Y2+25) && currentTime/60 > 20){
      health2 = health2 - 2;
    }
    if ((X2+25) >= b3x && b3x >= (X2-25) && b3y >= (Y2-25) && b3y <= (Y2+25) && currentTime/60 > 30){
      health2 = health2 - 2;
    }
    if ((X2+25) >= c3x && c3x >= (X2-25) && c3y >= (Y2-25) && c3y <= (Y2+25) && currentTime/60 > 20){
      health2 = health2 - 2;
    }
    if ((X2+25) >= d3x && d3x >= (X2-25) && d3y >= (Y2-25) && d3y <= (Y2+25) && currentTime/60 > 30){
      health2 = health2 - 2;
    }
    if ((X2+25) >= e3x && e3x >= (X2-25) && e3y >= (Y2-25) && e3y <= (Y2+25) && currentTime/60 > 20){
      health2 = health2 - 2;
    }
    if ((X2+25) >= f3x && f3x >= (X2-25) && f3y >= (Y2-25) && f3y <= (Y2+25) && currentTime/60 > 30){
      health2 = health2 - 2;
    }
    if ((X2+25) >= g3x && g3x >= (X2-25) && g3y >= (Y2-25) && g3y <= (Y2+25) && currentTime/60 > 20){
      health2 = health2 - 2;
    }
    if ((X2+25) >= h3x && h3x >= (X2-25) && h3y >= (Y2-25) && h3y <= (Y2+25) && currentTime/60 > 30){
      health2 = health2 - 2;
    }
    if((currentTime/60) < 2){
      textSize(36);
      fill(255);
      text("Dodge the circles", width/2, (height/2)-200);
    }
    if((currentTime/60) == 20){
      a3 = 5;
      c3 = (-6 -(2/3));
      e3 = 2.5;
      g3 = -7.143;   
    }
    if ((currentTime/60) > 20){
    theCircle(a3x,a3y,15);
    theCircle(c3x,c3y,15);
    theCircle(e3x,e3y,r2);
    theCircle(g3x,g3y,15);
    }
    if((currentTime/60) == 30){
      b3 = 55;
      d3 = 17;
      f3 = (-3 -(1/3));
      h3 = 25.715;
    }
    if ((currentTime/60) > 30){
      theCircle(b3x,b3y,15);
      theCircle(d3x,d3y,r1);
      theCircle(f3x,f3y,15);
      theCircle(h3x,h3y,15);
    }
    if ((currentTime/60) >= 50){
      R = R+random(20);
      B = B+random(20);
      G = G+random(20);
    }
    if (G>255){
      G = 0;
    }
    if (B>255){
      B = 0;
    }
    if (R>255){
      R = 0;
    }
    if ((health1) <= 0){
      state = "gameover3";
    }
    if ((health2) <= 0){
      state = "gameover2";
    }
  }
  else if(state=="gameover1"){
    background(252,166,208);
    fill(255);
    textSize(36);
    text("you lasted for " + str(score) + " seconds.", 400, 400);
    textSize(10);
    text("click to return to main menu",400,500);
  }
  else if(state=="gameover2"){
    background(252,166,208);
    fill(255);    
    textSize(36);
    text("player 1 wins.", 400, 400);
    textSize(10);
    text("click to return to main menu",400,500);
  }
  else if(state=="gameover3"){
    background(252,166,208);
    fill(255);
    textSize(36);
    text("player 2 wins.", 400, 400);
    textSize(10);
    text("click to return to main menu",400,500);
  }
}

void mousePressed(){
  if (state== "controls"){
    state="pregame";
  }
  else if (state== "gameover1"){
    state="pregame";
  }
  else if (state== "gameover2"){
    state="pregame";
  }
  else if (state== "gameover3"){
    state="pregame";
  }
}

void keyPressed(){
  if (key=='1' && state=="pregame"){
    state = "oneplayer"; 
    currentTime = 0;
  }
  if (key=='2' && state=="pregame"){
    state = "twoplayer";
    currentTime = 0;
  }
  if (key=='c' && state=="pregame"){
    state = "controls";
  }
  if (key=='w' && state=="oneplayer" && Y >= 65){
      Y = Y-40;
  }
  if (key=='w' && state=="oneplayer" && Y < 65){
      Y =25;
  }
  if (key=='a' && state=="oneplayer" && X >= 65){
      X=X-40;
  }
  if (key=='a' && state=="oneplayer" && X < 65){
      X=25;
  }
  if (key=='s' && state=="oneplayer" && Y <= 735){
    Y=Y+40;
  }
  if (key=='s' && state=="oneplayer" && Y > 735){
    Y=775;
  }
  if (key=='d' && state=="oneplayer" && X <=735){
    X=X+40;
  }
  if (key=='d' && state=="oneplayer" && X > 735){
    X=775;
  }
  if (key=='w' && state=="twoplayer" && Y1 >= 65){
      Y1 = Y1-40;
   }
  if (key=='w' && state=="twoplayer" && Y1 < 65){
      Y1 =25;
  }
  if (key=='a' && state=="twoplayer" && X1 >= 65){
      X1=X1-40;
  }
  if (key=='a' && state=="twoplayer" && X1 < 65){
      X1=25;
  }
  if (key=='s' && state=="twoplayer" && Y1 <= 735){
    Y1=Y1+40;
  }
  if (key=='s' && state=="twoplayer" && Y1 > 735){
    Y1=775;
  }
  if (key=='d' && state=="twoplayer" && X1 <=735){
    X1=X1+40;
  }
  if (key=='d' && state=="twoplayer" && X1 > 735){
    X1=775;
  }
  if (key=='i' && state=="twoplayer" && Y2 >= 65){
    Y2=Y2-40;
  }
  if (key=='i' && state=="twoplayer" && Y2 < 65){
    Y2=25;
  }
  if (key=='j' && state=="twoplayer" && X2 >= 65){
    X2=X2-40;
  }
  if (key=='j' && state=="twoplayer" && X2 < 65){
    X2=25;
  }
  if (key=='k' && state=="twoplayer" && Y2 <= 735){
    Y2=Y2+40;
  }
  if (key=='k' && state=="twoplayer" && Y2 > 735){
    Y2=775;
  }
  if (key=='l' && state=="twoplayer" && X2 <=735){
    X2=X2+40;
  }
  if (key=='l' && state=="twoplayer" && X2 >735){
    X2=775;
  }
}
void theCircle(float w, float z, int dia){
  fill(R,G,B);
  noStroke();
  ellipse(w,z,dia,dia);
}
void thePlayer(float rectx, float recty, float rad){
      fill(255);
      rect(rectx,recty,rad,rad);
}
