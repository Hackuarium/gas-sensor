// adapted from http://sandboxelectronics.com/?p=196

/************************Hardware Related Macros************************************/
#define CH4_PIN     A7        //define which analog input channel you are going to use
#define CH4_ON_PIN  A0        //set on HIGH to turn on the sensor
#define RL_CH4      4.7      //Load resistance in kOhm

/*****************************Globals***********************************************/
float   CH4Curve[3]  =  {-0.3544, 1.0707};      //two points are taken from the curve in datasheet. 
                                                //with these two points, a line is formed which is "approximately equivalent" 
                                                //to the original curve, and the slope is found.
                                                //data format:{ x, y, slope}; point1: (log200, log1.8), point2: (log10000, log0.43)  

float   Ro_CH4 = 6.21;        //Ro is calibrated at 2.74 kilo ohms (found with calibration function (arduino/Calibrate_MQ-4))

NIL_WORKING_AREA(waThreadCH4, 20);

NIL_THREAD(ThreadCH4, arg) {
  nilThdSleepMilliseconds(1000);
  Serial.begin(9600);
  pinMode(CH4_ON_PIN, OUTPUT);
  digitalWrite(CH4_ON_PIN, HIGH);
  while (true) {
    nilThdSleepMilliseconds(1000);
    getppm(CH4_PIN, PARAM_CH4, CH4Curve, Ro_CH4, RL_CH4);
  }
}
