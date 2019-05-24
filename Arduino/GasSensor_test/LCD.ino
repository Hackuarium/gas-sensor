#include <LiquidCrystal.h>

#define LCD_E      8
#define LCD_RS     6
#define LCD_D4     10
#define LCD_D5     11
#define LCD_D6     12
#define LCD_D7     13
#define LCD_BL     9    // back light


#define LCD_NB_ROWS     2
#define LCD_NB_COLUMNS  16

LiquidCrystal lcd(LCD_RS, LCD_E, LCD_D4, LCD_D5, LCD_D6, LCD_D7);

NIL_WORKING_AREA(waThreadLcd, 100);
NIL_THREAD(ThreadLcd, arg) {
  pinMode(LCD_BL, OUTPUT);
  digitalWrite(LCD_BL, HIGH); // backlight
  nilThdSleepMilliseconds(10);
  lcd.begin(LCD_NB_COLUMNS, LCD_NB_ROWS);

  int i = 1;
  while (true) {
    showData(i);
    nilThdSleepMilliseconds(2000);
    i++;
  }
}

void showData(int i) {
  if(i%5 == 0 || (i-1)%5 == 0){
    lcd.setCursor(0, 0);
    lcd.print(F(" Temp:   Hum:   "));
    lcd.setCursor(0, 1);
    lcd.print(" ");
    lcd.setCursor(1, 1);
    lcd.print((double)getParameter(PARAM_TEMPERATURE) / 100, 2);
    lcd.setCursor(6, 1);
    lcd.print("   ");
    lcd.setCursor(9, 1);
    lcd.print((double)getParameter(PARAM_HUMIDITY) / 100, 2);
    lcd.setCursor(14, 1);
    lcd.print("  ");
  }
  else{
    lcd.setCursor(0,0);
    lcd.print("C02:  H2:  CH4:");
    lcd.setCursor(0,1);
    lcd.print((double)getParameter(PARAM_CO2),2);
    lcd.setCursor(5,1);
    lcd.print(" ");
    lcd.setCursor(6,1);
    lcd.print((double)getParameter(PARAM_H2)/100, 2);
    lcd.setCursor(10,1);
    lcd.print(" ");
    lcd.setCursor(11,1);
    lcd.print((double)getParameter(PARAM_CH4)/100, 2);
  }
}
