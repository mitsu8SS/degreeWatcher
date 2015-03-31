int defaultP = 150;
  int x=1;
  int y=150;
  int y2=150;
  int abuf;
  int bbuf;
  boolean flag;
  boolean flag2;
  int count=0;
  int data=0;
void setup()
{
  size(500,300);
  background(255);
  setMemory();
  abuf=0;
  bbuf=0;
  flag2=false;
}

void draw()
{
  //
  x=x+1;
  if(x>500)
  {
    x=1;
  }
  y = readData();
  if(flag2==false){
  }
  data=data+(y-data)/2;
  
  //ProtPoint(x,150-data);
  demoMode(data);
  if(x==500){
    background(255);
    setMemory();
    flag=false;
  }
  flag2=true;
}

void demoMode(int data)
{
    
  stroke(0);
  translate(250, 150);
  rotate((float)data/180*PI); 
  ellipseMode( CENTER );
  background(255);
  
  ellipse(0, 0, 250, 50); 
  ellipse(80,0,20,20);
  ellipse(0,0,5,5);
  
}

void ProtPoint(int a,int b)
{
  stroke(255,0,0);
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
  line(0,150,500,150);
  line(0,100,500,100);
  line(0,50,500,50);
  line(0,200,500,200);
  line(0,250,500,250);
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
