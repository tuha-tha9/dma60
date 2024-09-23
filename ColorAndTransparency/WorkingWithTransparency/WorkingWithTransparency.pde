/*
Setting Transparency
By adding an optional fourth parameter to fill() or stroke(), you can control the transparency.
This fourth parameter is known as the alpha value, and also uses the range 0 to 255 to set the amount of transparency.
The value 0 defines the color as entirely transparent (it won’t display), the value 255 is entirely opaque, and the 
and the values between these extremes cause the colors to mix on screen.
*/

size(480, 120);

noStroke();

smooth();

background(204, 226, 225); // Light blue color

fill(255, 0, 0, 160); // Red color

ellipse(132, 82, 200, 200); // Red circle

fill(0, 255, 0, 160); // Green color

ellipse(228, -16, 200, 200); // Green circle

fill(0, 0, 255, 160); // Blue color

ellipse(268, 118, 200, 200); // Blue circle

 
/*
This is referred to as RGB color, which comes from how computers define colors on the screen. The three numbers stand for the values of
red, green, and blue, and they range from 0 to 255 the way that the gray values do. Using RGB color isn’t very intuitive, so to choose colors, use
Tools➝Color Selector, which shows a color palette similar to those found in other software (see Figure 3-4). Select a color, and then use the R, G,
and B values as the parameters for your background(), fill(), or stroke() function.
*/
