// Man styrer med piletasterne
// Zoom ind på "1"
// Zoom ud på "2"

int x = 0;
int y = 0;
float s = 1;

void setup () {
  size(600, 600);
}

void draw() {
  background(0);
  fill(255);
  for (int i = 0; i < 100; i++) {
    rect(((i%10)*80+x-100)*s, (i/10*80+y-100)*s, 30*s, 30*s);
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
    } else if (key == '1') {
      s = s * 1.01 ;
    } else if (key == '2') {
      s = s * 0.99 ;
    }
  }
}
