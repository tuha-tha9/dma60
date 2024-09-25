/*
In code, symbols like +, –, and * are called operators. When placed between
two values, they create an expression. For instance, 5 + 9 and 1024 – 512
are both expressions. The operators for the basic math operations are:

+ Addition
– Subtraction
* Multiplication
/ Division
= Assignment

Processing has a set of rules to define which operators take precedence over others, meaning which calculations are made first, second, third, and so on. These rules define the order in which the code is run. A little knowledge about this goes a long way toward understanding how a short
line of code like this works:

int x = 4 + 4 * 5; // Assign 24 to x

 
The expression 4 * 5 is evaluated first because multiplication has the highest priority. Second, 4 is added to the product of 4 * 5 to yield 24.
Last, because the assignment operator (the equal symbol) has the lowest precedence, the value 24 is assigned to the variable x. This is clarified with parentheses, but the result is the same:
int x = 4 + (4 * 5); // Assign 24 to x

If you want to force the addition to happen first, just move the parentheses. Because parentheses have a higher precedence than multiplication, the order is changed and the calculation is affected:

int x = (4 + 4) * 5; // Assign 40 to x
*/


size(480, 120);

int x = 25;
int h = 20;
int y = 25;

rect(x, y, 300, h); // Top
x = x + 100;    

rect(x, y + h, 300, h); // Middle
x = x - 250;

rect(x, y + h*2, 300, h); // Bottom

  