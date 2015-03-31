int defaultP = 150;
  int x=1;
  int y=150;
    int abuf;
  int bbuf;
  boolean flag;
void setup()
{
  size(500,300);
  background(255);
  setMemory();
  abuf=0;
  bbuf=0;
}

void draw()
{
  x=x+1;
  if(x>500)
  {
    x=1;
  }
  y = readData();
  ProtPoint(x,y);
  if(x==500){
    background(255);
    setMemory();
    flag=false;
  }
}

void ProtPoint(int a,int b)
{
  stroke(255,0,0);
  //point(a,b);
  
  delay(10);
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
  int aa[]={10,20,30,40,50,60,70,80,90,100};
  int bb[]={100,90,80,70,60,50,40,30,20,10};
  
  int rand1=(int)random(10);
  int rand2 =(int)random(10);
  
  return(150-aa[rand1]);
}
