/*****************************  getppm *********************************************3
Input:   MQ_pin, parameters to change, gas_curve, Ro
Output:  PARAM set as the ppm of the gas
Remarks: This function sets the global parameter of the gas to its ppm concentration
************************************************************************************/ 
void getppm(int MQ_pin, int PARAM, float *pcurve, float Ro, float Rl){
  float rs_ro_ratio;
  long ppm;
  rs_ro_ratio = MQResistanceCalculation(analogRead(MQ_pin), Rl)/Ro;
  ppm = MQGetPercentage(rs_ro_ratio,pcurve);
  setParameter(PARAM, ppm);
}

/****************** MQResistanceCalculation ****************************************
Input:   raw_adc - raw value read from adc, which represents the voltage
Output:  the calculated sensor resistance
Remarks: The sensor and the load resistor forms a voltage divider. Given the voltage
         across the load resistor and its resistance, the resistance of the sensor
         could be derived.
************************************************************************************/ 
float MQResistanceCalculation(int raw_adc, float Rl){
  return ((float)Rl*(1023-raw_adc)/raw_adc); //1023 corresponds to the supply voltage
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
int  MQGetPercentage(float rs_ro_ratio, float *pcurve){
  return pow(10,(log(rs_ro_ratio)-pcurve[1])/pcurve[0]);
}
