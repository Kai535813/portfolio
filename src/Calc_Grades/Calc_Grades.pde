// Kai Yun Chao | 9 Sept 2025 | Graphics Grade Assignment

void setup () {
  size(401, 100);
  background(128);
}


void draw () {
  background(#24B4FF);
  text("Grade Converter | Kai Yun Chao",200,25);
  line(0, 50, 405, 50);
  
  for (int i = 0; i<width; i+=50) {
    line(i,45,i,55);
    textSize(12);   
    text(i/100.0,i,65);
  }
  
  ellipse(mouseX, 50, 5, 5); 
  text(mouseX/100.0, mouseX, 45);
  textAlign(CENTER);
  text(calcGrade(mouseX/100.0), width/2, 85);
  float grade = random(4.001);
  println(grade);
}

String calcGrade(float val) {
  String returnVal;
    if (val >= 3.51) {
    returnVal = "Assign letter grade A.";
  } else if (val >= 3.0) {
    returnVal = "Assign letter grade A-.";
  } else if (val >= 2.84) {
    returnVal = "Assign letter grade B+.";
  } else if (val >= 2.67) {
    returnVal = "Assign letter grade B.";
  } else if (val >= 2.5) {
    returnVal = "Assign letter grade B-.";
  } else if (val >= 2.34) {
    returnVal = "Assign letter grade C+.";
  } else if (val >= 2.17) {
    returnVal = "Assign letter grade C.";
  } else if (val >= 2.00) {
    returnVal = "Assign letter grade C-.";
  } else if (val >= 1.66) {
    returnVal = "Assign letter grade D+.";
  } else if (val >= 1.33) {
    returnVal = "Assign letter grade D.";
  } else if (val >= 1.0) {
    returnVal = "Assign letter grade D-.";
  } else {
    returnVal = "Assign letter grade F.";
  }
  return returnVal;
}
