/*
The strokeJoin() function changes the way lines are joined (how the corners look), and the strokeCap()
function changes how lines are drawn at their beginning and end:
*/


size(480, 120);

smooth();

strokeWeight(12);

strokeJoin(ROUND); // Round the stroke corners

rect(40, 25, 70, 70);

strokeJoin(BEVEL); // Bevel the stroke corners

rect(140, 25, 70, 70);

strokeCap(SQUARE); // Square the line endings

line(270, 25, 340, 95);

strokeCap(ROUND); // Round the line endings

line(350, 25, 420, 95);

  
/*
The placement of shapes like rect() and ellipse() is controlled with the rectMode() and ellipseMode() functions. Check the reference

(Help➝Reference) to see examples of how to place rectangles from their center (rather than their upper-left corner), or to draw ellipses from their

upper-left corner like rectangles.

When any of these attributes are set, all shapes drawn afterward are affected. For instance, in Example 3-12, notice how the second and third

circles both have the same stroke weight, even though the weight is set only once before both are drawn.

*/