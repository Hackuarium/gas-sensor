EESchema Schematic File Version 4
LIBS:gas-sensor-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3.3V #PWR04
U 1 1 5C5C6287
P 8300 3600
F 0 "#PWR04" H 8300 3450 50  0001 C CNN
F 1 "+3.3V" H 8315 3773 50  0000 C CNN
F 2 "" H 8300 3600 50  0001 C CNN
F 3 "" H 8300 3600 50  0001 C CNN
	1    8300 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C5C62D6
P 8300 3850
F 0 "R1" V 8200 3850 50  0000 L CNN
F 1 "10k" V 8400 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 3850 50  0001 C CNN
F 3 "~" H 8300 3850 50  0001 C CNN
	1    8300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3600 8300 3700
$Comp
L Device:C C2
U 1 1 5C5C638D
P 7800 3850
F 0 "C2" H 7915 3896 50  0000 L CNN
F 1 "100nF" H 7915 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7838 3700 50  0001 C CNN
F 3 "~" H 7800 3850 50  0001 C CNN
	1    7800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4000 8300 4100
Wire Wire Line
	8300 4100 7800 4100
Wire Wire Line
	7800 4100 7800 4000
$Comp
L power:VCC #PWR02
U 1 1 5C5C6944
P 5900 2050
F 0 "#PWR02" H 5900 1900 50  0001 C CNN
F 1 "VCC" H 5917 2223 50  0000 C CNN
F 2 "" H 5900 2050 50  0001 C CNN
F 3 "" H 5900 2050 50  0001 C CNN
	1    5900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2050 5900 2150
Wire Wire Line
	6000 2150 5900 2150
Connection ~ 5900 2150
Wire Wire Line
	5900 2150 5900 2300
$Comp
L power:GND #PWR03
U 1 1 5C5C6EFB
P 5900 5550
F 0 "#PWR03" H 5900 5300 50  0001 C CNN
F 1 "GND" H 5905 5377 50  0000 C CNN
F 2 "" H 5900 5550 50  0001 C CNN
F 3 "" H 5900 5550 50  0001 C CNN
	1    5900 5550
	1    0    0    -1  
$EndComp
$Comp
L gas_sensor:MQ-4 GS1
U 1 1 5C6332CA
P 9600 1350
F 0 "GS1" H 9550 1400 50  0000 L CNN
F 1 "MQ-4" H 9500 1250 50  0000 L CNN
F 2 "gas_sensor:MQ-4" H 9650 1400 50  0001 C CNN
F 3 "" H 9650 1400 50  0001 C CNN
	1    9600 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5C6333D8
P 8450 850
F 0 "#PWR0101" H 8450 700 50  0001 C CNN
F 1 "+5V" H 8465 1023 50  0000 C CNN
F 2 "" H 8450 850 50  0001 C CNN
F 3 "" H 8450 850 50  0001 C CNN
	1    8450 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 850  8850 850 
Wire Wire Line
	9600 850  9600 900 
Wire Wire Line
	9150 1350 8850 1350
Wire Wire Line
	8850 1350 8850 850 
Connection ~ 8850 850 
Wire Wire Line
	8850 850  9600 850 
$Comp
L power:GND #PWR0102
U 1 1 5C63364B
P 9600 2100
F 0 "#PWR0102" H 9600 1850 50  0001 C CNN
F 1 "GND" H 9605 1927 50  0000 C CNN
F 2 "" H 9600 2100 50  0001 C CNN
F 3 "" H 9600 2100 50  0001 C CNN
	1    9600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2100 9600 2000
$Comp
L Device:R R3
U 1 1 5C63383D
P 10050 1750
F 0 "R3" H 10120 1796 50  0000 L CNN
F 1 "20k" H 10120 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9980 1750 50  0001 C CNN
F 3 "~" H 10050 1750 50  0001 C CNN
	1    10050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1900 10050 2000
Wire Wire Line
	10050 2000 9600 2000
