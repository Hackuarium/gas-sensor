/* Test if each pin is correctly connected, by sending a square signal with
different frequencies. One should an oscilloscope with this program*/
#define RX        A2
#define TX        A3
#define SENS3     2
#define PWM       3

byte pins[] = {RX, TX, SENS3, PWM};


void setup() {}

void loop() {
  testPins(); // just to test connections with oscilloscope
}


void testPins() {
  long counter = 0;
  for (byte i = 0; i < sizeof(pins); i++) {
    pinMode(pins[i], OUTPUT);
  }

  while (true) {
    for (byte i = 0; i < sizeof(pins); i++) {
      if (counter % (i + 1) == 0) {
        if (digitalRead(pins[i]) == HIGH) {
          digitalWrite(pins[i], LOW);
        } else {
          digitalWrite(pins[i], HIGH);
        }
      }
    }
    counter++;
    delay(1);
  }
}
