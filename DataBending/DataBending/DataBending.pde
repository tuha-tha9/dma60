PImage img;

void setup() {
  size(800, 600);
  img = loadImage("your_image.jpg"); // Replace with the image's file path
// Apply random pixel manipulation
  randomPixelManipulation(img);
  image(img, 0, 0, width, height);
}

void randomPixelManipulation(PImage img) {
  img.loadPixels();

  for (int i = 0; i < img.pixels.length; i++) {
    // Randomly alter the color values of each pixel
    float r = red(img.pixels[i]);
    float g = green(img.pixels[i]);
    float b = blue(img.pixels[i]);

    // Apply random adjustments to the color channels
    r += random(-200,200); // Adjust the range as needed
    g += random(-200,200);
    b += random(-200,200);

    // Ensure color values stay within the valid range (0-255)
    r = constrain(r, 0, 255);
    g = constrain(g, 0, 255);
    b = constrain(b, 0, 255);

    img.pixels[i] = color(r, g, b);
  }

  img.updatePixels();
}