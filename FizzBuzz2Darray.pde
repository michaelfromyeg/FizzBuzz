int numRows, numCols;
int sx, sy;
int [][] table;
int r, g, b;

void setup() {

  size(1000, 1000);
  noStroke();
  numRows = 10;
  numCols = 10;
  table = new int[numRows][numCols];
  sx = width/numCols;
  sy = height/numRows;

  for (int cols = 0; cols < numCols; cols++) {
    for (int rows = 0; rows < numRows; rows++) {

      table[rows][cols] = rows + numRows*cols + 1;
    }
  }
}

void resetColors() {
    
  r = 0;
  g = 0;
  b = 0;
  
}

void draw() {

  for (int cols = 0; cols < numCols; cols++) {
    for (int rows = 0; rows < numRows; rows++) {
      
      if (table[rows][cols] % 5 == 0) {
        r += 255;
      }
      if (table[rows][cols] % 3 == 0) {
        g += 255;
      }

      fill(r,g,100);
      rect(cols * sx, rows * sy, sx, sy);
      resetColors();
    }
  }
}

//Debugging

void mouseClicked() {
  
  int mrow = mouseY / sy;
  int mcol = mouseX / sx;
  
  System.out.println(table[mrow][mcol]);
  
}
