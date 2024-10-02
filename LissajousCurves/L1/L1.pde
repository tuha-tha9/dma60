float t = 0 ;

void setup() {
  size(720,720);
  noStroke();  
}

void draw() {
  float f = sin(t*1.2)*99+99;
  float x = cos(t)*150+360;
  float y = sin(2*t)*150+180;
  fill(f,0,0);
  t += .05 ;
  circle( x, y, 30); 
}



/*
@Hau_kun 4:02 PM · 16 sept. 2020
https://twitter.com/Hau_kun/status/1306231988060217344
https://editor.p5js.org/Anne-Laure/sketches/5zympFfj6

Sur courbes de Lissajous,voir aussi 
  - https://editor.p5js.org/piratefsh/sketches/Sy6HnZURf
  - https://codepen.io/dylangggg/pen/aRZMaP
  - https://editor.p5js.org/chen-ni/sketches/HiT4Ycd5U en réponse à https://stackoverflow.com/questions/62891642/p5-js-add-a-dissapearing-ellipse-trail-to-lissajous-curve-line

- selon https://javalab.org/en/lissajous_figures_en/
The Lissajous figures is a planar shape drawn by the following equation by the parameter t:
x = A cos (Bt + C)
y = D sin (Et + F)
If B:E is an integer ratio, you can draw a continuous shape without breaking.
If B:E = 1:1, the circle is drawn.
  
*/
