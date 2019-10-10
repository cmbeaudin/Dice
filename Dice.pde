int sum, sum1, sum2, sum3, sum4, sum5, sum6;
void setup()
{
	size(500, 575);
	noLoop();
}
void draw()
{
	background(232, 228, 223);
	sum = 0;
	sum1 = 0;
	sum2 = 0;
	sum3 = 0;
	sum4 = 0;
	sum5 = 0;
	sum6 = 0;
	for(int y = 23; y < 500; y += 35 ){
		for(int x = 23; x < 500; x += 35){
			Die d = new Die(x,y);
			d.roll();
			d.show();
		}
	}
	fill(0);
	textSize(32);
	text("Total sum: " + sum, 20, 530);
	textSize(10);
	text("Number of ones: " + sum1, 350, 515);
	text("Number of twos: " + sum2, 350, 525);
	text("Number of threes: " + sum3, 350, 535);
	text("Number of fours: " + sum4, 350, 545);
	text("Number of fives: " + sum5, 350, 555);
	text("Number of fixes: " + sum6, 350, 565);

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, numOfDots, dotRadius;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		numOfDots = (int)(Math.random()*6) + 1;
		sum += numOfDots;
	}
	void show()
	{
		dotRadius = 5;
		rectMode(CENTER);
		fill(0);
		rect(myX, myY, 25, 25, 7);
		switch(numOfDots){
			case 1:
				fill(255, 128, 128);
				ellipse(myX, myY, dotRadius, dotRadius);
				sum1++;
				break;
			case 2:
				fill(255, 186, 146);
				ellipse(myX - 7, myY + 7, dotRadius, dotRadius);
				ellipse(myX + 7, myY - 7, dotRadius, dotRadius);
				sum2++;
				break;
			case 3:
				fill(255, 231, 146);
				ellipse(myX, myY, dotRadius, dotRadius);
				ellipse(myX - 7, myY + 7, dotRadius, dotRadius);
				ellipse(myX + 7, myY - 7, dotRadius, dotRadius);
				sum3++;
				break;
			case 4:
				fill(224, 245, 185);
				ellipse(myX - 7, myY + 7, dotRadius, dotRadius);
				ellipse(myX - 7, myY - 7, dotRadius, dotRadius);
				ellipse(myX + 7, myY + 7, dotRadius, dotRadius);
				ellipse(myX + 7, myY - 7, dotRadius, dotRadius);
				sum4++;
				break;
			case 5:
				fill(198, 241, 214);
				ellipse(myX, myY, dotRadius, dotRadius);
				ellipse(myX - 7, myY + 7, dotRadius, dotRadius);
				ellipse(myX - 7, myY - 7, dotRadius, dotRadius);
				ellipse(myX + 7, myY + 7, dotRadius, dotRadius);
				ellipse(myX + 7, myY - 7, dotRadius, dotRadius);
				sum5++;
				break;
			case 6:
				fill(183, 220, 235);
				ellipse(myX - 7, myY, dotRadius, dotRadius);
				ellipse(myX + 7, myY, dotRadius, dotRadius);
				ellipse(myX - 7, myY + 7, dotRadius, dotRadius);
				ellipse(myX + 7, myY + 7, dotRadius, dotRadius);
				ellipse(myX - 7, myY - 7, dotRadius, dotRadius);
				ellipse(myX + 7, myY - 7, dotRadius, dotRadius);
				sum6++;
				break;
		}
	}
}
