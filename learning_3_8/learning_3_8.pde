//Learning Processing - Click events
void setup(){
  size(300,300);
  background(255);
  smooth();
}
void draw() {
}
void mousePressed(){
  noStroke();
  fill(0);
  ellipse(mouseX,mouseY,25,25);
}
void keyPressed() {
  stroke(255);
  fill(50,0,175);
  ellipse(mouseX,mouseY,25,25);
}
  
  
