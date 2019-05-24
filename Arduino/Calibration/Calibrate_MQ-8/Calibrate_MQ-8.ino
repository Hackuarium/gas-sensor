/*Calibration of the sensor MQ-8, and allow to test it afterwards*/
// inspiration: http://sandboxelectronics.com/?p=196

/************************Hardware Related Macros************************************/
#define         H2_PIN                       A6     //define which analog input channel you are going to use
#define         H2_ON_PIN                    A1     // set on HIGH to turn the sensor on
#define         RL_VALUE                     10     //define the load resistance on the board, in kilo ohms
#define         RO_CLEAN_AIR_FACTOR          70     //RO_CLEAR_AIR_FACTOR=(Sensor resistance in clean air)/RO,
                                                     //derived from the chart in datasheet
 
/***********************Software Related Macros************************************/
#define         CALIBRATION_SAMPLE_TIMES     300    //define how many samples you are going to take in the calibration phase
#define         CALIBRATION_SAMPLE_INTERVAL  500    //define the time interal(in milisecond) between each samples in the
                                                    //cablibration phase
#define         READ_SAMPLE_INTERVAL         100    //define how many samples you are going to take in normal operation
#define         READ_SAMPLE_TIMES            20     //define the time interal(in milisecond) between each samples in 
                                                    //normal operation
                                                     
/*****************************Globals***********************************************/
float           H2Curve[2]  =  {-1.44, 4.25};       //Line representing the relationship between the log of the concentration
                                                    //of H2 in ppm (x) and the log of the ratio of resistances Rs/Ro (y)
                                                    //{a, b}, log(y) = a*log(x) + b;
                                                    //The two points chosen: {200, 8.5} and {10000, 0.403}  
 
float           Ro           =  14.01;              //Last Ro found with this programm, 14.01 kOhm. TOCHANGE at evry new calibration
bool            Calib_bool   =  true;              //Set to True if calibration is needed (fresh air condition expected)


void setup() {
  Serial.begin(9600);                               //UART setup, baudrate = 9600bps
  pinMode(H2_ON_PIN, OUTPUT);
  digitalWrite(H2_ON_PIN, HIGH);
  if(Calib_bool){
    Serial.print("Calibrating...\n");                
    Ro = MQCalibration();                           //Calibrating the sensor. Please make sure the sensor is in clean air
                                                    //when you perform the calibration 
    Serial.println("Calibration is done: Ro = " + String(Ro) + " kOhm");
  }                                                                     

}

//Average the value read from the analog pin, and if in the range, compute the ppm from it
void loop(){
  int i;
  float sensorValue=0;
  float analog;
 
  while(true){
    for (i = 0; i < READ_SAMPLE_TIMES; i++){
      analog = analogRead(H2_PIN);
      Serial.println("analog = " + String(analog) + " / "); 
      sensorValue += analog;
      delay(READ_SAMPLE_INTERVAL);
    }
    
    sensorValue = sensorValue/READ_SAMPLE_TIMES;
    if(sensorValue <= 1){
      Serial.println("Not enough H2 (" + String(sensorValue) + ")");
    }
    else if(sensorValue >= 1023){
      Serial.println("Too much H2 (" + String(sensorValue) + ")");
    }
    else{
    Serial.print("Value = " + String(sensorValue) + " / ");
    getH2(sensorValue);
    }
    sensorValue = 0;
    delay(1000);
  }
}

/***************************** MQCalibration ****************************************
Input:   mq_pin - analog channel
Output:  Ro of the sensor
Remarks: This function assumes that the sensor is in clean air. It use  
         MQResistanceCalculation to calculates the sensor resistance in clean air 
         and then divides it with RO_CLEAN_AIR_FACTOR.
************************************************************************************/ 
float MQCalibration() {
  int i;
  float val=0;
  delay(5000);
  for (i=0;i<CALIBRATION_SAMPLE_TIMES;i++) {            //take multiple samples
    int pin_value = analogRead(H2_PIN);
    if(i%5 == 0){
      Serial.println("sample n°:"+ String(i) + ", pin value = " + String(pin_value));
    }
    val += MQResistanceCalculation(pin_value);
    delay(CALIBRATION_SAMPLE_INTERVAL);
  }
  val = val/CALIBRATION_SAMPLE_TIMES;                   //calculate the average value
 
  val = val/RO_CLEAN_AIR_FACTOR;                        //divided by RO_CLEAN_AIR_FACTOR yields the Ro 
                                                       //according to the chart in the datasheet 
                                                         
  return val; 
}

/*****************************  getH2 *********************************************3
Input:   /
Output:  Concentration of H2 in ppm
Remarks: This function gets the concentration of H2 from the average of the values
          read on the analog pin.
************************************************************************************/ 
void getH2(float sensorValue){
  
  long H2ppm;
  H2ppm = MQGetPercentage(MQResistanceCalculation(sensorValue)/Ro,H2Curve);
  Serial.println("H2ppm = " + String(H2ppm) + "ppm");
}
 
/****************** MQResistanceCalculation ****************************************
Input:   raw_adc - raw value read from adc, which represents the voltage
Output:  the calculated sensor resistance Rs
Remarks: The sensor and the load resistor forms a voltage divider. Given the voltage
         across the load resistor and its resistance, the resistance of the sensor
         could be derived.
************************************************************************************/ 
float MQResistanceCalculation(float raw_adc) {
  return (float)RL_VALUE*(1023-raw_adc)/raw_adc;
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
long  MQGetPercentage(float rs_ro_ratio, float *pcurve) {
  return pow(10, (log(rs_ro_ratio)-pcurve[1])/pcurve[0]);
}