Connection ~ 9600 2000
Wire Wire Line
	9600 2000 9600 1800
Wire Wire Line
	10050 1350 10050 1600
Text HLabel 10300 1350 2    50   Input ~ 0
Sensor1
Text HLabel 6750 3700 2    50   Input ~ 0
Sensor1
Wire Wire Line
	6750 3700 6500 3700
$Comp
L gas_sensor:MQ-8 GS3
U 1 1 5C6351EF
P 9600 3250
F 0 "GS3" H 9550 3300 50  0000 L CNN
F 1 "MQ-8" H 9500 3150 50  0000 L CNN
F 2 "gas_sensor:MQ-8" H 9650 3300 50  0001 C CNN
F 3 "" H 9650 3300 50  0001 C CNN
	1    9600 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5C6363CB
P 8900 2750
F 0 "#PWR0103" H 8900 2600 50  0001 C CNN
F 1 "+5V" H 8915 2923 50  0000 C CNN
F 2 "" H 8900 2750 50  0001 C CNN
F 3 "" H 8900 2750 50  0001 C CNN
	1    8900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2750 9000 2750
Wire Wire Line
	9600 2750 9600 2800
Wire Wire Line
	9150 3250 9000 3250
Wire Wire Line
	9000 3250 9000 2750
Connection ~ 9000 2750
Wire Wire Line
	9000 2750 9600 2750
$Comp
L power:GND #PWR0104
U 1 1 5C6368EE
P 9600 4000
F 0 "#PWR0104" H 9600 3750 50  0001 C CNN
F 1 "GND" H 9605 3827 50  0000 C CNN
F 2 "" H 9600 4000 50  0001 C CNN
F 3 "" H 9600 4000 50  0001 C CNN
	1    9600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4000 9600 3950
$Comp
L Device:R R4
U 1 1 5C636C21
P 10100 3650
F 0 "R4" H 10170 3696 50  0000 L CNN
F 1 "10k" H 10170 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10030 3650 50  0001 C CNN
F 3 "~" H 10100 3650 50  0001 C CNN
	1    10100 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3500 10100 3250
Wire Wire Line
	10100 3250 10050 3250
Wire Wire Line
	10100 3800 10100 3950
Wire Wire Line
	10100 3950 9600 3950
Connection ~ 9600 3950
Wire Wire Line
	9600 3950 9600 3700
Text HLabel 10250 3250 2    50   Input ~ 0
Sensor3
Wire Wire Line
	5900 5550 5900 5300
$Comp
L gas_sensor:MH-Z19 GS4
U 1 1 5C64907F
P 9600 5150
F 0 "GS4" H 9600 5200 50  0000 C CNN
F 1 "MH-Z19" H 9600 5100 50  0000 C CNN
F 2 "gas_sensor:MH-Z19" H 9600 5150 50  0001 C CNN
F 3 "" H 9600 5150 50  0001 C CNN
	1    9600 5150
	1    0    0    -1  
$EndComp
Text HLabel 9000 5150 0    50   Input ~ 0
TX_MH-Z19
Wire Wire Line
	9000 5150 9100 5150
Text HLabel 9000 5300 0    50   Input ~ 0
RX_MH-Z19
Wire Wire Line
	9000 5300 9100 5300
Text HLabel 6750 4700 2    50   Input ~ 0
TX_MH-Z19
Wire Wire Line
	6750 4700 6500 4700
Text HLabel 6750 4500 2    50   Input ~ 0
RX_MH-Z19
Wire Wire Line
	6750 4500 6500 4500
$Comp
L power:GND #PWR0107
U 1 1 5C64CE74
P 10800 5300
F 0 "#PWR0107" H 10800 5050 50  0001 C CNN
F 1 "GND" H 10805 5127 50  0000 C CNN
F 2 "" H 10800 5300 50  0001 C CNN
F 3 "" H 10800 5300 50  0001 C CNN
	1    10800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 5300 10100 5300
