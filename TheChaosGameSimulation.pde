/* Jamie Corkhill
 * A small sketch to simulate the Chaos Game and its subsequent creation of the Sierpinski Triangle.
 * Press the space bar to start and stop, and you can view statistical information in the consle.
 * I reccomend splitting the screen in two. On one half, have the console fully expanded displaying the data,
 * and have the simulation on the other.
 *
 * This is not the most efficient of code, nor does it look the best. I just threw something together in a short space of time.
 */

import java.util.concurrent.TimeUnit;
import java.text.DecimalFormat;

//A simple class whose object will define the verticies of the triangle. This is similar to the Vector2 type in Unity. 
//Imagine it as a column vector holding an x and y coordinate.
class Vertex
{
  int xPos, yPos;
  
  Vertex(int x, int y)
  {
    xPos = x;
    yPos = y;
  }
}

DecimalFormat df = new DecimalFormat("#.####");

//Declaring the x and y coordinates respectively.
int abscissa;
int ordinate;

//We will use a modulo to start and suspend the simulation on each odd click.
int spaceBarClickCounter = 0;

String notifier;

//Instantiating vertex objects.
Vertex vertexPoint1;
Vertex vertexPoint2;
Vertex vertexPoint3;

//Points on the screen, incremented once per loop of the draw() method.
long int pointCounter = 0;

void setup() 
{
  //General Settings.
  size(1000, 1000);
  frameRate(90000000);
  surface.setTitle("The Chaos Game - Simulation");

  //Setting aesthetics.
  noStroke();
  background(0);
  stroke(0);
  fill(0);
  
  //Picking some point to begin with. It does not have to be (500, 500).
  abscissa = 500;
  ordinate = 500;
  
  //Setting initial triangle vertercies. You may have to change this depending on your screen size.
  vertexPoint1 = new Vertex(5,995);
  vertexPoint2 = new Vertex(995,995);
  vertexPoint3 = new Vertex(500,5);
  
  //Plotting the verticies of the triangle.
  point(vertexPoint1.xPos, vertexPoint1.yPos);
  point(vertexPoint2.xPos, vertexPoint2.yPos);
  point(vertexPoint3.xPos, vertexPoint3.yPos);
    
  
}


void draw() 
{  
  //Setting aesthetics
  stroke(255);
  fill(255);
  
  if(spaceBarClickCounter == 0){
    notifier = "Status: PENDING";
    noLoop();
  }
  
  //Getting some random vertex to move toward.
  int randomPoint = int(random(3));
  
  //Matching randomPoint with each vertex and plotting.
  switch(randomPoint){
    case 0:     //Vertex 1
      abscissa = (abscissa + vertexPoint1.xPos)/2;                          //Finding halfway between current abscissa (x-coordinate), and abscissa of randomly selected vertex. 
      ordinate = (ordinate + vertexPoint1.yPos)/2;                          //Finding halfway between current ordinate (y-coordinate), and ordinate of randomly selected vertex. 
      stroke(255, 255, 255);                                                //All the pixels in this section are white.
      point(abscissa, ordinate);
      break;
    
    case 1:     //Vertex 2
      abscissa = (abscissa + vertexPoint2.xPos)/2;                          //Finding halfway between current abscissa (x-coordinate), and abscissa of randomly selected vertex.
      ordinate = (ordinate + vertexPoint2.yPos)/2;                          //Finding halfway between current ordinate (y-coordinate), and ordinate of randomly selected vertex. 
      stroke(255, 255, 255);                                                //All the pixels in this section are white.
      point(abscissa, ordinate);
      break;
  
    case 2:     //Vertex 3
      abscissa = (abscissa + vertexPoint3.xPos)/2;                          //Finding halfway between current abscissa (x-coordinate), and abscissa of randomly selected vertex.
      ordinate = (ordinate + vertexPoint3.yPos)/2;                          //Finding halfway between current ordinate (y-coordinate), and ordinate of randomly selected vertex. 
      stroke(255, 255, 255);                                                //All the pixels in this section are white.
      point(abscissa, ordinate);
      break;    
  }
     
  noStroke();
  fill(0);
  rect(0, 0, 250, 50);        //A little trick to cover up text already on the screen.
  fill(255);
  textSize(23);
  text(notifier, 10, 25);
  
  statistics();
  
}

void statistics(){
  pointCounter++; 
  long ms = millis();
  long minutes = TimeUnit.MILLISECONDS.toMinutes(ms);
  long seconds = TimeUnit.MILLISECONDS.toSeconds(ms);
  
  seconds -= (60 * minutes);
  
  float fr = Math.round (frameRate * 10.0) / 10.0;  
  println("Pixels Drawn: " + pointCounter + " - Frame Rate: " + fr + " - Time Since Start: " + minutes + "m:" + seconds + "s, " + millis() + "ms");
}

void keyPressed(){
  spaceBarClickCounter++;
  
  if(spaceBarClickCounter % 2 != 0){
    loop();
    notifier = "Status: RUNNING";
    noStroke();
    fill(0);
    rect(0, 0, 250, 50);        //A little trick to cover up text already on the screen.
    fill(0, 255, 0);
    text(notifier, 10, 25);
    fill(255);
    
  }else{
    notifier = "Status: STOPPED";
    noStroke();
    fill(0);
    rect(0, 0, 250, 50);        //A little trick to cover up text already on the screen.
    fill(255, 0, 0);
    text(notifier, 10, 25);
    fill(255);
    noLoop(); 
  }
}
