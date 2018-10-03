void setup()
{
	background(225);
	size(600,600);

	noLoop();
}
void draw()
{
	for(int x = 0; x < 600; x += 200){
		for(int y = 0; y < 600; y+= 200){
			Die one = new Die(x, y, 200);
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
		fill(255);
		    rectMode(CENTER);
		    rect((float)x, (float)y, (float)size, (float)size);

		    fill(0);

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