$Comp
L power:+5V #PWR0108
U 1 1 5C64DC8D
P 10400 5450
F 0 "#PWR0108" H 10400 5300 50  0001 C CNN
F 1 "+5V" H 10415 5623 50  0000 C CNN
F 2 "" H 10400 5450 50  0001 C CNN
F 3 "" H 10400 5450 50  0001 C CNN
	1    10400 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	10400 5450 10100 5450
Text HLabel 6750 4800 2    50   Input ~ 0
PWM_MH-Z19
Wire Wire Line
	6750 4800 6500 4800
Text HLabel 10300 5000 2    50   Input ~ 0
PWM_MH-Z19
Wire Wire Line
	10300 5000 10100 5000
Text HLabel 6800 3200 2    50   Input ~ 0
XTAL1
Wire Wire Line
	6800 3200 6500 3200
Text HLabel 6800 3300 2    50   Input ~ 0
XTAL2
Wire Wire Line
	6800 3300 6500 3300
Text HLabel 4750 4000 2    50   Input ~ 0
XTAL1
Text HLabel 4750 4650 2    50   Input ~ 0
XTAL2
$Comp
L Device:C C3
U 1 1 5C6533D1
P 3900 4000
F 0 "C3" V 3648 4000 50  0000 C CNN
F 1 "18pF" V 3739 4000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3938 3850 50  0001 C CNN
F 3 "~" H 3900 4000 50  0001 C CNN
	1    3900 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5C653420
P 3900 4650
F 0 "C4" V 3648 4650 50  0000 C CNN
F 1 "18pF" V 3739 4650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3938 4500 50  0001 C CNN
F 3 "~" H 3900 4650 50  0001 C CNN
	1    3900 4650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5C65348B
P 3550 4750
F 0 "#PWR0109" H 3550 4500 50  0001 C CNN
F 1 "GND" H 3555 4577 50  0000 C CNN
F 2 "" H 3550 4750 50  0001 C CNN
F 3 "" H 3550 4750 50  0001 C CNN
	1    3550 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5C655D0C
P 4200 4350
F 0 "Y1" V 4154 4481 50  0000 L CNN
F 1 "8MHz" V 4245 4481 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_0603-2Pin_6.0x3.5mm_HandSoldering" H 4200 4350 50  0001 C CNN
F 3 "~" H 4200 4350 50  0001 C CNN
	1    4200 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 4650 4200 4500
Wire Wire Line
	4200 4200 4200 4000
$Comp
L Device:R R2
U 1 1 5C65C606
P 4600 4350
F 0 "R2" H 4670 4396 50  0000 L CNN
F 1 "1M" H 4670 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4530 4350 50  0001 C CNN
F 3 "~" H 4600 4350 50  0001 C CNN
	1    4600 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4200 4600 4000
Wire Wire Line
	4600 4500 4600 4650
$Comp
L Interface_USB:FT232RL U2
U 1 1 5C6637E2
P 2100 3250
F 0 "U2" H 2100 3400 50  0000 C CNN
F 1 "FT232RL" H 2100 3300 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 2100 3250 50  0001 C CNN
F 3 "http://www.ftdichip.com/Products/ICs/FT232RL.htm" H 2100 3250 50  0001 C CNN
	1    2100 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C663BF1
P 2200 4400
F 0 "#PWR0110" H 2200 4150 50  0001 C CNN
F 1 "GND" H 2205 4227 50  0000 C CNN
F 2 "" H 2200 4400 50  0001 C CNN
F 3 "" H 2200 4400 50  0001 C CNN
	1    2200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4250 1900 4300
Wire Wire Line
	1900 4300 2100 4300
Wire Wire Line
	2200 4300 2200 4400
Wire Wire Line
	2200 4250 2200 4300
Connection ~ 2200 4300
Wire Wire Line
	2100 4250 2100 4300
Connection ~ 2100 4300
Wire Wire Line
	2100 4300 2200 4300
Wire Wire Line
	2300 4250 2300 4300
Wire Wire Line
	2300 4300 2200 4300
