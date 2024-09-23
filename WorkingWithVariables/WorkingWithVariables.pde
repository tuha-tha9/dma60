/*
A variable stores a value in memory so that it can be used later in a program. The variable can be used many times within a single program, and the value is easily changed while the program is running.
The primary reason we use variables is to avoid repeating ourselves in the code. If you are typing the same number more than once, consider making
it into a variable to make your code more general and easier to update.
For instance, when you make the y-coordinate and diameter for the two circles in this example into variables, the same values are used for each

ellipse:
*/

size(480, 360);
smooth();

int y = 60;
int d = 80;

ellipse(75, y, d, d); // Left
ellipse(175, y, d, d); // Middle
ellipse(275, y, d, d); // Right




/*
Processing has a series of special variables to store information about the program while it runs. For instance, the width and height of the window
are stored in variables called width and height. These values are set by the size() function. They can be used to draw elements relative to the size of
the window, even if the size() line changes.
*/


smooth();

ellipse(width/2-10, ((height+200)/2), 60, 60);
line(width-200-120, 200, width, height+200); // Line from (0,0) to (480, 120)
line(width-200, 200, 0, height+200); // Line from (480, 0) to (0, 120)
