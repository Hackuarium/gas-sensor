// setting all threads on + defining threads order of priority.

#define MONITORING_LED 13

NIL_WORKING_AREA(waThreadMonitoring, 0);
NIL_THREAD(ThreadMonitoring, arg) {
  nilThdSleepMilliseconds(1000);

  pinMode(MONITORING_LED, OUTPUT);

  wdt_enable(WDTO_8S);  //activate the watchdog
  while (TRUE) {
    wdt_reset();//reset avoids automatic reboot
    nilThdSleepMilliseconds(100);
  }
}


NIL_THREADS_TABLE_BEGIN()
// the order should be exact, Acquisition has the higher priority ...


NIL_THREADS_TABLE_ENTRY(NULL, ThreadH2, NULL, waThreadH2, sizeof(waThreadH2))

NIL_THREADS_TABLE_ENTRY(NULL, ThreadCH4, NULL, waThreadCH4, sizeof(waThreadCH4))

NIL_THREADS_TABLE_ENTRY(NULL, ThreadCO2, NULL, waThreadCO2, sizeof(waThreadCO2))

NIL_THREADS_TABLE_ENTRY(NULL, ThreadTemperature, NULL, waThreadTemperature, sizeof(waThreadTemperature))

NIL_THREADS_TABLE_ENTRY(NULL, ThreadHumidity, NULL, waThreadHumidity, sizeof(waThreadHumidity))



#ifdef THR_SERIAL
NIL_THREADS_TABLE_ENTRY(NULL, ThreadSerial, NULL, waThreadSerial, sizeof(waThreadSerial))
#endif

#ifdef THR_EEPROM_LOGGER
NIL_THREADS_TABLE_ENTRY(NULL, ThreadLogger, NULL, waThreadLogger, sizeof(waThreadLogger))
#endif

NIL_THREADS_TABLE_ENTRY(NULL, ThreadLcd, NULL, waThreadLcd, sizeof(waThreadLcd))


NIL_THREADS_TABLE_ENTRY(NULL, ThreadMonitoring, NULL, waThreadMonitoring, sizeof(waThreadMonitoring))


NIL_THREADS_TABLE_END()
