/*Read the concentration of CHç in PPM measured by the sensor*/
#define CH4             A7
#define CH4_ON          A0    
#define RL_VALUE        4.7   //Load resistance in kOhm
#define SAMPLE_NUM      20    //Number of samples to average for one measure
#define SAMPLE_INTERVAL 100   //interval of time between each sample
#define MIN_PPM         15    //normally 200 according to datasheet
#define MAX_PPM         50000 //normally 10000 according to datasheet


float CH4Curve[2]  = {-0.3544, 1.0707}; //{a, b}, log(y) = a*log(x) + b;
                                         //[{200, 1.8}; {10000, 0.45}]
float Ro_CH4        = 6.21;             //Found with Calibrate_MQ-4 program
int minraw, maxraw; 

void setup() {
  Serial.begin(9600);
  pinMode(CH4_ON, OUTPUT);
  digitalWrite(CH4_ON, HIGH);

  //Find range of analog values allowed from the datasheet
  float minratio, maxratio;
  minratio = pow(10,log10(MIN_PPM)*CH4Curve[0]+CH4Curve[1]);
  maxratio = pow(10,log10(MAX_PPM)*CH4Curve[0]+CH4Curve[1]);
  minraw = 1023*RL_VALUE/(Ro_CH4*minratio + RL_VALUE);
  maxraw = 1023*RL_VALUE/(Ro_CH4*maxratio + RL_VALUE);
  Serial.println("Raw min = " + String(minraw) + " and Raw max = " + String(maxraw)); 
}

void loop() {

  int i;
  float sensorValue=0;
 
  while(true){
    for (i = 0; i < SAMPLE_NUM; i++){
      sensorValue += analogRead(CH4);
      delay(SAMPLE_INTERVAL);
    }
    
    sensorValue = sensorValue/SAMPLE_NUM;
    if(sensorValue < minraw){
      Serial.println("Not enough CH4 (" + String(sensorValue) + ")");
    }
    else if(sensorValue > maxraw){
      Serial.println("Too much CH4 (" + String(sensorValue) + ")");
    }
    else{
    Serial.print("Value = " + String(sensorValue) + " / ");
    getCH4(sensorValue);
    }
    sensorValue = 0;
    delay(1000);
  }
}

void getCH4(float SensorValue){
  float rs_ro_ratio; 
  long CH4ppm;
  rs_ro_ratio = MQResistanceCalculation(SensorValue)/Ro_CH4;
  CH4ppm = MQGetPercentage(rs_ro_ratio,CH4Curve);
  Serial.println("CH4ppm = " + String(CH4ppm) + "ppm");
}

float MQResistanceCalculation(float raw_adc){
  return (float)RL_VALUE*(1023-raw_adc)/raw_adc; //1023 corresponds to the supply voltage
}

long MQGetPercentage(float rs_ro_ratio, float *pcurve){
  return pow(10,(log10(rs_ro_ratio)-pcurve[1])/pcurve[0]);
}
