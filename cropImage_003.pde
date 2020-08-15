
PImage originalImage;
PImage croppedImage = createImage(200, 200, RGB);

void setup() {

  size(800, 533);
  originalImage = loadImage("church.jpg");
}

void draw() {
  image(originalImage, 0, 0); // display the church on the screen
  croppedImage = originalImage.get(mouseX, mouseY, 100, 100);
  image(croppedImage, width/2, height/2);  

}

void mouseClicked(){
  croppedImage.save("croppedImage.png");
}
