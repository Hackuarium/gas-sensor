#define CH4       A7
#define CH4_ON    A0

NIL_WORKING_AREA(waThreadCH4, 20);

NIL_THREAD(ThreadCH4, arg) {
  nilThdSleepMilliseconds(1000);
  Serial.begin(9600);
  pinMode(CH4_ON, OUTPUT);
  while (true) {
    nilThdSleepMilliseconds(1000);
    getCH4();
  }
}

void getCH4() {
  float sensorVoltage;
  float sensorValue;
  sensorValue = analogRead(CH4);
  sensorVoltage = sensorValue/1024*5.0;
  setParameter(PARAM_CH4, sensorVoltage);
}
