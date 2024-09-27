
int r = color(255,0,0);
int g = color(0,255,0);
int b = color(0,0,255);
int y = color(255,255,0);
int w = color(255,255,255);
int black = color(0);
boolean ib = true, water = true;
int ibX, ibY, ibA, ibS;

PImage img;
PImage foregrnd;
PImage backgrnd;

void setup() {
    size(600, 600);
    ibX = width/2-100;
    ibY = height-200;
    ibA = 70;
    ibS = 200;
    frameRate(25);
    foregrnd = loadImage("National_emblem_of_Indonesia_Garuda_Pancasila.svg.png"); // Replace with the image's file path
    foregrnd.loadPixels();
    backgrnd = loadImage("balibeachhousesquare.jpg"); 
    background(0);
    backgrnd.loadPixels();
}

void draw(){
    if(water){        
        if(frameCount % 9 ==0){//slow down the flicker
            for(int i = 174207;i< 239854;i++){
                //look at these pixels which are the water and for the shiny ones make them flicker

                color c = backgrnd.pixels[i];
                float r = red(c);
                float g = green(c);
                float b = blue(c);
                float a = alpha(c);

                if(r >100 && g > 100 && b>20 ){
                    backgrnd.pixels[i] = color((int) random(127,230),(int) random(127,230),(int) random(50,255),0);
                    // backgrnd.pixels[i] = color(r,g,b,random(255));
                }
            } 
        }
    } else {
        backgrnd = loadImage("balibeachhousesquare.jpg");
    }

    backgrnd.updatePixels();
    image(backgrnd, 0,0, width, height);

    
    if(false){
        // takes the image and rotates it 90 degrees
        pushMatrix();
        translate(width,0);
        rotate(radians(90));
    
        image(backgrnd,0,0,width, height);
        popMatrix();
    }

    for (int i = 0; i < foregrnd.pixels.length; i++) {
        color c = foregrnd.pixels[i];
        float r = red(c);
        float g = green(c);
        float b = blue(c);

        if(r==0&&g==0&&b==0){
            foregrnd.pixels[i] = color(r,g,b,0);
        } else {
            foregrnd.pixels[i] = color(r,g,b,ibA);
        }
    }

  foregrnd.updatePixels();
    if(ib){
        image(foregrnd, ibX, ibY, ibS, ibS);
    }
}   

void mousePressed(){
    println(mouseX,mouseY);
}
void keyPressed(){    
    if(keyCode==87){ water = !water; } //show or hide indonesian bird
    else if(keyCode==32){ ib = !ib; } //show or hide indonesian bird
    else if(keyCode == 37 && ibX>1){ ibX -= 1;println("keyCode 37: ibX = "+ibX);}//bird X decrease
    else if(keyCode == 39 && ibX<width){ ibX += 1;println("keyCode 39: ibX = "+ibX);}//bird X increase
    else if(keyCode == 38 && ibY>1) {ibY -= 1;println("keyCode 38: ibY = "+ibY);}//bird Y decrease
    else if(keyCode == 40 && ibY<height) {ibY += 1;println("keyCode 40: ibY = "+ibY);}//bird Y increase
    else if(keyCode == 109 && ibA>1) {ibA -= 1;println("keyCode 109: ibA = "+ibA);}//bird alpha - make invisible
    else if(keyCode == 107 && ibA<255) {ibA += 1;println("keyCode 107: ibA = "+ibA);}//bird alpha - show more clearly
    else if(keyCode == 111 && ibS>1) {ibS -= 1;println("keyCode 111: ibS = "+ibS);}//bird size decrease
    else if(keyCode == 106) {ibS += 1;println("keyCode 106: ibS = "+ibS);}//bird size increase
    else {
        println(keyCode);
    }
}