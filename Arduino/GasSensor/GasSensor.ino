// including libraries, defining main pins used and setting up general setup and loop.


#define MAX_PARAM 16   // If the MAX_PARAM change you need to change the pointer in the EEPROM


#define THR_SERIAL            1

#define THR_EEPROM_LOGGER 1
#define NUMBER_PARAMETERS_TO_LOG 6  // defines the number of parameters to log
// allowed values: 1, 2, 3, 4, 6, 8, 10, 14
// 2 first entries in the log will be logID and secodns between
#define LOG_INTERVAL 600



#include "libino/hack.h"


void setup() {
  setupParameters();
  checkParameters(); // setup automatically the default parameter after install boot loader
  nilSysBegin();
}

void loop() {}

