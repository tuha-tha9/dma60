/*
The x- and y-coordinates for a rectangle are the upper-left corner, but for an ellipse they are the center of the shape.
In this example, notice that they-coordinate for the first ellipse is outside the window.
Objects can be drawn partially (or entirely) out of the window without an error.
*/

size(480, 120);

ellipse(278, -100, 400, 400);

ellipse(120, 100, 110, 110);

ellipse(412, 60, 18, 18);
