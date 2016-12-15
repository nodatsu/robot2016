void mouseWheel(MouseEvent ev){
  float e = ev.getCount();
  if(e > 0) {
    zoom -= 0.1;
  }
  else {
    zoom += 0.1;
  }
}

void mouseDragged() {
  phi += (mouseX - pmouseX) * 0.01;
}

void keyPressed() {
  rs.add(new Robot());
}