/*Read the concentration of H2 in PPM measured by the sensor*/
#define H2              A6
#define H2_ON           A1
#define RL_VALUE        10    //Load resistance in kOhm
#define SAMPLE_NUM      20    //Number of samples to average for one measure
#define SAMPLE_INTERVAL 100   //interval of time between each sample
#define MIN_PPM         15    //normally 100 according to datasheet
#define MAX_PPM         50000 //normally 10000 according to datasheet

float H2Curve[2]  = {-1.44, 4.25}; //{a, b}, log(y) = a*log(x) + b;
                                   //[{200, 8,5}; {10000, 0.03}]
float Ro_H2       = 14.01;         //Found with Calibrate_MQ-8 program
int minraw, maxraw;        

void setup(){
  Serial.begin(9600);
  pinMode(H2_ON, OUTPUT);
  digitalWrite(H2_ON, HIGH);

  //Find range of analog values allowed from the datasheet
  float minratio, maxratio;
  minratio = pow(10,log10(MIN_PPM)*H2Curve[0]+H2Curve[1]);
  maxratio = pow(10,log10(MAX_PPM)*H2Curve[0]+H2Curve[1]);
  minraw = 1023*RL_VALUE/(Ro_H2*minratio + RL_VALUE);
  maxraw = 1023*RL_VALUE/(Ro_H2*maxratio + RL_VALUE);
  Serial.println("Raw min = " + String(minraw) + " and Raw max = " + String(maxraw)); 
}

void loop(){
  int i;
  float sensorValue=0;
 
  while(true){
    for (i = 0; i < SAMPLE_NUM; i++){
      sensorValue += analogRead(H2);
      delay(SAMPLE_INTERVAL);
    }
    
    sensorValue = sensorValue/SAMPLE_NUM;
    if(sensorValue < minraw){
      Serial.println("Not enough H2 (" + String(sensorValue) + ")");
    }
    else if(sensorValue >= maxraw){
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

void getH2(float sensorValue){
  float rs_ro_ratio;
  long H2ppm;
  rs_ro_ratio = MQResistanceCalculation(sensorValue)/Ro_H2;
  H2ppm = MQGetPercentage(rs_ro_ratio,H2Curve);
  Serial.println("H2ppm = " + String(H2ppm) + "ppm");
}
 
float MQResistanceCalculation(float raw_adc){
  return (float)RL_VALUE*(1023-raw_adc)/raw_adc;
}

long MQGetPercentage(float rs_ro_ratio, float *pcurve){
  return pow(10,(log10(rs_ro_ratio)-pcurve[1])/pcurve[0]); //1023 corresponds to the supply voltage
}
