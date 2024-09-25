int pickupX = 200;
int pickupY = 50;
int pickupSize = 100;

void setup() {
    size(500, 200);
}

void draw() {
    background(100);

    boolean collisionX = mouseX>pickupX && mouseX<pickupX+pickupSize;
    boolean collisionY = mouseY>pickupY && mouseY<pickupY+pickupSize;
    if(collisionX && collisionY) {
        fill(0,255,0);
        }
    else {
        fill(255,0,0);
    }

    square(pickupX, pickupY, pickupSize);
}