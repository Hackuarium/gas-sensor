#define H2           A6
#define H2_ON        A1


void setup() {
  Serial.begin(9600);
  pinMode(H2_ON, OUTPUT);
  }

void loop() {
  digitalWrite(H2_ON, HIGH);
  float sensorVoltage;
  float sensorValue;
  while(true){
    sensorValue = analogRead(H2);
    sensorVoltage = sensorValue/1024*5.0;
    Serial.print("Vout = ");
    Serial.print(sensorVoltage);
    Serial.println(" V");
    delay(1000);
  }
}
