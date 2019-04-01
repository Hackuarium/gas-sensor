/*********************************************
   This file is used to declare the parameters
   table used by the program.

   We use the EEPROM for saving the parameters
   changed by the user during the functionment
   of the Bioreactor.

   The parameter are loaded during the boot.

   All change to important parameters are saved
   to the EEPROM
 *********************************************/


#define PARAM_TEMPERATURE   0 // delay before taking blank
#define PARAM_HUMIDITY      1
#define PARAM_CO2           2
#define PARAM_CO2_ACCURACY  3
#define PARAM_H2            4
#define PARAM_CH4           5


#define PARAM_HUMIDITY_TEMP   10 // number of acquisition of 100ms that will be taken
#define PARAM_CO2_TEMP        11 // number of acquisition of 100ms that will be taken

#define PARAM_FLAGS           15 
#define PARAM_H2_ACTIVE       0  // invert rotary direction
#define PARAM_CH4_ACTIVE      1  // invert rotary direction

void resetParameters()
{

  setAndSaveParameter(PARAM_FLAGS, 0b00000011);
  // setQualifier(21569); // value to be defined
}

void checkParameters()
{
  if (getParameter(PARAM_FLAGS) < 0)
  {
    resetParameters();
  }
}
