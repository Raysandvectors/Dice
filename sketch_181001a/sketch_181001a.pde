Coordinate[] eyes = {
  c(17, 17), c(17, 42), c(17, 67), 
  c(67, 17), c(67, 42), c(67, 67), c(42, 42)
  };

  int actualCube = 0;

void setup()
{
  size (600, 600);
  background(255);
  smooth();
  frameRate(1);
}

void draw()
{

  }

  save("eyes"+actualCube+".gif");
  actualCube %= 6;
public class Dice(int m, int n)
{
    actualCube += (int)(Math.random()*6+1);
  
  fill(0);
  background(255);
  
  switch(actualCube)
  {
  case 1:
    rect(m,n,10,10);
    fill(Math.random()*255,Math.random()*255,Math.random()*255);
    ellipse(eyes[6+m].x, eyes[6+n].x, 10, 10);
    break; 
  case 2:
    ellipse(eyes[0+m].x, eyes[0+n].x, 10, 10);
    ellipse(eyes[5+m].x, eyes[5+n].x, 10, 10);
    break; 
  case 3:
    ellipse(eyes[0+m].x, eyes[0+n].x, 10, 10);
    ellipse(eyes[6+m].x, eyes[6+n].x, 10, 10);
    ellipse(eyes[5+m].x, eyes[5+n].x, 10, 10);
    break; 
  case 4:
    ellipse(eyes[0+m].x, eyes[0+n].x, 10, 10);
    ellipse(eyes[2+m].x, eyes[2+n].x, 10, 10);
    ellipse(eyes[3+m].x, eyes[3+n].x, 10, 10);
    ellipse(eyes[5+m].x, eyes[5+n].x, 10, 10);
    break; 
  case 5:
    ellipse(eyes[0+m].x, eyes[0+n].x, 10, 10);
    ellipse(eyes[2+m].x, eyes[2+n].x, 10, 10);
    ellipse(eyes[3+m].x, eyes[3+n].x, 10, 10);
    ellipse(eyes[5+m].x, eyes[5+n].x, 10, 10);
    ellipse(eyes[6+m].x, eyes[6+n].x, 10, 10);
    break; 
  case 6:
    ellipse(eyes[0+m].x, eyes[0+n].x, 10, 10);
    ellipse(eyes[1+m].x, eyes[1+n].x, 10, 10);
    ellipse(eyes[2+m].x, eyes[2+n].x, 10, 10);
    ellipse(eyes[3+m].x, eyes[3+n].x, 10, 10);
    ellipse(eyes[4+m].x, eyes[4+n].x, 10, 10);
    ellipse(eyes[5+m].x, eyes[5+n].x, 10, 10);
    break;
}

Coordinate c(int x, int y)
{
  return new Coordinate(x, y);
}

public class Coordinate
{
  public int x;
  public int y;

  public Coordinate(int x, int y)
  {
    this.x = x;
    this.y = y;
  }
}
