Flag myFlag = new Flag(250, 250);

void setup()
{
  size(500,500);
  background(255);
  colorMode(HSB);
  noStroke();
}

void draw()
{
  background(255);
  myFlag.create();
  myFlag.move();
}
