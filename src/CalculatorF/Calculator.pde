// Kai Yun Chao | 25 Sept 2025 | Calculator Project
Button[] buttons = new Button[12];
Button[] numButtons = new Button[10];
float l, r, result;
String dVal;
String op;
boolean left;

void setup() {

  size(792, 352);
  l = 0.0;
  r = 0.0;
  result = 0.0;
  dVal = "0";
  op = " ";
  left = true;

  numButtons[3] = new Button(308, 242, 44, 44, "3", #1B365D, #7089AC
    );
  numButtons[2] = new Button(308, 176, 44, 44, "2", #1B365D, #7089AC);
  numButtons[1] = new Button(308, 110, 44, 44, "1", #1B365D, #7089AC);
  numButtons[0] = new Button(308, 44, 44, 44, "0", #1B365D, #7089AC);

  numButtons[7] = new Button(374, 242, 44, 44, "7", #1B365D, #7089AC);
  numButtons[6] = new Button(374, 176, 44, 44, "6", #1B365D, #7089AC);
  numButtons[5] = new Button(374, 110, 44, 44, "5", #1B365D, #7089AC);
  numButtons[4] = new Button(374, 44, 44, 44, "4", #1B365D, #7089AC);

  buttons[0] = new Button(440, 209, 44, 66, "±", #9E2A2B, #DDA69D);
  numButtons[9] = new Button(440, 110, 44, 44, "9", #1B365D, #7089AC);
  numButtons[8] = new Button(440, 44, 44, 44, "8", #1B365D, #7089AC);

  buttons[1] = new Button(506, 231, 44, 66, "CLEAR", #9E2A2B, #DDA69D);
  buttons[2] = new Button(506, 143, 44, 66, ".", #9E2A2B, #DDA69D);
  buttons[3] = new Button(506, 55, 44, 66, "=", #9E2A2B, #DDA69D);

  buttons[4] = new Button(583, 242, 66, 44, "÷", #9E2A2B, #DDA69D);
  buttons[5] = new Button(583, 176, 66, 44, "x", #9E2A2B, #DDA69D);
  buttons[6] = new Button(583, 110, 66, 44, "-", #9E2A2B, #DDA69D);
  buttons[7] = new Button(583, 44, 66, 44, "+", #9E2A2B, #DDA69D);

  buttons[8] = new Button(704, 242, 132, 44, "√", #22372B, #A3B2A4);
  buttons[9] = new Button(704, 176, 132, 44, "Random", #22372B, #A3B2A4);
  buttons[10] = new Button(704, 110, 132, 44, "sin", #22372B, #A3B2A4);
  buttons[11] = new Button(704, 44, 132, 44, "cos", #22372B, #A3B2A4);
}

void draw() {
  background(#A7A8A9);
  for (int i = 0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }

  for (int i = 0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void mousePressed() {
  for (int i = 0; i<buttons.length; i++) {
    if (buttons[i].over && buttons[i].val.equals("+")) {
      dVal = "0";
      left = false;
      op = "+";
    } else if (buttons[i].over && buttons[i].val.equals("CLEAR")) {
      size(792, 352);
      l = 0.0;
      r = 0.0;
      result = 0.0;
      dVal = "0";
      op = " ";
      left = true;
    } else if (buttons[i].over && buttons[i].val.equals("=")) {
      performCalculation();
    } else if (buttons[i].over && buttons[i].val.equals("-")) {
      dVal = "0";
      left = false;
      op = "-";
    } else if (buttons[i].over && buttons[i].val.equals("x")) {
      dVal = "0";
      left = false;
      op = "*";
    } else if (buttons[i].over && buttons[i].val.equals("÷")) {
      dVal = "0";
      left = false;
      op = "/";
    } else if (buttons[i].over && buttons[i].val.equals("±")) {
      if (left) {
        l = l * -1;
        dVal = str(l);
      } else {
        r = r * -1;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("√")) {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("Random")) {
      if (left) {
        l = random(l);
        dVal = str(l);
      } else {
        r = random(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("cos")) {
      if (left) {
        l = cos(l);
        dVal = str(l);
      }
    } else if (buttons[i].over && buttons[i].val.equals("sin")) {
      if (left) {
        l = sin(l);
        dVal = str(l);
      }
    } else if (buttons[i].over && buttons[i].val.equals(".")) {
      dVal += ".";
    }
  }
  for (int i = 0; i<numButtons.length; i++) {
    if (dVal.length()<15) {
      if (numButtons[i].over && left == true) {
        if (dVal.equals("0")) {
          dVal = numButtons[i].val;
          l = float(dVal);
        } else {
          dVal += numButtons[i].val;
          l = float(dVal);
        }
      } else  if (numButtons[i].over && left == false) {
        if (dVal.equals("0")) {
          dVal = numButtons[i].val;
          r = float(dVal);
        } else {
          dVal += numButtons[i].val;
          r = float(dVal);
        }
      }
    }
    println("l:" + l);
    println("r:" + r);
    println("result:" + result);
    println("left:" + left);
    println("op:" + op);
  }
}

void updateDisplay() {
  fill(255);
  strokeWeight(0);
  rect(143, 176, 242, 308, 20);
  rect(528, 308, 484, 44, 20);

  textSize(30);
  fill(25);
  textAlign(LEFT);
  text(dVal, 33, 55);
}

void performCalculation() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("*")) {
    result = l * r;
  } else if (op.equals("/")) {
    result = l / r;
  }
  dVal = str(result);
}
