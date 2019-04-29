// inspiration: http://sandboxelectronics.com/?p=196

/************************Hardware Related Macros************************************/
#define         H2_PIN                        A6    //define which analog input channel you are going to use
#define         H2_ON_PIN                     A1    //set on HIGH to turn on the sensor
#define         RL_VALUE                      10    //define the load resistance on the board, in kilo ohms
#define         RO_CLEAN_AIR_FACTOR           9.21  //RO_CLEAR_AIR_FACTOR=(Sensor resistance in clean air)/RO,
                                                     //which is derived from the chart in datasheet
                                                     
/***********************Software Related Macros************************************/
#define         CALIBARAION_SAMPLE_TIMES     50    //define how many samples you are going to take in the calibration phase
#define         CALIBRATION_SAMPLE_INTERVAL  500   //define the time interal(in milisecond) between each samples in the
                                                     //cablibration phase
#define         READ_SAMPLE_INTERVAL         50    //define how many samples you are going to take in normal operation
#define         READ_SAMPLE_TIMES            5     //define the time interal(in milisecond) between each samples in 
                                                     //normal operation

/*****************************Globals***********************************************/
float           H2Curve[3]  =  {2.3, 0.93,-1.44};    //two points are taken from the curve in datasheet. 
                                                     //with these two points, a line is formed which is "approximately equivalent" 
                                                     //to the original curve. 
                                                     //data format:{ x, y, slope}; point1: (log200, log8.5), point2: (log10000, log0.03) 

float           Ro           =  4.86;                  //Ro is calibrated at 27 kilo ohms (found with tests)

void setup(){
  Serial.begin(9600);
  pinMode(H2_ON_PIN, OUTPUT);
  digitalWrite(H2_ON_PIN, HIGH);
  Serial.println("Ro = " + String(Ro) + " kOhm");
}

void loop(){
  float H2ppm;
  H2ppm = getH2();
  Serial.println("H2 = " + String(H2ppm) + " ppm");
  delay(1000);
}

/*****************************  getH2 *********************************************3
Input:   H2_pin - analog channel
Output:  PARAM_H2 set as the ppm of H2
Remarks: This function gets first the sensor Resistance (Rs) and then sets PARAM_H2 as
         the concentration of H2 in ppm from the ratio Rs/Ro
************************************************************************************/ 
float getH2(){
  float rs_ro_ratio, H2ppm;
  rs_ro_ratio = MQResistanceCalculation(analogRead(H2_PIN))/Ro;
  Serial.print("Rs/Ro = " + String(rs_ro_ratio) + " / ");
  H2ppm = MQGetPercentage(rs_ro_ratio,H2Curve);
  return H2ppm;
  //setParameter(PARAM_H2, rs_ro_ratio);
  //setParameter(PARAM_H2, H2ppm);
}

/****************** MQResistanceCalculation ****************************************
Input:   raw_adc - raw value read from adc, which represents the voltage
Output:  the calculated sensor resistance
Remarks: The sensor and the load resistor forms a voltage divider. Given the voltage
         across the load resistor and its resistance, the resistance of the sensor
         could be derived.
************************************************************************************/ 
float MQResistanceCalculation(int raw_adc){
  float Res;
  Res = ((float)RL_VALUE*(1023-raw_adc)/raw_adc);
  Serial.print("raw_adc = " + String(raw_adc) + " / ");
  Serial.print("Vo = " + String((((float)raw_adc/1023*5.0))) + " / ");
  Serial.print("Res = " + String(Res) + " / ");
  return Res;
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
  return (pow(10,( ((log(rs_ro_ratio)-pcurve[1])/pcurve[2]) + pcurve[0])));
}
