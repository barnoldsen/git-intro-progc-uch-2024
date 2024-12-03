class Message {
  String message;
  int offset;
  PVector position = new PVector();;
  float scale = 100;
  float multiplier;

  Message(String msg, int offset) {
    message = msg;
    this.offset = offset;
  }

  void update(float angleRad, float messageAngleRad) {
    float totalRad = angleRad + HALF_PI + messageAngleRad * (offset+1);
    multiplier = (sin(totalRad) + 1)/2;
    position.x = 20 + 100*multiplier;
    position.y = 80 * multiplier;
  }

  void render() {
    textSize(1+scale*multiplier);
    text(message, position.x, position.y);
  }
}