$Comp
L power:GND #PWR0111
U 1 1 5C671AA0
P 1200 2200
F 0 "#PWR0111" H 1200 1950 50  0001 C CNN
F 1 "GND" H 1205 2027 50  0000 C CNN
F 2 "" H 1200 2200 50  0001 C CNN
F 3 "" H 1200 2200 50  0001 C CNN
	1    1200 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5C671B33
P 1200 2400
F 0 "C1" H 950 2400 50  0000 L CNN
F 1 "100nF" H 950 2300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1238 2250 50  0001 C CNN
F 3 "~" H 1200 2400 50  0001 C CNN
	1    1200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2200 1200 2250
Wire Wire Line
	1200 2550 1300 2550
Text HLabel 3050 2950 2    50   Input ~ 0
DTR
Wire Wire Line
	3050 2950 2900 2950
Text HLabel 7800 3450 1    50   Input ~ 0
DTR
Wire Wire Line
	7800 3450 7800 3700
Wire Wire Line
	2200 2250 2200 2150
Wire Wire Line
	2000 2250 2000 2150
Wire Wire Line
	2000 2150 2200 2150
Text HLabel 3050 2550 2    50   Input ~ 0
RX
Wire Wire Line
	3050 2550 2900 2550
Text HLabel 3050 2650 2    50   Input ~ 0
TX
Wire Wire Line
	2900 2650 3050 2650
Text HLabel 6750 4300 2    50   Input ~ 0
RX
Wire Wire Line
	6750 4300 6500 4300
Text HLabel 6750 4400 2    50   Input ~ 0
TX
Wire Wire Line
	6750 4400 6500 4400
Wire Wire Line
	1300 3950 1300 4300
Wire Wire Line
	1300 4300 1900 4300
Connection ~ 1900 4300
NoConn ~ 1300 3450
NoConn ~ 1300 3650
NoConn ~ 1300 3250
Wire Wire Line
	6500 4100 7800 4100
Connection ~ 7800 4100
Text HLabel 6550 3900 2    50   Input ~ 0
SDA
Wire Wire Line
	6550 3900 6500 3900
Text HLabel 6550 4000 2    50   Input ~ 0
SCL
Wire Wire Line
	6550 4000 6500 4000
$Comp
L Sensor_Temperature:DS18B20 U1
U 1 1 5C6D4DA8
P 1550 1200
F 0 "U1" H 1320 1246 50  0000 R CNN
F 1 "DS18B20" H 1320 1155 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 550 950 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 1400 1450 50  0001 C CNN
	1    1550 1200
	1    0    0    -1  
$EndComp
Text HLabel 1950 1200 2    50   Input ~ 0
TEMP
Text HLabel 6750 4900 2    50   Input ~ 0
TEMP
Wire Wire Line
	6750 4900 6500 4900
$Comp
L power:GND #PWR0112
U 1 1 5C6DBAAA
P 1550 1550
F 0 "#PWR0112" H 1550 1300 50  0001 C CNN
F 1 "GND" H 1555 1377 50  0000 C CNN
F 2 "" H 1550 1550 50  0001 C CNN
F 3 "" H 1550 1550 50  0001 C CNN
	1    1550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5C6DF1D5
P 1550 850
F 0 "#PWR0113" H 1550 700 50  0001 C CNN
F 1 "+5V" H 1565 1023 50  0000 C CNN
F 2 "" H 1550 850 50  0001 C CNN
F 3 "" H 1550 850 50  0001 C CNN
	1    1550 850 
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U4
U 1 1 5C6E2C83
P 5900 3800
F 0 "U4" H 5700 2900 50  0000 C CNN
F 1 "ATmega328P-AU" H 5750 2800 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5900 3800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5900 3800 50  0001 C CNN
	1    5900 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2600 5300 2600
Text HLabel 5150 2800 0    50   Input ~ 0
Sensor3
Wire Wire Line
	5150 2800 5300 2800
