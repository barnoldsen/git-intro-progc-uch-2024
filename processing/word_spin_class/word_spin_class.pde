<<<<<<< HEAD
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
  spinner.add("Maja");
}

void draw() {
  render();
  update();
}

void update() {
  spinner.update(angle);
  paint.setSeed(angle);
  angle +=1.2;
}
void render() {
  background(paint.getBackgroundColor());
  spinner.render();
}
=======
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
}

void draw() {
  render();
  update();
}

void update() {
  spinner.update(angle);
  paint.setSeed(angle);
  angle +=1.2;
}
void render() {
  background(paint.getBackgroundColor());
  spinner.render();
}
>>>>>>> b0720fde5d265da7a4e5acdd0c2dd2718132cc63
