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
F 2 "" V 8230 3850 50  0001 C CNN
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
F 2 "" H 7838 3700 50  0001 C CNN
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
	6000 2300 6000 2150
Wire Wire Line
	6000 2150 5900 2150
Connection ~ 5900 2150
Wire Wire Line
	5900 2150 5900 2300
$Comp
L power:GND #PWR01
U 1 1 5C5C6B06
P 4350 2600
F 0 "#PWR01" H 4350 2350 50  0001 C CNN
F 1 "GND" H 4355 2427 50  0000 C CNN
F 2 "" H 4350 2600 50  0001 C CNN
F 3 "" H 4350 2600 50  0001 C CNN
	1    4350 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C5C6B77
P 4900 2600
F 0 "C1" V 4648 2600 50  0000 C CNN
F 1 "C" V 4739 2600 50  0000 C CNN
F 2 "" H 4938 2450 50  0001 C CNN
F 3 "~" H 4900 2600 50  0001 C CNN
	1    4900 2600
	0    1    1    0   
$EndComp
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
P 9900 1350
F 0 "GS1" H 9850 1400 50  0000 L CNN
F 1 "MQ-4" H 9800 1250 50  0000 L CNN
F 2 "" H 9950 1400 50  0001 C CNN
F 3 "" H 9950 1400 50  0001 C CNN
	1    9900 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C6333D8
P 8750 850
F 0 "#PWR?" H 8750 700 50  0001 C CNN
F 1 "+5V" H 8765 1023 50  0000 C CNN
F 2 "" H 8750 850 50  0001 C CNN
F 3 "" H 8750 850 50  0001 C CNN
	1    8750 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 850  9150 850 
Wire Wire Line
	9900 850  9900 900 
Wire Wire Line
	9450 1350 9150 1350
Wire Wire Line
	9150 1350 9150 850 
Connection ~ 9150 850 
Wire Wire Line
	9150 850  9900 850 
$Comp
L power:GND #PWR?
U 1 1 5C63364B
P 9900 2100
F 0 "#PWR?" H 9900 1850 50  0001 C CNN
F 1 "GND" H 9905 1927 50  0000 C CNN
F 2 "" H 9900 2100 50  0001 C CNN
F 3 "" H 9900 2100 50  0001 C CNN
	1    9900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2100 9900 2000
$Comp
L Device:R R?
U 1 1 5C63383D
P 10350 1750
F 0 "R?" H 10420 1796 50  0000 L CNN
F 1 "20k" H 10420 1705 50  0000 L CNN
F 2 "" V 10280 1750 50  0001 C CNN
F 3 "~" H 10350 1750 50  0001 C CNN
	1    10350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1900 10350 2000
Wire Wire Line
	10350 2000 9900 2000
Connection ~ 9900 2000
Wire Wire Line
	9900 2000 9900 1800
Wire Wire Line
	10350 1350 10350 1600
Text HLabel 10600 1350 2    50   Input ~ 0
Sensor1
Text HLabel 6750 3700 2    50   Input ~ 0
Sensor1
Wire Wire Line
	6750 3700 6500 3700
$Comp
L gas_sensor:MQ-8 GS3
U 1 1 5C6351EF
P 9900 5400
F 0 "GS3" H 9850 5450 50  0000 L CNN
F 1 "MQ-8" H 9800 5300 50  0000 L CNN
F 2 "" H 9950 5450 50  0001 C CNN
F 3 "" H 9950 5450 50  0001 C CNN
	1    9900 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C6363CB
P 9200 4900
F 0 "#PWR?" H 9200 4750 50  0001 C CNN
F 1 "+5V" H 9215 5073 50  0000 C CNN
F 2 "" H 9200 4900 50  0001 C CNN
F 3 "" H 9200 4900 50  0001 C CNN
	1    9200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4900 9300 4900
Wire Wire Line
	9900 4900 9900 4950
Wire Wire Line
	9450 5400 9300 5400
Wire Wire Line
	9300 5400 9300 4900
Connection ~ 9300 4900
Wire Wire Line
	9300 4900 9900 4900
$Comp
L power:GND #PWR?
U 1 1 5C6368EE
P 9900 6150
F 0 "#PWR?" H 9900 5900 50  0001 C CNN
F 1 "GND" H 9905 5977 50  0000 C CNN
F 2 "" H 9900 6150 50  0001 C CNN
F 3 "" H 9900 6150 50  0001 C CNN
	1    9900 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 6150 9900 6100