Text HLabel 9000 5450 0    50   Input ~ 0
Sensor4
Wire Wire Line
	9000 5450 9100 5450
Text HLabel 5150 2900 0    50   Input ~ 0
Sensor4
Wire Wire Line
	5150 2900 5300 2900
Text HLabel 2350 2150 2    50   Input ~ 0
VCC-FTDI
Wire Wire Line
	1550 850  1550 900 
Wire Wire Line
	1550 1550 1550 1500
Wire Wire Line
	1950 1200 1850 1200
Text HLabel 2950 950  0    50   Input ~ 0
VCC-FTDI
$Comp
L Device:D_Schottky D1
U 1 1 5C748054
P 3200 950
F 0 "D1" H 3250 850 50  0000 C CNN
F 1 "D_Schottky" H 2900 850 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3200 950 50  0001 C CNN
F 3 "~" H 3200 950 50  0001 C CNN
	1    3200 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 950  2950 950 
$Comp
L power:+5V #PWR0114
U 1 1 5C74BD97
P 2600 1250
F 0 "#PWR0114" H 2600 1100 50  0001 C CNN
F 1 "+5V" H 2615 1423 50  0000 C CNN
F 2 "" H 2600 1250 50  0001 C CNN
F 3 "" H 2600 1250 50  0001 C CNN
	1    2600 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 5C74BDD1
P 3200 1250
F 0 "D2" H 3250 1150 50  0000 C CNN
F 1 "D_Schottky" H 2900 1150 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3200 1250 50  0001 C CNN
F 3 "~" H 3200 1250 50  0001 C CNN
	1    3200 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 1250 3050 1250
$Comp
L Device:D_Schottky D3
U 1 1 5C74FC06
P 3200 1550
F 0 "D3" H 3250 1450 50  0000 C CNN
F 1 "D_Schottky" H 2900 1450 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3200 1550 50  0001 C CNN
F 3 "~" H 3200 1550 50  0001 C CNN
	1    3200 1550
	-1   0    0    1   
$EndComp
Text HLabel 2950 1550 0    50   Input ~ 0
VCC-ICSP
Wire Wire Line
	2950 1550 3050 1550
Wire Wire Line
	3750 1550 3750 1250
Wire Wire Line
	3750 1250 3350 1250
Wire Wire Line
	3350 950  3750 950 
Wire Wire Line
	3750 950  3750 1250
Connection ~ 3750 1250
$Comp
L Device:C C5
U 1 1 5C75C5BD
P 4000 1550
F 0 "C5" H 4115 1596 50  0000 L CNN
F 1 "10u" H 4115 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4038 1400 50  0001 C CNN
F 3 "~" H 4000 1550 50  0001 C CNN
	1    4000 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1550 3750 1550
Wire Wire Line
	3750 1250 4000 1250
Wire Wire Line
	4000 1250 4000 1400
$Comp
L power:GND #PWR0115
U 1 1 5C76A036
P 4450 1850
F 0 "#PWR0115" H 4450 1600 50  0001 C CNN
F 1 "GND" H 4455 1677 50  0000 C CNN
F 2 "" H 4450 1850 50  0001 C CNN
F 3 "" H 4450 1850 50  0001 C CNN
	1    4450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1250 4000 1250
Connection ~ 4000 1250
Wire Wire Line
	4000 1750 4450 1750
Connection ~ 4450 1750
Wire Wire Line
	4450 1750 4450 1850
Wire Wire Line
	4450 1550 4450 1750
Wire Wire Line
	4000 1700 4000 1750
$Comp
L Device:C C6
U 1 1 5C7867F7
P 5050 1550
F 0 "C6" H 5165 1596 50  0000 L CNN
F 1 "10u" H 5165 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5088 1400 50  0001 C CNN
F 3 "~" H 5050 1550 50  0001 C CNN
	1    5050 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5C78684D
