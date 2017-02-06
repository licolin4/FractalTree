private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2); 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here
	if(branchLength<1)
	{
		line(1, 2, 3, 4, 5, 6);
	}
	else 
	{
		double angle1 = angle + branchLength;
		double angle2 = angle - branchLength;   
		branchLength = branchLength * fractionLength;
		int endX1 = (int)(branchLength*Math.cos(angle1) + x);
		int endY1 = (int)(branchLength*Math.sin(angle1) + y);
		int endX2 = (int)(branchLength*Math.cos(angle2) + x);
		int endY2 = (int)(branchLength*Math.sin(angle2) + y);  
	}
} 
