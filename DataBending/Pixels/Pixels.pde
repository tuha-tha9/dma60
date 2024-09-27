int r = color(255,0,0);
int g = color(0,255,0);
int b = color(0,0,255);
int y = color(255,255,0);
int w = color(255,255,255);

PImage img;

void setup() {
    size(600, 600);

    loadPixels();// Before we deal with pixels
    addRandomPadding();    
    addColoredBorder();// When we are finished dealing with pixels
    updatePixels();
    
    img = loadImage("National_emblem_of_Indonesia_Garuda_Pancasila.svg.png"); 
    addBirdToCanvas();// add bird and swap red and blue colors      
}

void addRandomPadding() {
    // Loop through every pixel
    for(int i = 0;i< width*height;i++){
            // # Pick a random number, 0 to 255
        int rand = (int) random(255);
        // # Create a grayscale color based on random number
        int randg = color(rand);
        // # Set pixel at that location to random color
        if(i % width == 0){
            //do nothing
        } else if(i % width == width-1){
            //do nothing
        } else {
            pixels[i] = randg;
        }
    }   
}


void addColoredBorder() {
    for (int i=0;i<width;i++){

            //interesting effect
            /*for(int j=0;j<height;j++){
                pixels[i*j] = y;
            }*/
            for(int j=0;j<height;j++){
                pixels[i*height] = y;//yellow line on the left
                pixels[i*height+width-1] = b;//blue line on the right
            }
            pixels[i] = g;//green line on the top
            pixels[width*height-width+i] = r;//red line on the bottom
    }


}

void addBirdToCanvas() {    
    for (int i = 0; i < img.pixels.length; i++) {
        color c = img.pixels[i];
        float r = red(c);
        float g = green(c);
        float b = blue(c);        

        if(r ==0 && g == 0 && b == 0){
            // Make black colors transparent
            img.pixels[i] = color(255, 255, 255,0);
        } else {            
            // Swap Red and Blue channels
            img.pixels[i] = color(b, g, r);
        }
    }
    img.updatePixels();
    image(img, width/2-150, height/2-150, 300, 300);
}

void mousePressed(){
    println(mouseX,mouseY);
}