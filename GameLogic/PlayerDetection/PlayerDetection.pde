int pickupX = 225;
int pickupY = 75;
int pickupSize = 50;
int playerSize = 50;

void setup() {
    size(500, 200);
}

void draw() {

    background(100);
    
    fill(0);
    square(pickupX, pickupY, pickupSize);

    boolean collisionX = (mouseX>(pickupX-pickupSize)) && (mouseX<(pickupX+pickupSize));
    boolean collisionY = (mouseY>(pickupY-pickupSize)) && (mouseY<(pickupY+pickupSize));
    if(collisionX && collisionY){ 
        fill(0,255,0);
    }
    else {
        fill(255);
    }

    square(mouseX, mouseY, playerSize);
}