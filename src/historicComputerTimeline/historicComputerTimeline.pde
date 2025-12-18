// Kai Yun Chao | Aug 28 2025 | Computer Timeline
void setup() {
  size(900, 400);
  background(200);
}
void draw() {
  background(200);
  drawRef();
  histEvent(75, 223, "1938, Z1", true, "Z1 - Konrad Zuse - Germany: \n This was one of the first programmable binary computers that was meant as a mechanical calculator.");
  histEvent(150, 277, "1945, Colossus", false, "Colossus - Tommy Flowers - England: \n A set of computers meant to help British codebreakers during World War Two. \n It used thermoinic valves and was programmed by plugs and switches.");
  histEvent(250, 223, "1948, SSEM", true, "SSEM - Frederic Williams, Tom Kilburn and Geoff Tootill - England: \n This SSEM also called the Manchester Baby was made to test the Williams Tube. \n The Williams tube a cathode-ray tube used to temporarily store electronic binary data.");
  histEvent(350, 277, "1949, EDSAC", false, "EDSAC - Maurice Wilkes - England: \n One of the first operational electronic digital stored-program computers. \n It was able to calculate a tabel of squares and a list of prime numbers.");
  histEvent(450, 223, "1951, Gamma 3", true, "Gamma 3 - Compagnie de Machines Bull - France: \n The Gamma 3 was the most successful computer at the time with 1,200+ units. \n It had a large memory of 100 KB which could hold 50,000 instructions which it used for scientific computing.");
  histEvent(550, 277, "1953, MOSAIC", false, "MOSAIC - Allen Coombs and William Chandler - England: \n A electronic serial stored-program computer that was used to calculate aircraft trajectories using radar data.");
  histEvent(650, 223, "1960, Gamma 60", true, "Gamma 60 - Compagnie de Machines Bull - France: \n This french computer was the first computer ever be designed for parallelism. \n Parallel computing is when multiple calculations are carried out at the same time. \n This is made possible by having multiple CPU cores. ");
  histEvent(750, 277, "1970, Pascal", false, "Pascal - Niklaus Wirth - Switzerland: \n The Pascal programming language is a more practical version of the ALGOL programming language. \n The ALGOL programming language was the first structured and procedural programming language.");
  histEvent(825, 223, "1972 NORD-5", true, "NORD-5 - Norsk Data - Norway: \n The NORD-5 was the world's first 32-bit supercomputer. \n It was meant for powerful number crunching when attached to a host computer.");
  fill(#4775FA);
  stroke(#4775FA);
  quad(0, 20, 0, 0, 900, 0, 900, 20);
}
void drawRef() {
  // Title Info
  stroke(0);
  textAlign(CENTER);
  textSize(38);
  fill(0);
  text("Historic Computational Advancements", 450, 80);
  textSize(24);
  text("By Kai Yun Chao", 450, 120);
  // Render timeline
  line(50, 250, 850, 250);
  line(50, 240, 50, 260);
  line(850, 240, 850, 260);
  // Text Markers
  textSize(14);
  text("1935", 50, 280);
  text("1975", 850, 280);
}
void drawHistEvent() {
}
void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x, y+50);
  } else {
    line(x, y, x, y-50);
  }
  fill(#4775FA);
  rectMode(CENTER);
  rect(x, y, 100, 30, 90);
  fill(0);
  text(title, x, y+6);
  if (mouseX>x-40 && mouseX<x+40 && mouseY<y+15 && mouseY>y-15) {
    text(detail, width/2, 320);
  }
}
