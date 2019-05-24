//Show ppm of CO2 using PWM pin (less accurate than UART)
#include <SoftwareSerial.h>
#define pwmPin 3
SoftwareSerial mySerial(A2, A3);

double th, tl, tpwm, p1, p2, ppm;

void setup() {
  Serial.begin(9600); 
  mySerial.begin(9600); 
  pinMode(pwmPin, INPUT);
  th = pulseIn(pwmPin, HIGH, 3000000); // use microseconds
  tl = pulseIn(pwmPin, LOW, 3000000);
  tpwm = th + tl; // actual pulse width
  Serial.println("PWM-time: " + String(tpwm) + " [us]");
  p1 = tpwm/502; // start pulse width
  p2 = tpwm/251; // start and end pulse width combined
}

void loop() {
  th = pulseIn(pwmPin, HIGH, 3000000);
  ppm = 5000 * (th-p1)/(tpwm-p2);
  Serial.println("ppm: " + String(ppm));
  delay(3500);
}
