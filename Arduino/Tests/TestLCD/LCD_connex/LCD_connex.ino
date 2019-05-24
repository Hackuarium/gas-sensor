/* Test if each pin is correctly connected, by sending a square signal with
different frequencies. One should an oscilloscope with this program*/
#define LCD_E      8
#define LCD_D4     10
#define LCD_D5     11
#define LCD_D6     12
#define LCD_D7     13
#define LCD_BL     9    // back light

byte pins[] = {LCD_E, LCD_D4, LCD_D5, LCD_D6, LCD_D7, LCD_BL};


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
