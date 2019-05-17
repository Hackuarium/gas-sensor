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

| n°  | port | pin      |                  |     |
| --- | ---- | -------- | ---------------- | --- |
| 23  | PC0  | A0       | Sensor2          |     |
| 24  | PC1  | A1       | sensor2 ON       |     |
| 25  | PC2  | A2       | Soft RX - MH-Z19 |     |
| 26  | PC3  | A3       | Soft TX - MH-Z19 |     |
| 27  | PC4  | SDA      | Slave I2C        |     |
| 28  | PC5  | SCL      | Slave I2C        |     |
| 19  | ADC6 | A6       | Sensor1          |     |
| 22  | ADC7 | A7       | Sensor1 ON       |     |
| 30  | PD0  | RX       | FTDI             |     |
| 31  | PD1  | TX       | FTDI             |     |
| 32  | PD2  | D2       | Sensor3          |     |
| 1   | PD3  | D3       | Sensor3 ON       | PWM |
| 2   | PD4  | D4       | TEMPERATURE      |     |
| 9   | PD5  | D5       | HUMIDITY         | PWM |
| 10  | PD6  | D6       | LCD RS           | PWM |
| 11  | PD7  | D7       | LCD R/W          |     |
| 12  | PB0  | D8       | LCD E            |     |
| 13  | PB1  | D9       | LCD LED          | PWM |
| 14  | PB2  | D10      | LCD1             | PWM |
| 15  | PB3  | MOSI D11 | LCD2             | PWM | mh |
| 16  | PB4  | MISO D12 | LCD3             |     |
| 17  | PB5  | SCK D13  | LCD4             |     |

Attenion: footprint of MH-Z19 should be directly on board

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
Others:
<p align="center">
  <img src="/images/schematic/LCD.png" width="300" />
  <img src="/images/schematic/Quartz.png" width="200" />
  <img src="/images/schematic/VoltageRegul.png" width="500" />
</p>

## Inspiration for PCB

- Resistor + Capacitor: 0805
- Crystal 8MHz: Footprint 6035

* https://github.com/Hackuarium/esp-12e/tree/master/kicad

  - ICSP - TAG connect - take care of pin mapping !
  - RJ12 - 6P6C
  - FTDI232
  - LCD: WC1602A

## Get inspired from scale board

- https://github.com/Hackuarium/beemos/tree/master/scale-i2c/eagle
- https://github.com/Hackuarium/esp-12e/tree/master/kicad/libs
