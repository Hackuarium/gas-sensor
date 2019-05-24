/* Test if each pin is correctly connected, by sending a square signal with
different frequencies. One should an oscilloscope with this program*/
#define CH4       A1 
#define H2        A0

byte pins[] = {CH4, H2};


void setup() {}

void loop() {
  testPins();
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
