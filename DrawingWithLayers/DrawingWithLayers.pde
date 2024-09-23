/*
When a program runs, the computer starts at the top and reads each line of code until it reaches the last line and then stops.
If you want a shape to be drawn on top of all other shapes, it needs to follow the others in the code. The order you draw objects affects the layering of them.
*/

size(480, 480);

//RECTANGLE ON TOP
ellipse(140, 100, 190, 190);
// The rectangle draws on top of the ellipse
// because it comes after in the code
rect(160, 130, 260, 20);

//CIRCLE ON TOP
rect(160, 360, 260, 20);
// The ellipse draws on top of the rectangle
// because it comes after in the code
ellipse(140,330, 190, 190);