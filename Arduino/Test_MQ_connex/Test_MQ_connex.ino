#define CH4       A1      //need to be changed,read only pin 
#define H2        A0

byte pins[] = {CH4, H2};


void setup() {}

void loop() {
  testPins(); // just to test connections with oscilloscope
}


void testPins() {
  long counter = 0;
  for (byte i = 0; i < sizeof(pins); i++) {
    pinMode(pins[i], OUTPUT);
  }

//  while(true) {
//    for (byte i = 0; i < sizeof(pins); i++) {
//      digitalWrite(pins[i], LOW);
//    }
//  }
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