P 5450 1550
F 0 "C7" H 5565 1596 50  0000 L CNN
F 1 "100nF" H 5565 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5488 1400 50  0001 C CNN
F 3 "~" H 5450 1550 50  0001 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1700 5450 1750
$Comp
L power:+3.3V #PWR0116
U 1 1 5C790A3A
P 5050 1000
F 0 "#PWR0116" H 5050 850 50  0001 C CNN
F 1 "+3.3V" H 5065 1173 50  0000 C CNN
F 2 "" H 5050 1000 50  0001 C CNN
F 3 "" H 5050 1000 50  0001 C CNN
	1    5050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1700 5050 1750
Connection ~ 5050 1750
Wire Wire Line
	4450 1750 5050 1750
Wire Wire Line
	5050 1750 5450 1750
Wire Wire Line
	5050 1400 5050 1250
Wire Wire Line
	4750 1250 5050 1250
Connection ~ 5050 1250
Wire Wire Line
	5050 1250 5050 1000
Wire Wire Line
	5050 1250 5450 1250
Wire Wire Line
	5450 1250 5450 1400
Wire Wire Line
	4600 4650 4200 4650
Wire Wire Line
	4600 4000 4200 4000
Wire Wire Line
	4750 4000 4600 4000
Connection ~ 4600 4000
Wire Wire Line
	4600 4650 4750 4650
Connection ~ 4600 4650
Wire Wire Line
	3550 4750 3550 4650
Wire Wire Line
	3550 4000 3750 4000
Wire Wire Line
	4050 4000 4200 4000
Connection ~ 4200 4000
Wire Wire Line
	4050 4650 4200 4650
Connection ~ 4200 4650
Wire Wire Line
	3750 4650 3550 4650
Connection ~ 3550 4650
Wire Wire Line
	3550 4650 3550 4000
$Comp
L Regulator_Linear:MCP1703A-3302_SOT23 U3
U 1 1 5C8439EF
P 4450 1250
F 0 "U3" H 4450 1492 50  0000 C CNN
F 1 "MCP1703A-3302_SOT23" H 4450 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4450 1450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 4450 1200 50  0001 C CNN
	1    4450 1250
	1    0    0    -1  
$EndComp
$Comp
L gas_sensor:ICSP SP1
U 1 1 5C849FFE
P 1850 5200
F 0 "SP1" H 1850 5575 50  0000 C CNN
F 1 "ICSP" H 1850 5484 50  0000 C CNN
F 2 "Connector:Tag-Connect_TC2030-IDC-FP_2x03_P1.27mm_Vertical" H 1900 5200 50  0001 C CNN
F 3 "" H 1900 5200 50  0001 C CNN
	1    1850 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5C84A2CD
P 2400 5350
F 0 "#PWR0117" H 2400 5100 50  0001 C CNN
F 1 "GND" H 2405 5177 50  0000 C CNN
F 2 "" H 2400 5350 50  0001 C CNN
F 3 "" H 2400 5350 50  0001 C CNN
	1    2400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5350 2400 5350
Text HLabel 2400 5050 2    50   Input ~ 0
VCC-ICSP
Wire Wire Line
	2400 5050 2250 5050
Text HLabel 7900 4200 2    50   Input ~ 0
RESET
Wire Wire Line
	7900 4200 7800 4200
Wire Wire Line
	7800 4200 7800 4100
Text HLabel 1350 5350 0    50   Input ~ 0
RESET
Wire Wire Line
	1350 5350 1450 5350
Text HLabel 1350 5050 0    50   Input ~ 0
MISO
Wire Wire Line
	1350 5050 1450 5050
Text HLabel 2400 5200 2    50   Input ~ 0
MOSI
Wire Wire Line
	2400 5200 2250 5200
Text HLabel 1350 5200 0    50   Input ~ 0
SCK
Wire Wire Line
	1350 5200 1450 5200
Text HLabel 6800 3000 2    50   Input ~ 0
MISO
Text HLabel 6800 3100 2    50   Input ~ 0
SCK
Wire Wire Line
	6800 3100 6500 3100