$Comp
L Device:R R?
U 1 1 5C636C21
P 10400 5800
F 0 "R?" H 10470 5846 50  0000 L CNN
F 1 "10k" H 10470 5755 50  0000 L CNN
F 2 "" V 10330 5800 50  0001 C CNN
F 3 "~" H 10400 5800 50  0001 C CNN
	1    10400 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 5650 10400 5400
Wire Wire Line
	10400 5400 10350 5400
Wire Wire Line
	10400 5950 10400 6100
Wire Wire Line
	10400 6100 9900 6100
Connection ~ 9900 6100
Wire Wire Line
	9900 6100 9900 5850
Text HLabel 10550 5400 2    50   Input ~ 0
Sensor3
Text HLabel 6750 3800 2    50   Input ~ 0
Sensor2
Wire Wire Line
	6750 3800 6500 3800
$Comp
L gas_sensor:MQ-7 GS2
U 1 1 5C6380A2
P 9900 3100
F 0 "GS2" H 9800 3150 50  0000 L CNN
F 1 "MQ-7" H 9800 3000 50  0000 L CNN
F 2 "" H 9950 3150 50  0001 C CNN
F 3 "" H 9950 3150 50  0001 C CNN
	1    9900 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C63847F
P 10550 3400
F 0 "R?" H 10620 3446 50  0000 L CNN
F 1 "10k" H 10620 3355 50  0000 L CNN
F 2 "" V 10480 3400 50  0001 C CNN
F 3 "~" H 10550 3400 50  0001 C CNN
	1    10550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 3100 10550 3100
Wire Wire Line
	10550 3100 10550 3250
Text HLabel 10800 3100 2    50   Input ~ 0
Sensor2
$Comp
L power:GND #PWR?
U 1 1 5C638F83
P 9900 4400
F 0 "#PWR?" H 9900 4150 50  0001 C CNN
F 1 "GND" H 9905 4227 50  0000 C CNN
F 2 "" H 9900 4400 50  0001 C CNN
F 3 "" H 9900 4400 50  0001 C CNN
	1    9900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 4250 9900 4250
$Comp
L power:+5V #PWR?
U 1 1 5C639C4A
P 9300 2500
F 0 "#PWR?" H 9300 2350 50  0001 C CNN
F 1 "+5V" H 9315 2673 50  0000 C CNN
F 2 "" H 9300 2500 50  0001 C CNN
F 3 "" H 9300 2500 50  0001 C CNN
	1    9300 2500
	1    0    0    -1  
$EndComp
Text HLabel 6800 2800 2    50   Input ~ 0
Sensor2_ON
Wire Wire Line
	6800 2800 6500 2800
Text HLabel 9300 3900 0    50   Input ~ 0
Sensor2_ON
Wire Wire Line
	9900 4250 9900 4400
$Comp
L Device:Q_NMOS_GDS Q?
U 1 1 5C63DE15
P 9800 3900
F 0 "Q?" H 10005 3946 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 10005 3855 50  0000 L CNN
F 2 "" H 10000 4000 50  0001 C CNN
F 3 "~" H 9800 3900 50  0001 C CNN
	1    9800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 3550 10550 4250
Wire Wire Line
	9900 3550 9900 3700
Wire Wire Line
	9900 4250 9900 4100
Connection ~ 9900 4250
Wire Wire Line
	9300 3900 9600 3900
Wire Wire Line
	9300 2550 9900 2550
Wire Wire Line
	9900 2550 9900 2650
Wire Wire Line
	9300 2550 9300 2500
Connection ~ 9300 2550
Wire Wire Line
	9300 2550 9300 3100
Wire Wire Line
	9300 3100 9450 3100
Wire Wire Line
	5900 5550 5900 5300
$Comp
L gas_sensor:MH-Z19 GS4
U 1 1 5C64907F
P 7500 1450
F 0 "GS4" H 7500 1500 50  0000 C CNN
F 1 "MH-Z19" H 7500 1400 50  0000 C CNN
F 2 "" H 7500 1450 50  0001 C CNN
F 3 "" H 7500 1450 50  0001 C CNN
	1    7500 1450
	1    0    0    -1  
$EndComp
Text HLabel 6900 1450 0    50   Input ~ 0
TX_MH-Z19
Wire Wire Line
	6900 1450 7000 1450
Text HLabel 6900 1600 0    50   Input ~ 0
RX_MH-Z19
Wire Wire Line
	6900 1600 7000 1600
Text HLabel 6750 4700 2    50   Input ~ 0
TX_MH-Z19
Wire Wire Line
	6750 4700 6500 4700
Text HLabel 6750 4500 2    50   Input ~ 0
RX_MH-Z19
Wire Wire Line
	6750 4500 6500 4500
