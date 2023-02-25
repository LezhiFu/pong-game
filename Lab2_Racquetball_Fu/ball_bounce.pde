void ball_bounce() {
  if (circlex<=0 || circlex>=width) {
    start*=-1;
  }
  if (circley<=0) {
    speedy=speedy*-1;
  }
  if (circley>paddley-40 && circlex<=mouseX+100 && circlex>=mouseX-100) {
    speedy=speedy*-1;
    speedy=speedy*1.2;
    score++;
  }
}
