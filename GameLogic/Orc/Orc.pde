int x,y,w,h;
int vx,vy;
boolean up,down,right,left;

int currentFrame, offsetX, offsetY, totalFrames, row, sx, sy;
int hold, delay;


void setup(){
    size(500, 200);
    x= width/2;
    y= height/2;
    w = h = 32;

    currentFrame = 0;
    offsetX = 0 * w;
    offsetY = 0 * h;
    row = 0;
    sx = sy = 0;
    hold = 0;
    delay = 6;
    up = down = right = left = false;
}

void draw(){

    if(left&&!right){
        vx = -2;
        row = 1;
    }
    if(!left&&right){
        vx = 2;
        row = 0;
    }
    if(!left&&!right){
        vx = 0;
    }
    if(up&&!down){
        vy = -2;
        row = 2;
    }
    if(!up&&down){
        vy = 2;
        row = 3;
    }
    if(!up&&!down){
        vy = 0;
    }
    if(!up&&!down&&!right&&!left){
        currentFrame = 0;
        vx = 0;
        vy = 0;
    }

    x += vx;
    y += vy;

    sx = currentFrame * w;
    sy = row * h;

    currentFrame++;
    if(currentFrame == totalFrames){
        currentFrame = 0;
    }

    hold = (hold+1)%delay;


}