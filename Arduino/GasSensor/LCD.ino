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

  while (true) {
    showData();
    nilThdSleepMilliseconds(2000);
  }
}

void showData() {
  lcd.setCursor(0, 0);
  lcd.print("T:");
  lcd.print((double)getParameter(PARAM_TEMPERATURE) / 100);
  lcd.print(" ");
  lcd.setCursor(8, 0);
  lcd.print("J:");
  lcd.print((double)getParameter(PARAM_HUMIDITY) / 100);
  lcd.print(" ");
  lcd.setCursor(0, 1);
  lcd.print("CO2:");
  lcd.print((double)getParameter(PARAM_CO2));
  lcd.print(" ");
  lcd.setCursor(8, 1);
  lcd.print(""); 
  lcd.print("");
  lcd.print(F("        "));
}



