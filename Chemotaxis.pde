Bacteria[] bob;
void setup()   
{     
   size(1000,300);
   frameRate(20);
   bob = new Bacteria[100];
  	for(int i=0; i < bob.length; i++)
  	{
    	bob[i] = new Bacteria();
  	} 
}   

void mousePressed()
{
  setup();
}

void draw()   
{    
 	background(66,100,200);
  		for(int i=0;i < bob.length;i++)
  		{
    		bob[i].show();
    		bob[i].move();
  		}
  fill(180);
  stroke(0);
  rect(mouseX - 12,mouseY,10,70);
  //ellipse(mouseX,mouseY,25,25);
  rect(mouseX,mouseY, 15, 35);
}  
 
 class Bacteria    
{     
 	int myX,myY,aColor,bColor,cColor;
  boolean capture;
  	Bacteria()
  	{
    	myX = 1000;
      myY = (int)(Math.random()*301);
    	aColor = 66;
    	bColor = (int)(Math.random()*179+66);
    	cColor = (int)(Math.random()*179+66);
  	  capture = false;
    }

void move()
	{
    	myX=myX + (((int)(Math.random()*1500)-1499)/100);
    	myY=myY + ((int)(Math.random()*7)-3);
  	}

void show()
	{
    if ((mouseX - myX <=10 && mouseX-myX >= -10 
        || myX - mouseX <=10 && mouseX-myX >= -10)
        && (mouseY - myY <=10 && mouseY - myY >= -10 
        || myY - mouseY <=10 && myY - mouseY >= -10))
    {
      capture = true;
    }
		if (capture == false) 
    {
    noStroke();
    fill(aColor,bColor,cColor);
    triangle(myX+25,myY,myX+30,myY-10,myX+30,myY+10);
    ellipse(myX+5,myY,40,25);
    fill(0);
    ellipse(myX-5,myY-5,7,7);
	  }
  }
}    