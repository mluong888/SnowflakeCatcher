Snowflake [] frosty = new Snowflake[100];

void setup()
{
  size(600,600);
  for (int i=0; i<frosty.length;i++)
  {
frosty[i]=new Snowflake();
  }
  //your code here
}
void draw()
{
  background(10,10,110);
  fill(255);
  ellipse(500,70,50,50);
  fill(10,10,110);
  noStroke();
  ellipse(488,67,50,50);
  stroke(0);
  for (int i =0;i<frosty.length;i++)
  {
    //frosty[i].erase();
    frosty[i].lookDown();
    frosty[i].move();
    frosty[i].wrap();
    frosty[i].show();

  }
  

  //your code here
}
void mouseDragged()
{
  fill(20,180,250);
  ellipse(mouseX,mouseY,10,10);
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
    if (y>0 && y<600 && get(x,y)!=(0))
    {
      isMoving = true;
    }
    else
    {
      isMoving = false;
    }
      //your code here
  }
  /*void erase()
  {
    fill(0);
    ellipse(x,y,7,7);
    //your code here
  }*/
  void move()
  {
    if(isMoving==true && frameCount%5==0)
    {
      y++;
    }
    //your code here
  }
  void wrap()
  {
    if(y>600)
    {
      y=(int)(Math.random()*100)-100;
      x=(int)(Math.random()*600);
    }
    else 
    {
      y++;
      
    }
    //your code here
  }
}


