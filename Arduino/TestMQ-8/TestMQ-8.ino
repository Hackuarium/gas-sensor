#define H2           A0
#define H2_ON        A1


void setup() {
  Serial.begin(9600);
  pinMode(H2_ON, OUTPUT);
  }

void loop() {
  digitalWrite(H2_ON, HIGH);
  double Vout;
  while(true){
    Serial.print("Vout = ");
    Serial.println(analogRead(H2));
    delay(1000);
  }
}
