class MessageSpinner {

  float rotationAngleRadian = 0;
  float yOffset = 0;
  ArrayList<Message> messages = new ArrayList<Message>();
  Paint paint;
  float messageAngleRad = 0;

  MessageSpinner(Paint p) {
    paint = p;
  }

  void add(String message) {
    int offset = messages.size();
    Message m = new Message(message, offset);
    messages.add(m);
    messageAngleRad = (messages.isEmpty()) ? 0: TWO_PI/messages.size();
  }

  void update(float angleDeg) {
    rotationAngleRadian = angleDeg/180*PI;
    yOffset = sin(rotationAngleRadian/3)*150;
    for (var message : messages) {
      message.update(rotationAngleRadian, messageAngleRad);
    }
  }

  void render() {
    push();
    textAlign(LEFT, CENTER);
    fill(paint.getColor());

    translate(50, height/2 + yOffset);
    rotate(rotationAngleRadian);
    for (var message : messages) {
      rotate(messageAngleRad);
      message.render();
    }
    pop();
  }
}
