PImage img;

void setup() {
  size(800, 600);
  img = loadImage("your_image.jpg"); // Replace with the image's file path
}

void draw() {
  background(255);
  image(img, 0, 0, width, height);
}

