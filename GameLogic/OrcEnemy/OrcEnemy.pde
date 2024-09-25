PImage orc;

int playerX = 20;
int playerY = 20;
int playerSize = 10;

void setup() {
    size(500, 200);
    orc = loadImage("data/orc1_walk_full.png");
    loadPixels();
}

void draw() {
    background(100);

    if(keyPressed) {
        if(keyCode == 37){ playerX -= 1;}
        if(keyCode == 39){ playerX += 1;}
        if(keyCode == 38) {playerY -= 1;}
        if(keyCode == 40) {playerY += 1;}
    }

    // Not allowing out-of-bounds values
    if(playerX < 0){
         playerX = 0;
    }
    if(playerX > width - playerSize) {
        playerX = width - playerSize;
    }
    if(playerY < 0){
         playerY = 0;
    }
    if(playerY > height - playerSize){ 
        playerY = height - playerSize;
    }



    square(playerX, playerY, playerSize);
    copy(orc,sx+offsetX,sy,offsetY,w,h,)
}