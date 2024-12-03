Paint paint = new Paint();
MessageSpinner spinner = new MessageSpinner(paint);
float angle = 0;

void setup() {
  size(600, 800);
  spinner.add("Rasmus");
  spinner.add("Bent");
  spinner.add("Bjarne");
  spinner.add("Alfred");
  spinner.add("Nikolaj");
  spinner.add("Arnold");
  spinner.add("Mulham");
  spinner.add("Lukas");
  spinner.add("Maja");
  spinner.add("Jon");
}

void draw() {
  render();
  update();
}

void update() {
  spinner.update(angle);
  paint.setSeed(angle);
  angle +=7;
}
void render() {
  background(paint.getBackgroundColor());
  spinner.render();
}
