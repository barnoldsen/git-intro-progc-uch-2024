int ldrPin = A1;

void setup() {
  Serial.begin(9600);
}

void loop() {
  int val = analogRead(ldrPin);
  Serial.println(val);
  delay(50);
}