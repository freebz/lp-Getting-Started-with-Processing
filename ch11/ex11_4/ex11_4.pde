// Example 11-4: Saving Images

float x = 0;

void setup() {
  size(720, 480);
  smooth();
  noFill();
  strokeCap(SQUARE);
  frameRate(30);
}

void draw() {
  background(204);
  translate(x, 0);
  for (int y = 40; y < 280; y += 20) {
    line(-260, y, 0, y + 200);
    line(0, y + 200, 260, y);
  }
  if (frameCount < 60) {
    saveFrame("frames/SaveExample-####.tif");
  } else {
    exit();
  }
  x += 2.5;
}