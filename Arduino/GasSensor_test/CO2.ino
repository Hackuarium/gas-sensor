#include "libino/mhz19/MHZ19.cpp"
#include <SoftwareSerial.h>

#define MHZ_RX    A2
#define MHZ_TX    A3



SoftwareSerial co2Serial(MHZ_RX, MHZ_TX); // RX, TX

MHZ19 mhz19(&co2Serial);



NIL_WORKING_AREA(waThreadCO2, 20);

NIL_THREAD(ThreadCO2, arg) {
  nilThdSleepMilliseconds(1000);
  co2Serial.begin(9600);
  while (true) {
    nilThdSleepMilliseconds(1000);
    getCO2();
  }
}

void getCO2() {
  MHZ19_RESULT response = mhz19.retrieveData();
  if (response == MHZ19_RESULT_OK) {
    setParameter(PARAM_CO2, mhz19.getCO2());
    setParameter(PARAM_CO2_TEMP, mhz19.getTemperature()*100);
    setParameter(PARAM_CO2_ACCURACY, mhz19.getAccuracy());
  } else {
    setParameter(PARAM_CO2, ERROR_VALUE);
    setParameter(PARAM_CO2_TEMP, ERROR_VALUE);
    setParameter(PARAM_CO2_ACCURACY, ERROR_VALUE);
  }
}