Wire Wire Line
	6800 3000 6500 3000
Text HLabel 6800 2900 2    50   Input ~ 0
MOSI
Wire Wire Line
	6800 2900 6500 2900
Connection ~ 10100 3250
Wire Wire Line
	10250 3250 10100 3250
Wire Wire Line
	10300 1350 10050 1350
Wire Wire Line
	2200 2150 2350 2150
Connection ~ 2200 2150
$Comp
L Connector:RJ12 J1
U 1 1 5C757C2F
P 1750 6400
F 0 "J1" H 1950 6050 50  0000 R CNN
F 1 "RJ12" H 1750 6900 50  0000 R CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 1750 6425 50  0001 C CNN
F 3 "~" V 1750 6425 50  0001 C CNN
	1    1750 6400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 5C78E26F
P 700 6200
F 0 "#PWR0118" H 700 6050 50  0001 C CNN
F 1 "+5V" H 715 6373 50  0000 C CNN
F 2 "" H 700 6200 50  0001 C CNN
F 3 "" H 700 6200 50  0001 C CNN
	1    700  6200
	1    0    0    -1  
$EndComp
Text HLabel 1100 6300 0    50   Input ~ 0
SCL
Wire Wire Line
	1100 6300 1350 6300
Text HLabel 1100 6400 0    50   Input ~ 0
SDA
Wire Wire Line
	1100 6400 1350 6400
$Comp
L power:+BATT #PWR0119
U 1 1 5C7A212B
P 700 6600
F 0 "#PWR0119" H 700 6450 50  0001 C CNN
F 1 "+BATT" H 715 6773 50  0000 C CNN
F 2 "" H 700 6600 50  0001 C CNN
F 3 "" H 700 6600 50  0001 C CNN
	1    700  6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  6600 1350 6600
Wire Wire Line
	700  6200 1350 6200
$Comp
L power:GND #PWR0120
U 1 1 5C7AFF33
P 1150 6800
F 0 "#PWR0120" H 1150 6550 50  0001 C CNN
F 1 "GND" H 1155 6627 50  0000 C CNN
F 2 "" H 1150 6800 50  0001 C CNN
F 3 "" H 1150 6800 50  0001 C CNN
	1    1150 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 6800 1150 6700
Wire Wire Line
	1150 6700 1350 6700
$Comp
L power:GND #PWR0121
U 1 1 5C7B7059
P 1000 6800
F 0 "#PWR0121" H 1000 6550 50  0001 C CNN
F 1 "GND" H 1005 6627 50  0000 C CNN
F 2 "" H 1000 6800 50  0001 C CNN
F 3 "" H 1000 6800 50  0001 C CNN
	1    1000 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6800 1000 6500
Wire Wire Line
	1000 6500 1350 6500
$Comp
L Display_Character:WC1602A DS1
U 1 1 5C7BE6DA
P 4050 6400
F 0 "DS1" H 4550 6250 50  0000 C CNN
F 1 "WC1602A" H 4550 6150 50  0000 C CNN
F 2 "Display:WC1602A" H 4050 5500 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 4750 6400 50  0001 C CNN
	1    4050 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 5C7C6655
P 4050 5500
F 0 "#PWR0122" H 4050 5350 50  0001 C CNN
F 1 "+5V" H 4065 5673 50  0000 C CNN
F 2 "" H 4050 5500 50  0001 C CNN
F 3 "" H 4050 5500 50  0001 C CNN
	1    4050 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5500 4050 5600
$Comp
L power:GND #PWR0123
U 1 1 5C7CDC66
P 4050 7300
F 0 "#PWR0123" H 4050 7050 50  0001 C CNN
F 1 "GND" H 4055 7127 50  0000 C CNN
F 2 "" H 4050 7300 50  0001 C CNN
F 3 "" H 4050 7300 50  0001 C CNN
	1    4050 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 7300 4050 7200
Text HLabel 6750 5000 2    50   Input ~ 0
LCD1
Wire Wire Line
	6750 5000 6500 5000
