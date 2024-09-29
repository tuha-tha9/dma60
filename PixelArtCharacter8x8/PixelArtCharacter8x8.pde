import java.util.Arrays;

PImage SmileyImage;
PImage CartmanImage;
PImage KennyImage;
ArrayList<String> smileList;
ArrayList<String> cartmanList;
ArrayList<String> kennyList;
String smileString;
String cartmanString;
String kennyString;

boolean wave = true;
int character = 97;//which character to show (97 = smiley) using a keyCode (97 is the keyboard key 1)

void setup(){
    size(400,400);
    background(0);

    ///  START OF SMILEY///////////////////////////
    /* SMILEY FACE - https://www.pixilart.com/draw/8x8-fd09fdff3db2b99
    yellow black
    fff200 00000
    fff200,fff200,fff200,fff200,fff200,fff200,fff200,fff200
    fff200,fff200,000000,fff200,fff200,000000,fff200,fff200
    fff200,fff200,000000,fff200,fff200,000000,fff200,fff200
    fff200,fff200,000000,fff200,fff200,000000,fff200,fff200
    000000,fff200,fff200,fff200,fff200,fff200,fff200,000000
    000000,000000,fff200,fff200,fff200,fff200,000000,000000
    fff200,000000,000000,fff200,fff200,000000,000000,fff200
    fff200,fff200,000000,000000,000000,000000,fff200,fff200
    */
    smileString = "fff200,fff200,fff200,fff200,fff200,fff200,fff200,fff200,fff200,fff200,000000,fff200,fff200,000000,fff200,fff200,fff200,fff200,000000,fff200,fff200,000000,fff200,fff200,fff200,fff200,000000,fff200,fff200,000000,fff200,fff200,000000,fff200,fff200,fff200,fff200,fff200,fff200,000000,000000,000000,fff200,fff200,fff200,fff200,000000,000000,fff200,000000,000000,fff200,fff200,000000,000000,fff200,fff200,fff200,000000,000000,000000,000000,fff200,fff200";
    smileList = new ArrayList<>(Arrays.asList(smileString.split(",")));//create an array from a string using the comma (,) to separate it


    SmileyImage = new PImage(8, 8); //create an empty image
    SmileyImage.loadPixels(); //load the pixels from an image
    
    for(int i = 0;i< 64;i++){
        String pixelcolorSmile = smileList.get(i); //read the colors one by one from the Array created from the smileString 
        // println(i+ " " + pixelcolor);
        SmileyImage.pixels[i] = unhex(pixelcolorSmile);//convert the hexadecimal string into an RGB color usable by processing
    }  
    SmileyImage.updatePixels();//update (save) the new color data in the image
    image(SmileyImage, 50, 20, 64,64);//draw the image onto the screen at location (50,20) and scaled up to 64 bits x 64 bits
    ///  END OF SMILEY///////////////////////////
    
    ///  START OF CARTMAN///////////////////////////
    /* CARTMAN
    000000,000000,00b7ef,fff200,fff200,00b7ef,000000,000000
    000000,4d6df3,00b7ef,00b7ef,00b7ef,00b7ef,00b7ef,000000
    4d6df3,9c5a3c,FFFFFF,FFFFFF,FFFFFF,FFFFFF,e5aa7a,00b7ef
    9c5a3c,9c5a3c,FFFFFF,000000,FFFFFF,000000,e5aa7a,00b7ef
    9c5a3c,9c5a3c,FFFFFF,FFFFFF,FFFFFF,FFFFFF,e5aa7a,00b7ef
    990030,9c5a3c,9c5a3c,00b7ef,00b7ef,00b7ef,00b7ef,ed1c24
    ff7e00,990030,ed1c24,ed1c24,ed1c24,ed1c24,ed1c24,fff200
    000000,990030,990030,990030,990030,990030,990030,000000
    */
    cartmanString = "000000,000000,00b7ef,fff200,fff200,00b7ef,000000,000000,000000,4d6df3,00b7ef,00b7ef,00b7ef,00b7ef,00b7ef,000000,4d6df3,9c5a3c,FFFFFF,FFFFFF,FFFFFF,FFFFFF,e5aa7a,00b7ef,9c5a3c,9c5a3c,FFFFFF,000000,FFFFFF,000000,e5aa7a,00b7ef,9c5a3c,9c5a3c,FFFFFF,FFFFFF,FFFFFF,FFFFFF,e5aa7a,00b7ef,990030,9c5a3c,9c5a3c,00b7ef,00b7ef,00b7ef,00b7ef,ed1c24,ff7e00,990030,ed1c24,ed1c24,ed1c24,ed1c24,ed1c24,fff200,000000,990030,990030,990030,990030,990030,990030,000000";
    ArrayList<String> cartmanList = new ArrayList<>(Arrays.asList(cartmanString.split(",")));

    CartmanImage = new PImage(8, 8);
    CartmanImage.loadPixels();
    
    for(int i = 0;i< 64;i++){
        String pixelcolorCartman = cartmanList.get(i);
        // println(i+ " " + pixelcolor);
        CartmanImage.pixels[i] = unhex(pixelcolorCartman);
    }  
    CartmanImage.updatePixels();
    image(CartmanImage, 150, 20, 64,64);
    ///  END OF CARTMAN///////////////////////////

    ///  START OF KENNY///////////////////////////

    /* KENNY
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
    image(KennyImage, 250, 20, 64,64);
    ///  END OF KENNY///////////////////////////


    //////////FOR SINE WAVE//////////
    w = width+16;
    dx = (TWO_PI / period) * xspacing;
    yvalues = new float[w/xspacing];
    /////////////////////////////////

}

// USED TO CHANGE THE CHARACTER TO USE
void keyPressed(){
    if(keyCode==32){
        wave = !wave;
    }  else if(keyCode == 97||keyCode == 49){ 
        character = 97;
        println("keyCode 37: 1");
    } else if(keyCode == 98||keyCode == 50){
        character = 98;
        println("keyCode 39: 2");
    } else if(keyCode == 99||keyCode == 51) {
        character = 99;
        println("keyCode 99: 3");
    } else {
        println(keyCode);
    }
}


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
   if(wave){
        background(0);
        if(character==97){
            image(SmileyImage, 50, 20, 64,64);
        } else if(character==98){
            image(CartmanImage, 150, 20, 64,64);
        } else if(character==99){
            image(KennyImage, 250, 20, 64,64);
        } else {
            image(SmileyImage, 50, 20, 64,64);
            image(CartmanImage, 150, 20, 64,64);
            image(KennyImage, 250, 20, 64,64);
        }
        calcWave();
        renderWave();
        text("Mouseclick inside screen to use keyboard", width/2-100, height-75);
        text("Press 1, 2 or 3 to change character", width/2-80, height-60);
        text("Press spacebar to pause/resume program", width/2-100, height-45);

    }  
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

    ArrayList<String> fillList;

    if(character==97){
        fillList = new ArrayList<>(Arrays.asList(smileString.split(",")));
    } else if(character==98){
        fillList = new ArrayList<>(Arrays.asList(cartmanString.split(",")));
    } else if(character==99){
        fillList = new ArrayList<>(Arrays.asList(kennyString.split(",")));
    } else {
        fillList = new ArrayList<>(Arrays.asList(kennyString.split(",")));
    }
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

