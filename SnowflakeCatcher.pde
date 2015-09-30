Snowflake [] frosty = new Snowflake[500];
int XX = 300;
int YY = -300;
void setup()
{
  background(0);
  size(600,600);
  for (int i=0; i<frosty.length;i++)
  {
frosty[i]=new Snowflake();
  }
  //your code here
}

void draw()
{
  for (int i =0;i<frosty.length;i++)
  {
    frosty[i].erase();
    frosty[i].lookDown();
    frosty[i].move();
    frosty[i].wrap();
    frosty[i].show();
  }
  fill(0);
  ellipse(XX,YY,75,75);
  fill(255);
  ellipse(XX,YY,70,70);
  YY++;
  
  //your code here
}
void mouseDragged()
{
  fill(mouseX,mouseY,125);
  ellipse(mouseX,mouseY,15,15);
  //your code here
}

class Snowflake
{
  int x,y;
  boolean isMoving;
  //class member variable declarations
  Snowflake()
  {
    x = (int)(Math.random()*600);
    y = (int)(Math.random()*600);
    isMoving = true;


    //class member variable initializations
  }
  void show()
  {
    fill(255);
    ellipse(x,y,5,5);
    //your code here
  }
  void lookDown()
  {
    if (y>-5 && y<595 && get(x,y+4)!=color(0))
    {
      isMoving = false;
    }
    else
    {
      isMoving = true;
    }
      //your code here
  }
  void erase()
  {
    noStroke();
    
    fill(0);
    ellipse(x,y,8,8);
    //your code here
  }
  void move()
  {
    if(isMoving==true)
    {
      y+=5;
    }
   
    //your code here
  }
  void wrap()
  {
    if(y>600)
    {
      y=0;
      x=(int)(Math.random()*600);
    }
      //your code here
  }
}


