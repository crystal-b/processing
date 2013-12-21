//Learning Processing - Draw a continuous line
void setup(){
  size(100,100);
  background(255);
  smooth();
}
void draw(){
  stroke(0);
  line(pmouseX,pmouseY,mouseX,mouseY);
}
  
  
