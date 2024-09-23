/*
This example shows three different gray values on a black background:
*/



size(600, 600);

smooth();

background(0); // Black

fill(204); // Light gray

ellipse(132, 82, 200, 200); // Light gray circle

fill(153); // Medium gray

ellipse(228, -16, 200, 200); // Medium gray circle

fill(102); // Dark gray

ellipse(268, 118, 200, 200); // Dark gray circle



/*

One Gray, No Fill and No Stroke

*/
  


smooth();

fill(153); // Medium gray

ellipse(132, 482, 200, 200); // Gray circle

noFill(); // Turn off fill

ellipse(228, 384, 200, 200); // Outline circle

noStroke(); // Turn off stroke

ellipse(268, 518, 200, 200); // Doesn’t draw!
