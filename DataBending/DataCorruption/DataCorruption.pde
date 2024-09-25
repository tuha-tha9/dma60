PImage img;

void setup() {
  size(800, 600);
  img = loadImage("your_image.jpg"); // Replace with the image's file path
  img.loadPixels();

  // Introduce data corruption by randomly changing pixel values
  for (int i = 0; i < img.pixels.length; i++) {
    if (random(1) < 0.4) { // Adjust the corruption rate as needed
      img.pixels[i] = color(random(255), random(255), random(255));
    }
  }

  img.updatePixels();
  image(img, 0, 0, width, height);
}

