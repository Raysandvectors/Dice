
void setup()
{
  
  size(600,600);
   
  noLoop();
}


void draw()
{
  float n =(float)(Math.random()*200)+50;
  float r =(float)(Math.random()*200)+50;
  float m =(float)(Math.random()*200)+50;
  background(n,r,m);
  for(int x = 100; x < 600; x += 200){
    for(int y = 100; y < 600; y+= 200){
      Die one = new Die(x, y, 50);
      one.roll();
      one.show();

    }
  }
}
void mousePressed()
{
  redraw();
}

class Die //models one single dice cube
{
  //variable declarations here
  int x;
  int y;
  int size;
  int result;


    Die(int x, int y, int size) //constructor
  {
   this.x = x;
   this.y = y;
   this.size = size;

  }
  void roll()
  {
 result = (int)(Math.random()*6) + 1;
  }
  void show()
  {
    fill(0);
    strokeWeight(4);
    stroke((float)(Math.random()*150)+50,(float)(Math.random()*200)+50,(float)(Math.random()*200)+50);
    
        rectMode(CENTER);
        rect((float)x, (float)y, (float)size, (float)size,7);

        fill(255);

        final int diceCircleShift = (size/4);
        final int diceCircleSize = (size/5);

        if (result % 2 == 1)
        {
          ellipse(x, y, diceCircleSize, diceCircleSize);
        }

        if (result == 3 || result == 5 || result == 4 || result == 6)
        {
          ellipse(x+diceCircleShift, y+diceCircleShift, diceCircleSize, diceCircleSize);
          ellipse(x-diceCircleShift, y-diceCircleShift, diceCircleSize, diceCircleSize);
        }

        if (result == 5 || result == 2 || result == 4 || result == 6)
        {
          ellipse(x+diceCircleShift, y-diceCircleShift, diceCircleSize, diceCircleSize);
          ellipse(x-diceCircleShift, y+diceCircleShift, diceCircleSize, diceCircleSize);
        }

        if (result == 6)
        {
          ellipse(x+diceCircleShift, y, diceCircleSize, diceCircleSize);
          ellipse(x-diceCircleShift, y, diceCircleSize, diceCircleSize);
        }
  }
}
