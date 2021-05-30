class  Star {
  float x;
  float y;
  float z;
  
  float pz;
 
  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    pz = z;
  }
  
  void  update() {
    z = z - speed;
    if (z < 1) {
      z = random(width * 7 / 8, width);
      x = random(-width, width);
      y = random(-height, height);
      pz = z;
    }
  }
  void show() {
  
  float sx = map(x / z, 0, 1, 0, width);
  float sy = map(y / z, 0, 1, 0, height);
  
  //float r = map(z, 0, width, 4, 0);
  
  float px = map(x / pz, 0, 1, 0, width);
  float py = map(y / pz, 0, 1, 0, height);
  
  pz = z;
  float brightness = map(z, 50, width, 255, 0);
  stroke(brightness);
  
  float thickness = map(z, 0, width, 4, 0);
  strokeWeight(thickness);

  //ellipse(sx, sy, r, r);
  line(px, py, sx, sy);
  }
}
