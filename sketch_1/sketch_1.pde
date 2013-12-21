import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;
import seltar.motion.*;

color col=color(66,168,237,200);
float lineLength = width/5;
float angle = 45;
float angleSpeed = 7;
int ballRadius;
float ballX;
float ballY;
float dirX;
float dirY;
void setup() {
  // Learning Processing
  size(600,360);
  background(150);
  stroke(50);
  fill(50);
  rect(0,300,100,300);
  rect(100,300,100,300);
  rect(200,300,100,300);
  rect(300,300,100,300);
  rect(400,300,100,300);
  rect(500,200,100,300);
  fill(50,255,3);
  ballRadius = 10;
  ballX = width/5;
  ballY = 7 + ballRadius;
  dirX = 1.9;
  dirY = 2.1;
}
  //
void draw() {
  // background(255);
  // ball management
  // Ball();
  BallMovement();
  BallBounce() ;
  // apply   
  pushMatrix();
  translate(ballX, ballY);
  rotate(radians(angle));
  strokeWeight(0.3);
  stroke(col);
  line(0, 0, lineLength, 0);
  lineLength = random(width/4, height/2);
  popMatrix();
  angle += angleSpeed-10;
}
//
void Ball () {
  fill(50,255,10);
  noStroke();
  smooth();
  ellipse(ballX, ballY, ballRadius*2, ballRadius*2);
}
void BallMovement() {
  ballX += dirX;
  ballY += dirY;
}
void BallBounce() {
  // bounce at top, left and right and bottom
  // the Code  + (random(.7)-.35) provides a small offset
  final float offset=0.9;
  //top
  if (ballY < ballRadius)
    dirY = abs(dirY) + (random(offset)-offset/2) ;
  //bottom 
  if (ballY > height)
    dirY = -abs(dirY) + (random(offset)-offset/2) ;   
  if (ballX < ballRadius) 
    dirX = abs(dirX) + (random(offset)-offset/2) ;
  if (ballX > width-ballRadius)       
    dirX =  -abs(dirX) + (random(offset)-offset/2) ;
}
