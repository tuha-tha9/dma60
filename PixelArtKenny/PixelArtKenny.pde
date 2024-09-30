import java.util.Arrays;

PImage KennyImage;
ArrayList<String> kennyList;
String kennyString;

void setup(){
    size(400,400);
    background(0);

    kennyString = "000000,000000,d16630,d16630,d16630,d16630,000000,000000,000000,d16630,78362a,78362a,78362a,78362a,d16630,000000,000000,78362a,ffffff,ffffff,ffffff,ffffff,78362a,000000,d16630,78362a,ffffff,000000,ffffff,000000,78362a,d16630,d16630,78362a,ffffff,ffffff,ffffff,ffffff,78362a,d16630,000000,d16630,78362a,78362a,78362a,78362a,d16630,000000,000000,78362a,d16630,d16630,d16630,d16630,78362a,000000,000000,000000,d16630,d16630,d16630,d16630,000000,000000";
    ArrayList<String> kennyList = new ArrayList<>(Arrays.asList(kennyString.split(",")));

    KennyImage = new PImage(8, 8);
    KennyImage.loadPixels();
    
    for(int i = 0;i< 64;i++){
        String pixelcolorKenny = kennyList.get(i);
        // println(i+ " " + pixelcolor);
        KennyImage.pixels[i] = unhex(pixelcolorKenny);
    }  
    KennyImage.updatePixels();
    image(KennyImage, 150, 20, 64,64);
    ///  END OF KENNY///////////////////////////


    //////////FOR SINE WAVE//////////
    w = width+16;
    dx = (TWO_PI / period) * xspacing;
    yvalues = new float[w/xspacing];
    /////////////////////////////////

}



    /* KENNY - https://www.pixilart.com/art/kenny-sr24293518485aws3
    orange black  brown  white
    d16630 000000 78362a ffffff
    000000,000000,d16630,d16630,d16630,d16630,000000,000000
    000000,d16630,78362a,78362a,78362a,78362a,d16630,000000
    000000,78362a,ffffff,ffffff,ffffff,ffffff,78362a,000000
    d16630,78362a,ffffff,000000,ffffff,000000,78362a,d16630
    d16630,78362a,ffffff,ffffff,ffffff,ffffff,78362a,d16630
    000000,d16630,78362a,78362a,78362a,78362a,d16630,000000
    000000,78362a,d16630,d16630,d16630,d16630,78362a,000000
    000000,000000,d16630,d16630,d16630,d16630,000000,000000
    */








void mousePressed(){
    //where you click in the screen, print in the debug console the mouse coordinates x and y
    println(mouseX,mouseY);
}



/**
 * Sine Wave
 * by Daniel Shiffman.  
 * https://processing.org/examples/sinewave.html
 * 
 * Render a simple sine wave. 

 * Modified by George McKinney to use color loaded from an ArrayList based from a String using Pixel Art

 */
 

int xspacing = 8;   // How far apart should each horizontal location be spaced
int w;              // Width of entire wave

float theta = 0.0;  // Start angle at 0
float amplitude = 75.0;  // Height of wave
float period = 200.0;  // How many pixels before the wave repeats
float dx;  // Value for incrementing X, a function of period and xspacing
float[] yvalues;  // Using an array to store height values for the wave


void draw(){
    background(0);
    image(KennyImage, 150, 20, 64,64);
    calcWave();
    renderWave();
}

void calcWave() {
  // Increment theta (try different values for 'angular velocity' here
  theta += 0.02;

  // For every x value, calculate a y value with sine function
  float x = theta;
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*amplitude;
    x+=dx;
  }
}

void renderWave() {
    //noStroke();
    stroke(127);

    ArrayList<String> fillList = new ArrayList<>(Arrays.asList(kennyString.split(",")));

    for (int x = 0; x < yvalues.length; x++) {
        color c = unhex(fillList.get(x));
        float r = red(c);
        float g = green(c);
        float b = blue(c);
        float a = alpha(c);
        // println(r);
        fill(r,g,b);
        // A simple way to draw the wave with an ellipse at each location
        ellipse(x*xspacing, height/2+yvalues[x], 16, 16);
    }
}

