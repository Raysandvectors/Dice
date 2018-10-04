import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

public void setup()
{
	noLoop();
}
public void draw()
{
	//your code here
}
public void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		//variable initializations here

    rect(m,n,10,10);
    fill(Math.random()*255,Math.random()*255,Math.random()*255);
    ellipse(eyes[6+m].x, eyes[6+n].x, 10, 10);
  

    ellipse(eyes[0+m].x, eyes[0+n].x, 10, 10);
    ellipse(eyes[5+m].x, eyes[5+n].x, 10, 10);
 

    ellipse(eyes[0+m].x, eyes[0+n].x, 10, 10);
    ellipse(eyes[6+m].x, eyes[6+n].x, 10, 10);
    ellipse(eyes[5+m].x, eyes[5+n].x, 10, 10);
    

    ellipse(eyes[0+m].x, eyes[0+n].x, 10, 10);
    ellipse(eyes[2+m].x, eyes[2+n].x, 10, 10);
    ellipse(eyes[3+m].x, eyes[3+n].x, 10, 10);
    ellipse(eyes[5+m].x, eyes[5+n].x, 10, 10);
   

    ellipse(eyes[0+m].x, eyes[0+n].x, 10, 10);
    ellipse(eyes[2+m].x, eyes[2+n].x, 10, 10);
    ellipse(eyes[3+m].x, eyes[3+n].x, 10, 10);
    ellipse(eyes[5+m].x, eyes[5+n].x, 10, 10);
    ellipse(eyes[6+m].x, eyes[6+n].x, 10, 10);


    ellipse(eyes[0+m].x, eyes[0+n].x, 10, 10);
    ellipse(eyes[1+m].x, eyes[1+n].x, 10, 10);
    ellipse(eyes[2+m].x, eyes[2+n].x, 10, 10);
    ellipse(eyes[3+m].x, eyes[3+n].x, 10, 10);
    ellipse(eyes[4+m].x, eyes[4+n].x, 10, 10);
    ellipse(eyes[5+m].x, eyes[5+n].x, 10, 10);

	}
	public void roll()
	{
		//your code here
	}
	public void show()
	{
		//your code here
	}
}
public Coordinate c(int x, int y)
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
