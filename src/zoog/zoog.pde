// Zoog Character | Kai Yun Chao | 26 Aug 2025

void setup() {
      // Set the size of the window
      size(600,800);
}

void draw() {
      // Draw a white background
      background(150);
      drawZoog(mouseX, mouseY);
      //drawZoog(100,100);
      //drawZoog(random(width),random(height));
      //drawZoog(100,100);

}

void drawZoog(int x, int y) {
 //Set CENTER mode
      ellipseMode(CENTER);
      rectMode(CENTER);
    
      //beak
      stroke(255,255,0);
      fill(255);
      quad(x+20,y-40,x+80,y-40,x+10,y-10,x+40,y+30);
      
      // Draw Zoog's body
      stroke(255,255,0);
      fill(150,255,50);
      rect(x,y,20,100);
    
      // Draw Zoog's head
      stroke(255,255,0);
      fill(255);
      ellipse(x,y-30,60,60);
  
      // Draw Zoog's eyes
      fill(0);
      ellipse(x-19,y-30,16,32);
      ellipse(x+19,y-30,16,32); 
  
      // Draw Zoog's legs
      stroke(255,255,0);
      line(x-10,y+50,x-20,y+60);
      line(x+10,y+50,x+20,y+60);
        
      //hat
      stroke(0,0,0);
      fill(0,0,0);
      rect(x,y-60,50,20,90);
      rect(x,y-75,20,40,150);
}
