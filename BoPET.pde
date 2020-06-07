PImage img0, img1, img2, img3, img4, img5, img6;
PImage img;
int chapter = 0;
ArrayList<PImage> images = new ArrayList();
float ratio;
String path = System.getProperty("user.home")+"/Desktop/BoPET/pics"+chapter+"/";

void setup() {
  surface.setLocation(0, 0);
  size(1600, 900);

  img0 = loadImage("BoPET.jpg"); 
  img1 = loadImage("sky 3b.jpg");
  img2 = loadImage("couds and green.jpg");
  img3 = loadImage("window.jpg");
  img4 = loadImage("roses2.jpg");
  img5 = loadImage("floor 2.jpg");
  img6 = loadImage("purple 2.jpg");

  images.add(img0);
  images.add(img1);
  images.add(img2);
  images.add(img3);
  images.add(img4);
  images.add(img5);
  images.add(img6);
 
  img = images.get(chapter);
}
int col = 0;
void draw() {
  loadPixels();
  for (int i = 0; i < height; i ++) {
    color c = img.get(col, int(float(i)*ratio));
    for (int j = 0; j < width; j ++) {
      pixels[j + i * width] = c;
    }
  }
  updatePixels();
  col ++;
  if (col > img.width) {
    col = 0;
  }
}

void keyPressed() {
  if (keyCode == 38) {
    chapter ++;
  }
  if (keyCode == 40) {
    chapter --;
  }
  if (chapter > 6) {
    chapter = 0;
  }
  if (chapter < 0) {
    chapter = 6;
  }
  img = images.get(chapter);
  ratio = float(img.width)/float(width);
  println(chapter);
}
