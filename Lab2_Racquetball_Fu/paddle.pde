void paddle() {
  //paddle
  fill(255);
  rectMode(CENTER);
  float x1=map(mouseX, 0, width, 100, 1400);
  rect(x1, paddley, 200, 25);
}
