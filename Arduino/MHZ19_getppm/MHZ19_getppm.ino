/*----------------------------------------------------------
    MH-Z19 CO2 sensor  SAMPLE
  ----------------------------------------------------------*/

#include <MHZ19.h>

const int rx_pin = A2;	//Serial rx pin no
const int tx_pin = A3;	//Serial tx pin no

MHZ19 mhz19;

/*----------------------------------------------------------
    MH-Z19 CO2 sensor  setup
  ----------------------------------------------------------*/
void setup() {
  Serial.begin(9600);
  mhz19.begin(rx_pin, tx_pin);
  mhz19.setAutoCalibration(false);
  //while( mhz19.isWarming() ) {      //seems to be an infinite loop...
    Serial.print("MH-Z19 now warming up...  status:");
    Serial.println(mhz19.getStatus());
    delay(1000);
  //}
}

/*----------------------------------------------------------
    MH-Z19 CO2 sensor  loop
  ----------------------------------------------------------*/
void loop() {
  int co2ppm = mhz19.getPPM(UART);
  int temp = mhz19.getTemperature();

  Serial.print("co2: "); Serial.println(co2ppm);
  Serial.print("temp: "); Serial.println(temp);
  
  delay(5000);
}
