PImage img;

void setup() {
  size(2388,912); //add the exact pixel size of your image here
  img = loadImage("your_image.jpg"); //add the filename of your image here
  noLoop();
  background(255);
  
  // Display the original image on the left
  image(img, 0, 0, width / 2, height);
  
  // Reflect and mirror the image horizontally on the right
  PImage mirroredImage = createImage(img.width, img.height, RGB);
  mirroredImage.loadPixels();
  img.loadPixels();

  for (int y = 0; y < img.height; y++) {
    for (int x = 0; x < img.width; x++) {
      int pixelColor = img.pixels[y * img.width + x];
      mirroredImage.pixels[y * mirroredImage.width + mirroredImage.width - x - 1] = pixelColor;
    }
  }

  mirroredImage.updatePixels();
  
  // Display the mirrored image on the right
  image(mirroredImage, width / 2, 0, width / 2, height);
}

