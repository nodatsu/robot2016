
float zoom = 1.0;
float phi = 0.0;

void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(0);

  camera(400, -600, 1500, 0, 0, 0, 0, 1, 0);

  lights();

  rotateY(phi);
  scale(zoom);

  fill(64, 255, 96);
  box(5000, 0, 5000);
}