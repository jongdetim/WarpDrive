Star[] stars = new Star[3000];
float speed;

void setup() {
  size(1920, 1080);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  background(0, 0);
}

void draw() {
  speed = map(mouseX, 0, width, 0, 120);
  noStroke();
  float decay = map(speed, 0, 120, 100, 15);
  fill(0, decay);
  rect(0, 0, width, height);
  translate(width/2, height/2);
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}
