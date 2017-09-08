//int Drops = 800;
//int Xs[]=int[7];
//Xs[0]= 10;
//Xs[3]= 70;

int COUNT =2000;
float[]Xs = new float[COUNT];
float[]Ys = new float[COUNT];
PImage mary;
int x = width/2;
int y = height/2;


void setup()
{
  size(800, 800);
  mary=loadImage("poppins.png");

  for (int i=0; i<COUNT; i++)
  {
    Xs[i]= random(width);
    Ys[i]= random(height);
  }

  //Xs[0]= 20;
  //Xs[1]= 200;
  //Xs[2]= 350;
  //Xs[3]= random(width);
  //Xs[4]= 400;
}

void draw()
{
  background(67, 238, 255);
  for (int i=0; i<COUNT; i++)
  {
    ellipse(Xs[i], Ys[i], 15, 15);
    Ys[i] = Ys[i]+49;
    fill(3, 227, 250);
    if (Ys[i]>height)
    {
      Ys[i]=random(-500, 0);
    }
  }
  image(mary,x,y);
  y= y+10;
  if (y>height)
{
  y=0;
}
}