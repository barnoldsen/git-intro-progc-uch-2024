class Paint {

  float seed = 0;

  void setSeed(float value) {
    seed = value;
  }
  color getColor() {
    colorMode(HSB);
    return color((-90 + seed/7) % 360, 200, 250);
  }
  color getBackgroundColor() {
    colorMode(HSB);
    return color(seed/11 % 360, 100, 100);
  }
}