$Comp
L power:GND #PWR?
U 1 1 5C64CE74
P 8700 1600
F 0 "#PWR?" H 8700 1350 50  0001 C CNN
F 1 "GND" H 8705 1427 50  0000 C CNN
F 2 "" H 8700 1600 50  0001 C CNN
F 3 "" H 8700 1600 50  0001 C CNN
	1    8700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1600 8000 1600
$Comp
L power:+5V #PWR?
U 1 1 5C64DC8D
P 8300 1750
F 0 "#PWR?" H 8300 1600 50  0001 C CNN
F 1 "+5V" H 8315 1923 50  0000 C CNN
F 2 "" H 8300 1750 50  0001 C CNN
F 3 "" H 8300 1750 50  0001 C CNN
	1    8300 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 1750 8000 1750
Text HLabel 6750 4800 2    50   Input ~ 0
PWM_MH-Z19
Wire Wire Line
	6750 4800 6500 4800
Text HLabel 8200 1300 2    50   Input ~ 0
PWM_MH-Z19
Wire Wire Line
	8200 1300 8000 1300
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
L Device:C C?
U 1 1 5C6533D1
P 3900 4000
F 0 "C?" V 3648 4000 50  0000 C CNN
F 1 "18pF" V 3739 4000 50  0000 C CNN
F 2 "" H 3938 3850 50  0001 C CNN
F 3 "~" H 3900 4000 50  0001 C CNN
	1    3900 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5C653420
P 3900 4650
F 0 "C?" V 3648 4650 50  0000 C CNN
F 1 "18pF" V 3739 4650 50  0000 C CNN
F 2 "" H 3938 4500 50  0001 C CNN
F 3 "~" H 3900 4650 50  0001 C CNN
	1    3900 4650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C65348B
P 3550 4750
F 0 "#PWR?" H 3550 4500 50  0001 C CNN
F 1 "GND" H 3555 4577 50  0000 C CNN
F 2 "" H 3550 4750 50  0001 C CNN
F 3 "" H 3550 4750 50  0001 C CNN
	1    3550 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5C655D0C
P 4200 4350
F 0 "Y?" V 4154 4481 50  0000 L CNN
F 1 "8MHz" V 4245 4481 50  0000 L CNN
F 2 "" H 4200 4350 50  0001 C CNN
F 3 "~" H 4200 4350 50  0001 C CNN
	1    4200 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 4650 4200 4500
Wire Wire Line
	4200 4200 4200 4000
$Comp
L Device:R R?
U 1 1 5C65C606
P 4600 4350
F 0 "R?" H 4670 4396 50  0000 L CNN
F 1 "1M" H 4670 4305 50  0000 L CNN
F 2 "" V 4530 4350 50  0001 C CNN
F 3 "~" H 4600 4350 50  0001 C CNN
	1    4600 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4200 4600 4000
Wire Wire Line
	4600 4500 4600 4650
$Comp
L Interface_USB:FT232RL U?
U 1 1 5C6637E2
P 2100 3250
F 0 "U?" H 2100 3400 50  0000 C CNN
F 1 "FT232RL" H 2100 3300 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 2100 3250 50  0001 C CNN
F 3 "http://www.ftdichip.com/Products/ICs/FT232RL.htm" H 2100 3250 50  0001 C CNN
	1    2100 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C663BF1
P 2200 4400
F 0 "#PWR?" H 2200 4150 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5C671AA0
P 1200 2200
F 0 "#PWR?" H 1200 1950 50  0001 C CNN
F 1 "GND" H 1205 2027 50  0000 C CNN
F 2 "" H 1200 2200 50  0001 C CNN
F 3 "" H 1200 2200 50  0001 C CNN
	1    1200 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5C671B33
P 1200 2400
F 0 "C?" H 950 2400 50  0000 L CNN
F 1 "100nF" H 950 2300 50  0000 L CNN
F 2 "" H 1238 2250 50  0001 C CNN
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
L Sensor_Temperature:DS18B20 U?
U 1 1 5C6D4DA8
P 1550 1200
F 0 "U?" H 1320 1246 50  0000 R CNN
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
L power:GND #PWR?
U 1 1 5C6DBAAA
P 1550 1550
F 0 "#PWR?" H 1550 1300 50  0001 C CNN
F 1 "GND" H 1555 1377 50  0000 C CNN
F 2 "" H 1550 1550 50  0001 C CNN
F 3 "" H 1550 1550 50  0001 C CNN
	1    1550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C6DF1D5
