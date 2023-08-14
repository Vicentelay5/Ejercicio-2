float carWidth = 80;
float carHeight = 35;
color carColor;

void setup() {
  size(800, 600);
  carColor = color(random(255), random(255), random(255));
}

void draw() {
  background(255);
  float carX = width / 2;
  float carY = height / 2;
  drawCar(carX, carY, carWidth, carHeight, carColor);
}

void drawCar(float x, float y, float w, float h, color c) {
  // Cuerpo del auto
  fill(c);
  rect(x - w / 2, y - h / 2, w, h);
  rect(x - w * 0.2, y - h * 0.6, w * 0.6, h * 0.4);

  // Ruedas
  fill(0);
  ellipse(x - w * 0.25, y + h * 0.5, h * 0.6, h * 0.6);
  ellipse(x + w * 0.25, y + h * 0.5, h * 0.6, h * 0.6);
}

void mouseClicked() {
  carColor = color(random(255), random(255), random(255));
}
