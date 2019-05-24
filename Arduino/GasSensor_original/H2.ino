// adapted from http://sandboxelectronics.com/?p=196

/************************Hardware Related Macros************************************/
#define         H2_PIN                        A6    //define which analog input channel you are going to use
#define         H2_ON_PIN                     A1    //set on HIGH to turn on the sensor
#define         RL_VALUE                      10    //define the load resistance on the board, in kilo ohms

/*****************************Globals***********************************************/
float           H2Curve[3]  =  {-1.44, 4.25};       //{a, b}, log(y) = a*log(x) + b;
                                                    //[{200, 8,5}; {10000, 0.03}]
float           Ro_H2           =  5.06;            //Ro is calibrated at 5.06 kilo ohms (found with calibration function
                                                    //(arduino/HydrogenSensor) in fresh air)

NIL_WORKING_AREA(waThreadH2, 20);

NIL_THREAD(ThreadH2, arg) {
  nilThdSleepMilliseconds(1000);
  Serial.begin(9600);
  pinMode(H2_ON_PIN, OUTPUT);
  digitalWrite(H2_ON_PIN, HIGH);
  while (true) {
    nilThdSleepMilliseconds(1000);
    getH2();
  }
}


/*****************************  getH2 *********************************************3
Input:   H2_pin - analog channel
Output:  PARAM_H2 set as the ppm of H2
Remarks: This function gets first the sensor Resistance (Rs) and then sets PARAM_H2 as
         the concentration of H2 in ppm from the ratio Rs/Ro
************************************************************************************/ 
void getH2(){
  float rs_ro_ratio;
  long H2ppm;
  rs_ro_ratio = MQResistanceCalculationH2(analogRead(H2_PIN))/Ro_H2;
  H2ppm = MQGetPercentageH2(rs_ro_ratio,H2Curve);
  setParameter(PARAM_H2, H2ppm);
}

/****************** MQResistanceCalculation ****************************************
Input:   raw_adc - raw value read from adc, which represents the voltage
Output:  the calculated sensor resistance
Remarks: The sensor and the load resistor forms a voltage divider. Given the voltage
         across the load resistor and its resistance, the resistance of the sensor
         could be derived.
************************************************************************************/ 
int MQResistanceCalculationH2(int raw_adc){
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
long  MQGetPercentageH2(float rs_ro_ratio, float *pcurve){
  return pow(10,(log10(rs_ro_ratio)-pcurve[1])/pcurve[0]);
}
