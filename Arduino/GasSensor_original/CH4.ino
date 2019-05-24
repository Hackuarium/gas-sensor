// adapted from http://sandboxelectronics.com/?p=196

/************************Hardware Related Macros************************************/
#define         CH4_PIN                        A7    //define which analog input channel you are going to use
#define         CH4_ON_PIN                     A0    //set on HIGH to turn on the sensor
#define         RL_VALUE                      4.7    //define the load resistance on the board, in kilo ohms

/*****************************Globals***********************************************/
float           CH4Curve[3]  =  {-0.3544, 1.0707};     //two points are taken from the curve in datasheet. 
                                                     //with these two points, a line is formed which is "approximately equivalent" 
                                                     //to the original curve. 
                                                     //data format:{ x, y, slope}; point1: (log200, log1.8), point2: (log10000, log0.45) 

float           Ro_CH4           =  6.21;                  //Ro is calibrated at 2.74 kilo ohms (found with calibration function (arduino/Calibrate_MQ-4))

NIL_WORKING_AREA(waThreadCH4, 20);

NIL_THREAD(ThreadCH4, arg) {
  nilThdSleepMilliseconds(1000);
  Serial.begin(9600);
  pinMode(CH4_ON_PIN, OUTPUT);
  digitalWrite(CH4_ON_PIN, HIGH);
  while (true) {
    nilThdSleepMilliseconds(1000);
    getCH4();
  }
}

/*****************************  getCH4 *********************************************3
Input:   CH4_pin - analog channel
Output:  PARAM_CH4 set as the ppm of CH4
Remarks: This function gets first the sensor Resistance (Rs) and then sets PARAM_H2 as
         the concentration of CH4 in ppm from the ratio Rs/Ro
************************************************************************************/ 
void getCH4(){
  float rs_ro_ratio;
  long CH4ppm;
  rs_ro_ratio = MQResistanceCalculationCH4(analogRead(CH4_PIN))/Ro_CH4;
  CH4ppm = MQGetPercentageCH4(rs_ro_ratio,CH4Curve);
  setParameter(PARAM_CH4, CH4ppm);
}

/****************** MQResistanceCalculation ****************************************
Input:   raw_adc - raw value read from adc, which represents the voltage
Output:  the calculated sensor resistance
Remarks: The sensor and the load resistor forms a voltage divider. Given the voltage
         across the load resistor and its resistance, the resistance of the sensor
         could be derived.
************************************************************************************/ 
float MQResistanceCalculationCH4(float raw_adc){
  return ((float)RL_VALUE*(1023-raw_adc)/raw_adc); //1023 corresponds to the supply voltage
}

/*****************************  MQGetPercentage **********************************
Input:   rs_ro_ratio - Rs divided by Ro
         pcurve      - pointer to the curve of the target gas
Output:  ppm of the target gas
Remarks: By using the slope and a point of the line. The x(logarithmic value of ppm) 
         of the line could be derived if y(rs_ro_ratio) is provided. As it is a 
         logarithmic coordinate, power of 10 is used to convert the result to non-logarithmic 
         value.
************************************************************************************/ 
long MQGetPercentageCH4(float rs_ro_ratio, float *pcurve){
  return pow(10,(log10(rs_ro_ratio)-pcurve[1])/pcurve[0]);
}
