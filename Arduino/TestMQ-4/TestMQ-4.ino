#define CH4           A7
#define CH4_ON        A0


void setup() {
  Serial.begin(9600);
  pinMode(CH4_ON, OUTPUT);
  }

void loop() {
  digitalWrite(CH4_ON, HIGH);
  float sensorVoltage;
  float sensorValue;
  while(true){
    sensorValue = analogRead(CH4);
    sensorVoltage = sensorValue/1024*5.0;
    Serial.print("Vout = ");
    Serial.print(sensorVoltage);
    Serial.println(" V");
    delay(1000);
  }
}
