#define LCD_E      8
#define LCD_RS     6
#define LCD_D4     10
#define LCD_D5     11
#define LCD_D6     12
#define LCD_D7     13
#define LCD_BL     9    // back light
#define LCD_RW     7

byte pins[] = {LCD_E, LCD_RS, LCD_D4, LCD_D5, LCD_D6, LCD_D7, LCD_BL, LCD_RW};


void setup() {}

void loop() {
  // put your main code here, to run repeatedly:
  long counter = 0;
  pinMode(pins[6], OUTPUT);
  pinMode(pins[7], OUTPUT);
  digitalWrite(pins[7], LOW);
  while (true) {
    if (counter % (6 + 1) == 0) {
      if (digitalRead(pins[6]) == HIGH) {
        digitalWrite(pins[6], LOW);
      } else {
        digitalWrite(pins[6], HIGH);
      }
    }
    counter++;
    delay(100);
  }
}