P 1550 850
F 0 "#PWR?" H 1550 700 50  0001 C CNN
F 1 "+5V" H 1565 1023 50  0000 C CNN
F 2 "" H 1550 850 50  0001 C CNN
F 3 "" H 1550 850 50  0001 C CNN
	1    1550 850 
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U?
U 1 1 5C6E2C83
P 5900 3800
F 0 "U?" H 5900 2214 50  0000 C CNN
F 1 "ATmega328P-AU" H 5900 2123 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5900 3800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5900 3800 50  0001 C CNN
	1    5900 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2600 5300 2600
Wire Wire Line
	4350 2600 4750 2600
Text HLabel 5150 2800 0    50   Input ~ 0
Sensor3
Wire Wire Line
	5150 2800 5300 2800
Text HLabel 6900 1750 0    50   Input ~ 0
Sensor4
Wire Wire Line
	6900 1750 7000 1750
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
L Device:D_Schottky D?
U 1 1 5C748054
P 3200 950
F 0 "D?" H 3250 850 50  0000 C CNN
F 1 "D_Schottky" H 2900 850 50  0000 C CNN
F 2 "" H 3200 950 50  0001 C CNN
F 3 "~" H 3200 950 50  0001 C CNN
	1    3200 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 950  2950 950 
$Comp
L power:+5V #PWR?
U 1 1 5C74BD97
P 2600 1250
F 0 "#PWR?" H 2600 1100 50  0001 C CNN
F 1 "+5V" H 2615 1423 50  0000 C CNN
F 2 "" H 2600 1250 50  0001 C CNN
F 3 "" H 2600 1250 50  0001 C CNN
	1    2600 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5C74BDD1
P 3200 1250
F 0 "D?" H 3250 1150 50  0000 C CNN
F 1 "D_Schottky" H 2900 1150 50  0000 C CNN
F 2 "" H 3200 1250 50  0001 C CNN
F 3 "~" H 3200 1250 50  0001 C CNN
	1    3200 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 1250 3050 1250
$Comp
L Device:D_Schottky D?
U 1 1 5C74FC06
P 3200 1550
F 0 "D?" H 3250 1450 50  0000 C CNN
F 1 "D_Schottky" H 2900 1450 50  0000 C CNN
F 2 "" H 3200 1550 50  0001 C CNN
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
L Device:C C?
U 1 1 5C75C5BD
P 4000 1550
F 0 "C?" H 4115 1596 50  0000 L CNN
F 1 "10u" H 4115 1505 50  0000 L CNN
F 2 "" H 4038 1400 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5C76A036
P 4450 1850
F 0 "#PWR?" H 4450 1600 50  0001 C CNN
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
L Device:C C?
U 1 1 5C7867F7
P 5050 1550
F 0 "C?" H 5165 1596 50  0000 L CNN
F 1 "10u" H 5165 1505 50  0000 L CNN
F 2 "" H 5088 1400 50  0001 C CNN
F 3 "~" H 5050 1550 50  0001 C CNN
	1    5050 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C78684D
P 5450 1550
F 0 "C?" H 5565 1596 50  0000 L CNN
F 1 "100nF" H 5565 1505 50  0000 L CNN
F 2 "" H 5488 1400 50  0001 C CNN
F 3 "~" H 5450 1550 50  0001 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1700 5450 1750
$Comp
L power:+3.3V #PWR?
U 1 1 5C790A3A
P 5050 1000
F 0 "#PWR?" H 5050 850 50  0001 C CNN
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
L Regulator_Linear:MCP1703A-3302_SOT23 U?
U 1 1 5C8439EF
P 4450 1250
F 0 "U?" H 4450 1492 50  0000 C CNN
F 1 "MCP1703A-3302_SOT23" H 4450 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4450 1450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 4450 1200 50  0001 C CNN
	1    4450 1250
	1    0    0    -1  
$EndComp
$Comp
L gas_sensor:ICSP SP?
U 1 1 5C849FFE
P 1850 5200
F 0 "SP?" H 1850 5575 50  0000 C CNN
F 1 "ICSP" H 1850 5484 50  0000 C CNN
F 2 "" H 1900 5200 50  0001 C CNN
F 3 "" H 1900 5200 50  0001 C CNN
	1    1850 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C84A2CD
P 2400 5350
F 0 "#PWR?" H 2400 5100 50  0001 C CNN
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
Connection ~ 10400 5400
Wire Wire Line
	10550 5400 10400 5400
Connection ~ 10550 3100
Wire Wire Line
	10800 3100 10550 3100
Wire Wire Line
	10600 1350 10350 1350
Connection ~ 10350 1350
Wire Wire Line
	2200 2150 2350 2150
Connection ~ 2200 2150
$EndSCHEMATC