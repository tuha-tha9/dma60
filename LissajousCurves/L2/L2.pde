
/*
 * Radius represents the radius of each circle and
 * gutter refers to the distance between circles/figures
 */
int radius = 26;
int gutter = 6;

// auto-computed
int rows, cols;
int boxSize;
float tx, ty;
// Angle to be used in each iteration of draw
float angle;
// off-screen canvas to trace points
PGraphics back;
// Used to determine the color of each lissajous plot
// This stores the maximum possible ratio between the speed at which
// the x and y co-ordinates vary
float maxRatio;
float ratio;
float h;

public void settings() {
  // Take up only 1000,1000 of the screen
  size(1000, 1000);
}

void setup() {
  background(0);
  // The draw loop has a nested loop
  // at each iteration for the pair (i,j)
  // we plot the lissajous figure for that combination of speeds.
  // This plot is contained in a square
  // The side of which is calculated here.
  // The shape is plotted in the center of the said square,
  // with radius 'radius' using 'gutter' space as padding
  // Thus the side is twice the sum of the radius and the gutter
  boxSize = 2 * (radius + gutter);

  // Show as many rows and columns as possible
  // -1 to accomodate header row and column
  rows = floor(1000 / boxSize) - 1;
  cols = floor(1000 / boxSize) - 1;
  // Translation amounts to show the
  // figure table centred on any screen
  ty = (1000 - (rows + 1) * boxSize) / 2;
  tx = (1000 - (cols + 1) * boxSize) / 2;
  angle = 0;

  // While entire canvas is made to fit the window,
  // off-screen canvas exactly fits the shape table
  back = createGraphics(((cols + 1) * boxSize), ((rows + 1) * boxSize));

  // maximum possible ratio between the speed at which
  // the x and y co-ordinates vary 
  maxRatio = max(cols, rows);
}

void draw() {
  back.beginDraw();
  //  back.background(0,0,0);
  // Setting the color mode to HSB
  // as the colour will be determined as a hue
  background(0);
  // // Setting the color mode to HSB
  // // as the colour will be determined as a hue
  back.colorMode(HSB);
  // Translate using tx,ty calculated in setup
  translate(tx, ty);
  //render off-screen canvas
  
  for (int i = 0; i <= cols; i++) {
    for (int j = 0; j <= rows; j++) {
      // Each iteration considers a imaginary square,
      // side length 'side'
      // cx and cy computes the centre point of the square
      int cx = boxSize * i + boxSize / 2;
      int cy = boxSize * j + boxSize / 2;
      // x and y hold the current point for this iteration,
      // w.r.t. cx and cy
      // For the header column and row, this will trace a circle
      // For intersection, it traces the lissajous figure
      float x, y;
        // i==0 and j==0 is the first blank space, hence continue
      if (i == 0 || j == 0) { 
        //since we escaped i==0 AND j==0,
        // this happens for the header row and header column

        // For header row, j=0, thus factor is i
        // For header column, i=0 thus factor is j
        int factor = max(i, j);

        // Now we plot the polar point (radius, factor*angle)
        // the factor co-efficient results in same angle giving
        // different speeds across the row/column
        // Note that global variables of this loop are set
        x = radius * cos(angle * factor - HALF_PI);
        y = radius * sin(angle * factor - HALF_PI);

        // Draw the circle in the main canvas
        strokeWeight(1);
        noFill();
        ellipse(cx, cy, 2 * radius, 2 * radius);

        // Draw the perpendicular lines
        // For header column, these are horizontal lines,
        // For header row, these are vertical lines
        // The start is always the same, cx+x and cy+y.
        // The end point differs for header row and column
        stroke(255, 75);
        // In the case of header column, where j=0,
        // end point has the same y-coordinate as start.
        // x-coordinate is the end of screen,i.e. the width.
        // However, using the entire width causes
        // this web editor to behave weirdly
        //Thus, limiting the end point just shy of the last figure
        float endX = j == 0 ? cx + x : (cols + 0.9) * boxSize;
        // In the case of header row, where i=0,
        // end point has the same x-coordinate as start.
        // y-coordinate is the end of screen,i.e. the height.
        // However, using the entire height causes
        // this web editor to behave weirdly
        //Thus, limiting the end point just shy of the last figure
        float endY = i == 0 ? cy + y : (rows + 0.9) * boxSize;
        line(cx + x, cy + y,  endX, endY);
      } else {
        // This is the case for an intersection
        // Here, we take the x-coordinate from the header row,
        // the y-coordinate from header column, and plot the point
        // Note that global variable for this loop is used
        x = radius * cos(angle * i - HALF_PI);
        y = radius * sin(angle * j - HALF_PI);

        // This point is also plotted in the offscreen canvas,
        // without clearing the previous points. The trace forms
        // the Lissajous figure
        // The colour is determined by the ratio of the "speeds"
        // of the x and y co-ordinated
        
        
        ratio = max(i, j) / min(i, j);
        // using "map" to map ratio
        // which may vary between 1 and maxRatio
        // to get a hue between 0 and 255
        h = map(ratio, 1, maxRatio, 0, 255);
        // remember that the color mode of the off-screen
        // canvas is HSB
          back.stroke(h, 255, 255);
          back.strokeWeight(1);
          back.point(cx + x, cy + y);
      }

      // Plot the globally computed x and y, w.r.t cx and cy
      strokeWeight(4);
      stroke(255);
      point(cx + x, cy + y);
    }
  }

back.endDraw();
  image(back, 0, 0);
  // Angle is incremented for the next iteration
  angle += 0.01;
}



/**
 * Plotting Lissajous Figures
 * Hari Krishnan
 *
 *
 * This is a simple program which plots various lissajous figures.
 * Lissajous figures are a collective name for any of a number of
 * characteristic looped or curved figures traced out by a point
 * undergoing two independent simple harmonic motions at right
 * angles with frequencies in a simple ratio.
 *
 * In Simpler terms, a Lissajous figure is a shape traced by a
 * point where it's x-component and y-component vary
 * according to two independent sine waves each with independent
 * co-efficients.
 *
 * This is visually represented as a table, where the "header row"
 * and "header column" consists of circles of constant radius,
 * but a point moving on the circle with increasing speed.
 * Any intersection of a row and column uses the
 * x-coordinate from the circle in the header row
 * and the y-component from the header column.
 * This is seen by dropping perpendiculars from header
 * rows and columns, and plotting their intersections
 */


/*
More about Lissajous Curves https://academo.org/demos/lissajous-curves/
*/