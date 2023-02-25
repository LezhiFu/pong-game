float  circlex;
float  circley=200;
float  GAP=50;
float  paddley;
float  start=random(-5, +5);
float  speedx=5;
float  speedy=5;
int score = 0;  // player's score
boolean gameOver = false; 
boolean pressed = false;

void setup() {
  size(1500, 1000);
  paddley=height-GAP;
  circlex=random(1500);
}

void draw() {
  if (mousePressed == false) {
    background(0, 0, 0);
  }

  if (gameOver == false) {
    paddle();

    ball();


    ball_move();


    ball_bounce();

    score();
  }
  if (circley>=height) {
    game_over();
  }
  if (gameOver == true) {
    fill(255);
    textSize(48);
    textAlign(CENTER);
    text("Game Over Press any key to start over", width/2, height/2);

    if (keyPressed == true) {
      gameOver=false;
      score=0;
      speedy=5;
      speedx=5;
    }
  }
}
