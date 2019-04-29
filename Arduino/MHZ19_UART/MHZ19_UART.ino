// adapted from https://forum.mysensors.org/topic/6528/mh-z19-co2-sensor/14

#include <SoftwareSerial.h>

#define RX    A2
#define TX    A3

unsigned long co2MeasurementInterval = 10000;     // Time to wait between reads (in milliseconds).
SoftwareSerial co2Serial(A2, A3);                    // RX, TX . You can choose other pins if you prefer. Remember: TX (transmit) on the sensor must be connected to RX (receive) on the Arduino.

void setup() 
{
  delay(1000);
  pinMode(RX, INPUT);
  pinMode(TX, OUTPUT);
  Serial.begin(9600);
  delay(1000);
  co2Serial.begin(9600);
  delay(2000);
  while (co2Serial.read()!=-1) {};  //clear Co2 buffer.
  Serial.println("hello world, I am a sensor.");
}

void loop() 
{
  // You should not change this variable:
  static unsigned long previousCo2Millis = 0;       // Used to remember the time of the last temperature measurement.

  unsigned long currentMillis = millis();           // The time since the sensor started, counted in milliseconds. This script tries to avoid using the Sleep function, so that it could at the same time be a MySensors repeater.

  if (currentMillis - previousCo2Millis >= co2MeasurementInterval) { // this only gets triggered when enough time has passed.
    previousCo2Millis = currentMillis;
    
    long co2ppm = readCO2();    
    Serial.println("Co2 - PPM = " + String(co2ppm)); 
    Serial.print("Co2 - zzzzZZZZzzzzZZZZzzzz\n");
  }
}

// Main function that gets the Co2 data
int readCO2()
{
  while (co2Serial.read()!=-1) {};  //clear serial buffer  
  Serial.println("CO2 - Sending data request to sensor.");
  
  byte cmd[9] = {0xFF, 0x01, 0x86, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79};
  byte response[9]; // for answer
  
  // command to ask for data
  co2Serial.write(cmd, 9); //request PPM CO2 

  memset(response, 0, 9); //clear the buffer

  int i = 0;
  while (co2Serial.available() == 0) {
    Serial.print("Waiting for response ");
    Serial.print(i);
    Serial.println(" s");
    delay(1000);
    i++;
  }
  if (co2Serial.available() > 0) {
      co2Serial.readBytes(response, 9);
  }

  //print out the response in hexa
  for (int j = 0; j < 9; j++){ 
    Serial.print(String(response[j], HEX));
    Serial.print(" - ");
  }
  Serial.println("END");  

  if (byte(response[0]) != 0xFF)
  {
    Serial.println("Wrong starting byte from co2 sensor! (should be FF)");
    return -1;
  }

  if (byte(response[1]) != 0x86)
  {
    Serial.println("Wrong command from co2 sensor! (should be 86)");
    return -1;
  }

  int responseHigh = (int) byte(response[2]);
  int responseLow = (int) byte(response[3]);
  int ppm = (256 * responseHigh) + responseLow;
  
  return ppm;
}
