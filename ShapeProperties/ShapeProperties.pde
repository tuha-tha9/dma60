/*
The most basic and useful shape properties are stroke weight and antialiasing, also called smoothing.
*/

size(1000, 1000);

smooth(); // Turns on smoothing

ellipse(340, 260, 390, 390);

noSmooth(); // Turns off smoothing

ellipse(540, 660, 390, 390);
