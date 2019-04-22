#define H2       A6
#define H2_ON    A1

NIL_WORKING_AREA(waThreadH2, 20);

NIL_THREAD(ThreadH2, arg) {
  nilThdSleepMilliseconds(1000);
  Serial.begin(9600);
  pinMode(H2_ON, OUTPUT);
  while (true) {
    nilThdSleepMilliseconds(1000);
    getH2();
  }
}

void getH2() {
  float sensorVoltage;
  float sensorValue;
  sensorValue = analogRead(H2);
  sensorVoltage = sensorValue/1024*5.0;
  setParameter(PARAM_H2, sensorVoltage);
}
