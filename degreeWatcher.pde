//speed is deg*time[ms]
int speed=3;
int width =1000;
int height = 500;
int x=1;
int y=height/2;
int y2=height/2;
int abuf;
int bbuf;
boolean flag;
boolean flag2;
int count=0;
int data=0;
boolean change;
void setup()
{
  change=false;
  size(width,height);
  background(255);
  setMemory();
  abuf=0;
  bbuf=0;
  flag2=false;
  noStroke();
}

void draw()
{
  
  x=x+1;
  if(x>width) x=1;
  
  y = readData();
  data=data+(y-data)/2;
  delay(speed*abs((y-data)/2));
  if(change==true){
    setMemory(); 
  ProtPoint(x,height/2-data);
  }else{
  demoMode(data);
  }
  if(x==width){
    background(255);
    setMemory();
    flag=false;
  }
  flag2=true;
}

void demoMode(int data)
{
  
  noStroke();
  translate(width/2, height/2);
  rotate((float)data/180*PI); 
  ellipseMode( CENTER );
  background(255);
  fill(52, 152, 219);
  ellipse(0, 0, height-50, height/6); 
  fill(200);
  ellipse(height/2-height/6,0,20,20);
  fill(100);
  ellipse(0,0,5,5);
  
}

void ProtPoint(int a,int b)
{
  stroke(192, 57, 43);
  if(flag==true )
  {
    line(abuf,bbuf,a,b);
  }
  abuf=a;
  bbuf=b;
  flag=true;
}

void setMemory()
{
  stroke(200,200,200);
  line(0,height/2,width,height/2);
  line(0,height/3,width,height/3);
  line(0,height/6,width,height/6);
  line(0,2*height/3,width,2*height/3);
  line(0,5*height/6,width,5*height/6);
}

int readData()
{
  int aa[]={-90,-70,-50,-30,-10,10,30,50,70,90};
  count++;
  if(count>=100)
  {
    count=0;
  }
  
  return(aa[count/10]);
}

void keyPressed() {
  if (key == 'A' || key == 'a') {          // Tabキーに反応
    change=true;
    background(255);
    
  }  else if (key == 'B' || key == 'b') {  // Aキーに反応
    change=false;
    background(255);
  }
}
