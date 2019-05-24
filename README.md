# gas-sensor

<p align="center">
  <img src="/images/PCB3D.png" width="480" />
</p>

The goal is to create a box allowing the determination of the gas composition of a bioreactor. The sensor that will be available are: CO2 (MH-Z19), H2 (MQ-8) and methane (MQ-4) as well as temperature (DS18B20) and humidity (DHT-22).

The board will be compatible with arduino Lilapad Pro using a dedicated PCB.

Need to compensate for humidity and temperature ???

- https://forum.arduino.cc/index.php?topic=433045.0

## Cloning the project

This project uses SUBMODULES

In order to clone use:

`git clone --recurse-submodules https://github.com/hackuarium/gas-sensor`

To update the submodules

`git submodule update --recursive --remote`

## Sensors

| name_pin | function    | model   |                             | Arduino library                                |
| -------- | ----------- | ------- | --------------------------- | ---------------------------------------------- |
| sensor1  | CH4         | MQ-4    |                             |                                                |
| sensor2  | H2          | MQ-8    |                             |                                                |
| sensor3  | CO2         | MH-Z19  | 3.3v (for RX / TX) + 5v!!!! | https://github.com/crisap94/MHZ19              |
| TEMP     | temperature | DS18B20 |                             |                                                |
| HUM      | humidity    | DHT-22  |                             | https://github.com/adafruit/DHT-sensor-library |

Gaz sensor: http://www.china-total.com/Product/meter/gas-sensor/Gas-sensor.htm

Gaz sensor on sparkfun:
https://www.sparkfun.com/products/8891
https://www.sparkfun.com/products/9404

Gaz sensor on mysensors: https://www.mysensors.org/build/gas

Drying the air / pumping
Particulate or Coalescing Filters
http://www.pneumaticplus.com/pneumaticplus-saf4000-series-particulate-air-filter-1-2-npt-with-bracket/
https://www.aliexpress.com/item/15L-M-12V-dc-electric-diaphragm-brush-small-air-compressor-pump/1790013118.html

Fans

https://www.pelonistechnologies.com/micro-fans

Pneumatic
https://www.alibaba.com/product-detail/A102-China-sup

## Pinout

| n° Arduino | port | pin      |                  |     |
| ---------- | ---- | -------- | ---------------- | --- |
| A0         | PC0  | A0       | Sensor2          |     |
| A1         | PC1  | A1       | sensor2 ON       |     |
| A2         | PC2  | A2       | Soft RX - MH-Z19 |     |
| A3         | PC3  | A3       | Soft TX - MH-Z19 |     |
| A4         | PC4  | SDA      | Slave I2C        |     |
| A5         | PC5  | SCL      | Slave I2C        |     |
| A6         | ADC6 | A6       | Sensor1          |     |
| A7         | ADC7 | A7       | Sensor1 ON       |     |
| 0          | PD0  | RX       | FTDI             |     |
| 1          | PD1  | TX       | FTDI             |     |
| 2          | PD2  | D2       | /                |     |
| 3          | PD3  | D3       | PWM_MH-Z19       | PWM |
| 4          | PD4  | D4       | TEMPERATURE      |     |
| 5          | PD5  | D5       | HUMIDITY         | PWM |
| 6          | PD6  | D6       | LCD RS           | PWM |
| 7          | PD7  | D7       | /                |     |
| 8          | PB0  | D8       | LCD E            |     |
| 9          | PB1  | D9       | LCD LED          | PWM |
| 10         | PB2  | D10      | LCD1             | PWM |
| 11         | PB3  | MOSI D11 | LCD2             | PWM | mh |
| 12         | PB4  | MISO D12 | LCD3             |     |
| 13         | PB5  | SCK D13  | LCD4             |     |

n.b: Two pins (PD2 and PD7) are free and could be used to add a fourth sensor.

## Power supply

- plug for 5V
- MCP1703-33 for µC power supply

## Schematic
Here is the schematic of the main components of the project:

ATMega328P:
<p align="center">
  <img src="/images/schematic/ATMega328.png" width="600" />
</p>
Sensors:
<p align="center">
  <img src="/images/schematic/MQ4.png" width="220" />
  <img src="/images/schematic/MQ8.png" width="220" />
  <img src="/images/schematic/MHZ19.png" width="400" />
</p>
<p align="center">
  <img src="/images/schematic/Hum.png" width="220" />
  <img src="/images/schematic/Temp.png" width="220" />
</p>
Others (LCD, crystal and voltage regulator):
<p align="center">
  <img src="/images/schematic/LCD.png" width="300" />
  <img src="/images/schematic/Quartz.png" width="200" />
  <img src="/images/schematic/VoltageRegul.png" width="500" />
</p>

## List of components
| Type           | Value | Quantity | Footprint                   |
|----------------|-------|----------|-----------------------------|
| Resistor       | 1M    | 1        | 0805 Handsolder             |
| Resistor       | 10k   | 2        | 0805 Handsolder             |
| Resistor       | 4.7k  | 2        | 0805 Handsolder             |
| Resistor       | 4.7   | 1        | 0805 Handsolder             |
| Potentiometer  |       | 1        | TRIM_3362R-1-222            |
| Capacitor      | 10µF  | 2        | 0805 Handsolder             |
| Capacitor      | 100nF | 3        | 0805 Handsolder             |
| Capacitor      | 18pF  | 2        | 0805 Handsolder             |
| Diode Shottky  |       | 3        | D_SOD-123                   |
| BSP75          |       | 2        | SOT-223-3_TabPin3           |
| Crystal        | 8Mhz  | 1        | Crystal_SMD_5032 Handsolder |
| MCP-1703A      |       | 1        | SOT-23                      |
| ATMega328P-AU  |       | 1        | TQFP-32_7x7mm_P0.8mm        |
| 5V power source|       | 1        | BarrelJack_Horizontal       |
| RJ12           |       | 1        | RJ12_Amphenol_54601         |
| LCD Screen     |       | 1        | WC1602A                     |
| MHZ-19 (CO2)   |       | 1        | footprints: MHZ-19          |
| MQ-4 (CH4)     |       | 1        | footprints: MQ-4            |
| MQ-8 (H2)      |       | 1        | footprints: MQ-8            |
| DHT22 (Hum)    |       | 1        | footprints: DHT-22_HOR      |
| DS18B20 (Temp) |       | 1        | TO-92_Inline                |



## Inspiration for PCB

* https://github.com/Hackuarium/esp-12e/tree/master/kicad

  - ICSP - TAG connect - take care of pin mapping !
  - RJ12 - 6P6C
  - FTDI232
  - LCD: WC1602A

## Get inspired from scale board

- https://github.com/Hackuarium/beemos/tree/master/scale-i2c/eagle
- https://github.com/Hackuarium/esp-12e/tree/master/kicad/libs
