class Drop {
 float x=random(width);
 float y= random(-500, 0);
 
 float z = random(0, 20);
 float length = map(z, 0, 20, 10, 20);
 float ySpeed = map(z, 0, 20, 5, 15);
  
 
 void fall() {
   y = y+ySpeed;
   float grav = map(z, 0, 20, .05, .2);
   ySpeed = ySpeed + grav;
   if (y > height) {
    y = random(-200, 0);
    ySpeed = map(z, 0, 20, 5, 15);
   }
 }
 
 void show() {
   float thick = map(z, 0, 20, 1, 2);
   strokeWeight(thick);
  stroke(138, 43, 226);
  line(x, y, x, y+10); 
 }
 
}
