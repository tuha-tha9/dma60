/*
To move beyond grayscale values, you use three parameters to specify the red, green, and blue components of a color. Because this book is
printed in black and white, you’ll see only gray value here.
Run the code in Processing to reveal the colors:
*/

size(480, 120);

noStroke();

smooth();

background(0, 26, 51); // Dark blue color

fill(255, 0, 0); // Red color

ellipse(132, 82, 200, 200); // Red circle

fill(0, 255, 0); // Green color

ellipse(228, -16, 200, 200); // Green circle

fill(0, 0, 255); // Blue color

ellipse(268, 118, 200, 200); // Blue circle

  
/*
This is referred to as RGB color, which comes from how computers define colors on the screen. The three numbers stand for the values of
red, green, and blue, and they range from 0 to 255 the way that the gray values do. Using RGB color isn’t very intuitive, so to choose colors, use
Tools➝Color Selector, which shows a color palette similar to those found in other software (see Figure 3-4). Select a color, and then use the R, G,
and B values as the parameters for your background(), fill(), or stroke() function.
*/
