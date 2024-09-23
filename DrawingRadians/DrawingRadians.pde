/*
If you prefer to use degree measurements, you can convert to radians with the radians() function. 
This function takes an angle in degrees and changes it to the corresponding radian value. 
The following example is the same as Example 3-7, but it uses the radians() function 
to define the start and stop values in degrees:
*/


size(480, 120);

arc(90, 60, 80, 80, 0, radians(90));

arc(190, 60, 80, 80, 0, radians(270));

arc(290, 60, 80, 80, radians(180), radians(450));

arc(390, 60, 80, 80, radians(45), radians(225));