Text HLabel 3450 6700 0    50   Input ~ 0
LCD1
Wire Wire Line
	3450 6700 3650 6700
NoConn ~ 3650 6600
NoConn ~ 3650 6500
NoConn ~ 3650 6400
NoConn ~ 3650 6300
Text HLabel 6800 2600 2    50   Input ~ 0
LCD2
Wire Wire Line
	6800 2600 6500 2600
Text HLabel 3450 6800 0    50   Input ~ 0
LCD2
Wire Wire Line
	3450 6800 3650 6800
Text HLabel 6750 3500 2    50   Input ~ 0
LCD3
Wire Wire Line
	6750 3500 6500 3500
Text HLabel 3450 6900 0    50   Input ~ 0
LCD3
Wire Wire Line
	3450 6900 3650 6900
Text HLabel 6750 3600 2    50   Input ~ 0
LCD4
Wire Wire Line
	6750 3600 6500 3600
Text HLabel 3450 7000 0    50   Input ~ 0
LCD4
Wire Wire Line
	3450 7000 3650 7000
Text Notes 2500 5950 0    50   ~ 0
PAS FINI BRANCHEMENT LCD\n
$Comp
L power:+5V #PWR0124
U 1 1 5C744DCC
P 4700 6100
F 0 "#PWR0124" H 4700 5950 50  0001 C CNN
F 1 "+5V" H 4715 6273 50  0000 C CNN
F 2 "" H 4700 6100 50  0001 C CNN
F 3 "" H 4700 6100 50  0001 C CNN
	1    4700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6100 4450 6100
$Comp
L power:GND #PWR0125
U 1 1 5C74D495
P 4700 6200
F 0 "#PWR0125" H 4700 5950 50  0001 C CNN
F 1 "GND" H 4705 6027 50  0000 C CNN
F 2 "" H 4700 6200 50  0001 C CNN
F 3 "" H 4700 6200 50  0001 C CNN
	1    4700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6200 4450 6200
$Comp
L power:+5V #PWR0126
U 1 1 5C7710FE
P 5050 2400
F 0 "#PWR0126" H 5050 2250 50  0001 C CNN
F 1 "+5V" H 5065 2573 50  0000 C CNN
F 2 "" H 5050 2400 50  0001 C CNN
F 3 "" H 5050 2400 50  0001 C CNN
	1    5050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2400 5050 2600
Wire Wire Line
	6000 2300 6000 2150
$Comp
L gas_sensor:DHT22 U5
U 1 1 5C786539
P 6900 1150
F 0 "U5" H 7077 1201 50  0000 L CNN
F 1 "DHT22" H 7077 1110 50  0000 L CNN
F 2 "gas_sensor:DHT22" H 6900 1150 50  0001 C CNN
F 3 "" H 6900 1150 50  0001 C CNN
	1    6900 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5C7866DC
P 6500 850
F 0 "#PWR0105" H 6500 700 50  0001 C CNN
F 1 "+5V" H 6515 1023 50  0000 C CNN
F 2 "" H 6500 850 50  0001 C CNN
F 3 "" H 6500 850 50  0001 C CNN
	1    6500 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 850  6500 1000
Wire Wire Line
	6500 1000 6650 1000
$Comp
L power:GND #PWR0106
U 1 1 5C78D6F6
P 6500 1450
F 0 "#PWR0106" H 6500 1200 50  0001 C CNN
F 1 "GND" H 6505 1277 50  0000 C CNN
F 2 "" H 6500 1450 50  0001 C CNN
F 3 "" H 6500 1450 50  0001 C CNN
	1    6500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1450 6500 1300
Wire Wire Line
	6500 1300 6650 1300
Text HLabel 6500 1100 0    50   Input ~ 0
HUM
Wire Wire Line
	6500 1100 6650 1100
Text HLabel 6750 3800 2    50   Input ~ 0
HUM
Wire Wire Line
	6750 3800 6500 3800
$EndSCHEMATC