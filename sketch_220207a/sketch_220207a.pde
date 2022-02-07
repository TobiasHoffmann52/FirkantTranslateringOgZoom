int x = 0;
int y = 0;

void setup () {
  size(600, 600);
}

void draw() {
  background(255);
  fill(0);
  for (int i = 0; i < 1000; i++) {
    rect(i%10*80+x, i/10*80+y, 30, 30);
  }
  if (keyPressed) {
    if (keyCode == 38) {
      y = y - 1 ;
    } else if (keyCode == 40) {
      y = y + 1 ;
    } else if (keyCode == 37) {
      x = x - 1 ;
    } else if (keyCode == 39) {
      x = x + 1 ;
    }
  }
}
