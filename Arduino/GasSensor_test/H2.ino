// adapted from http://sandboxelectronics.com/?p=196

/************************Hardware Related Macros************************************/
#define H2_PIN      A6      //define which analog input channel you are going to use
#define H2_ON_PIN   A1      //set on HIGH to turn on the sensor
#define RL_H2       10      //Load resistance in kOhm

/*****************************Globals***********************************************/
float H2Curve[3]  =  {-1.44, 4.25};       //two points are taken from the curve in datasheet. 
                                          //with these two points, a line is formed which is "approximately equivalent" 
                                          //to the original curve, and the slope is found.
                                          //data format:{ x, y, slope}; point1: (log200, log8.5), point2: (log10000, log0.03) 

float Ro_H2 = 14.01;         //Ro is calibrated at 5.06 kilo ohms (found with calibration function (arduino/Calibrate_MQ-8)

NIL_WORKING_AREA(waThreadH2, 20);

NIL_THREAD(ThreadH2, arg) {
  nilThdSleepMilliseconds(1000);
  Serial.begin(9600);
  pinMode(H2_ON_PIN, OUTPUT);
  digitalWrite(H2_ON_PIN, HIGH);
  while (true) {
    nilThdSleepMilliseconds(1000);
    getppm(H2_PIN, PARAM_H2, H2Curve, Ro_H2, RL_H2);
  }
}
