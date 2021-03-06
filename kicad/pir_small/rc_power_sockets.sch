EESchema Schematic File Version 2
LIBS:rc_power_sockets-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:theapi
LIBS:rc_power_sockets-cache
EELAYER 25 0
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
L R R1
U 1 1 56D4B1A8
P 4800 3150
F 0 "R1" V 4880 3150 50  0000 C CNN
F 1 "220" V 4800 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4730 3150 50  0001 C CNN
F 3 "" H 4800 3150 50  0000 C CNN
	1    4800 3150
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 56D4B1D7
P 5550 2250
F 0 "R2" V 5630 2250 50  0000 C CNN
F 1 "100K" V 5550 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5480 2250 50  0001 C CNN
F 3 "" H 5550 2250 50  0000 C CNN
	1    5550 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 56D4B298
P 7350 4400
F 0 "#PWR01" H 7350 4150 50  0001 C CNN
F 1 "GND" H 7350 4250 50  0000 C CNN
F 2 "" H 7350 4400 50  0000 C CNN
F 3 "" H 7350 4400 50  0000 C CNN
	1    7350 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 56D4D563
P 5550 3800
F 0 "#PWR02" H 5550 3550 50  0001 C CNN
F 1 "GND" H 5550 3650 50  0000 C CNN
F 2 "" H 5550 3800 50  0000 C CNN
F 3 "" H 5550 3800 50  0000 C CNN
	1    5550 3800
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 56D4DEBE
P 8000 4000
F 0 "C2" H 8025 4100 50  0000 L CNN
F 1 "1uF" H 8025 3900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8038 3850 50  0001 C CNN
F 3 "" H 8000 4000 50  0000 C CNN
	1    8000 4000
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 56D4DF87
P 6700 4000
F 0 "C1" H 6725 4100 50  0000 L CNN
F 1 "1uF" H 6725 3900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6738 3850 50  0001 C CNN
F 3 "" H 6700 4000 50  0000 C CNN
	1    6700 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 56D4E393
P 7600 5550
F 0 "#PWR03" H 7600 5300 50  0001 C CNN
F 1 "GND" H 7600 5400 50  0000 C CNN
F 2 "" H 7600 5550 50  0000 C CNN
F 3 "" H 7600 5550 50  0000 C CNN
	1    7600 5550
	1    0    0    -1  
$EndComp
Text Label 4300 5250 0    60   ~ 0
SCK
Text Label 4300 5150 0    60   ~ 0
MISO
Text Label 4300 5050 0    60   ~ 0
MOSI
Text Label 4300 5550 0    60   ~ 0
RESET
Text Label 8600 2300 0    60   ~ 0
MOSI
Text Label 7650 2200 0    60   ~ 0
MISO
Text Label 7650 2400 0    60   ~ 0
RESET
Text Label 7650 2300 0    60   ~ 0
SCK
$Comp
L GND #PWR04
U 1 1 56D7102B
P 8450 2400
F 0 "#PWR04" H 8450 2150 50  0001 C CNN
F 1 "GND" H 8450 2250 50  0000 C CNN
F 2 "" H 8450 2400 50  0000 C CNN
F 3 "" H 8450 2400 50  0000 C CNN
	1    8450 2400
	1    0    0    -1  
$EndComp
Text Label 4300 5450 0    60   ~ 0
RADIO_DATA
$Comp
L SIL3 J1
U 1 1 56D837CF
P 3000 2050
F 0 "J1" H 3000 2250 50  0000 C CNN
F 1 "PIR" H 3000 1750 50  0000 C CNB
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 3050 2050 50  0001 C CNN
F 3 "" H 3050 2050 50  0000 C CNN
	1    3000 2050
	-1   0    0    1   
$EndComp
$Comp
L SIL3 J2
U 1 1 56D83857
P 9750 3450
F 0 "J2" H 9750 3250 50  0000 C CNN
F 1 "433MHZ" H 9750 3750 50  0000 C CNB
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 9800 3450 50  0001 C CNN
F 3 "" H 9800 3450 50  0000 C CNN
	1    9750 3450
	1    0    0    1   
$EndComp
Text Label 8850 3350 0    60   ~ 0
RADIO_DATA
$Comp
L GND #PWR05
U 1 1 56D83AA4
P 9400 3550
F 0 "#PWR05" H 9400 3300 50  0001 C CNN
F 1 "GND" H 9400 3400 50  0000 C CNN
F 2 "" H 9400 3550 50  0000 C CNN
F 3 "" H 9400 3550 50  0000 C CNN
	1    9400 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56D83C01
P 3350 2150
F 0 "#PWR06" H 3350 1900 50  0001 C CNN
F 1 "GND" H 3350 2000 50  0000 C CNN
F 2 "" H 3350 2150 50  0000 C CNN
F 3 "" H 3350 2150 50  0000 C CNN
	1    3350 2150
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 56D8549B
P 5150 3500
F 0 "R3" V 5230 3500 50  0000 C CNN
F 1 "10K" V 5150 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5080 3500 50  0001 C CNN
F 3 "" H 5150 3500 50  0000 C CNN
	1    5150 3500
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 56D85890
P 4100 5700
F 0 "R4" V 4180 5700 50  0000 C CNN
F 1 "10K" V 4100 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4030 5700 50  0001 C CNN
F 3 "" H 4100 5700 50  0000 C CNN
	1    4100 5700
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 56D9DCDE
P 8250 5350
F 0 "C3" H 8275 5450 50  0000 L CNN
F 1 "0.1uF" H 8275 5250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8288 5200 50  0001 C CNN
F 3 "" H 8250 5350 50  0000 C CNN
	1    8250 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56D9DFFD
P 8250 5500
F 0 "#PWR07" H 8250 5250 50  0001 C CNN
F 1 "GND" H 8250 5350 50  0000 C CNN
F 2 "" H 8250 5500 50  0000 C CNN
F 3 "" H 8250 5500 50  0000 C CNN
	1    8250 5500
	1    0    0    -1  
$EndComp
$Comp
L ATTINY85-S IC1
U 1 1 56D9E1BB
P 6250 5300
F 0 "IC1" H 5100 5700 50  0000 C CNN
F 1 "ATTINY85" H 7250 4900 50  0000 C CNN
F 2 "theapi_footprints:SOIC-8-N-handsolder" H 7200 5300 50  0000 C CIN
F 3 "" H 6250 5300 50  0000 C CNN
	1    6250 5300
	1    0    0    -1  
$EndComp
Text Label 4300 5350 0    60   ~ 0
ADC3
$Comp
L Q_NMOS_GSD Q1
U 1 1 56E8170A
P 5450 3150
F 0 "Q1" H 5750 3200 50  0000 R CNN
F 1 "NMOS" H 5850 3100 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 5650 3250 50  0001 C CNN
F 3 "" H 5450 3150 50  0000 C CNN
	1    5450 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P1
U 1 1 56EEE1EA
P 8200 2300
F 0 "P1" H 8200 2500 50  0000 C CNN
F 1 "ICSP" H 8200 2100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 8200 1100 50  0001 C CNN
F 3 "" H 8200 1100 50  0000 C CNN
	1    8200 2300
	1    0    0    -1  
$EndComp
Text Label 4200 3150 0    60   ~ 0
NBASE_ON
Text Label 5850 2450 0    60   ~ 0
PBASE
Text Label 8600 4400 0    60   ~ 0
3.3v
Text Label 6550 3050 0    60   ~ 0
SWITCH_POWER
Text Label 4600 1950 0    60   ~ 0
POWER
Text Label 5000 3150 0    60   ~ 0
NBASE
Connection ~ 5550 1950
Wire Wire Line
	5550 2450 6250 2450
Wire Wire Line
	5550 2400 5550 2950
Wire Wire Line
	6550 1950 6550 2250
Connection ~ 5550 2450
Wire Wire Line
	6550 3850 7050 3850
Connection ~ 6700 3850
Wire Wire Line
	7650 3850 8600 3850
Wire Wire Line
	7350 4050 7350 4400
Wire Wire Line
	6700 4150 6700 4300
Wire Wire Line
	6700 4300 8000 4300
Connection ~ 7350 4300
Wire Wire Line
	8000 4300 8000 4150
Wire Wire Line
	8600 3850 8600 5950
Connection ~ 8000 3850
Wire Wire Line
	4150 3050 4150 3300
Connection ~ 4150 3150
Wire Wire Line
	4150 2050 4150 2750
Wire Wire Line
	4150 5150 4900 5150
Wire Wire Line
	4900 5050 4300 5050
Wire Wire Line
	4900 5450 4300 5450
Wire Wire Line
	3350 1950 6550 1950
Wire Wire Line
	4150 3600 4150 5150
Wire Wire Line
	4650 3150 4150 3150
Wire Wire Line
	4950 3150 5250 3150
Wire Wire Line
	6550 2650 6550 3850
Wire Wire Line
	6550 3450 9400 3450
Wire Wire Line
	3350 2050 4150 2050
Wire Wire Line
	3700 5250 4900 5250
Wire Wire Line
	5550 1800 5550 2100
Wire Wire Line
	5550 3350 5550 3800
Wire Wire Line
	5150 3650 5550 3650
Connection ~ 5550 3650
Wire Wire Line
	5150 3350 5150 3150
Connection ~ 5150 3150
Wire Wire Line
	8600 5950 4100 5950
Connection ~ 8600 5050
Wire Wire Line
	8250 5200 8250 5050
Connection ~ 8250 5050
Wire Wire Line
	4900 5350 3600 5350
Connection ~ 6550 3450
Wire Wire Line
	8850 3350 9400 3350
Wire Wire Line
	8450 2300 8600 2300
Wire Wire Line
	7950 2200 7650 2200
Wire Wire Line
	7650 2300 7950 2300
Wire Wire Line
	7650 2400 7950 2400
Wire Wire Line
	3700 2050 3700 5250
Connection ~ 3700 2050
Wire Wire Line
	7600 5050 8600 5050
Wire Wire Line
	8450 2200 8450 1950
Wire Wire Line
	8450 1950 7500 1950
Wire Wire Line
	7500 1950 7500 2800
Wire Wire Line
	7500 2800 6550 2800
Connection ~ 6550 2800
$Comp
L D_Schottky D1
U 1 1 56F14591
P 4150 2900
F 0 "D1" H 4150 3000 50  0000 C CNN
F 1 "D_Schottky" V 4150 2600 50  0000 C CNN
F 2 "theapi_footprints:SOD-123-handsolder" H 4150 2900 50  0001 C CNN
F 3 "" H 4150 2900 50  0000 C CNN
	1    4150 2900
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky D2
U 1 1 56F1471B
P 4150 3450
F 0 "D2" H 4150 3350 50  0000 C CNN
F 1 "D_Schottky" V 4150 3750 50  0000 C CNN
F 2 "theapi_footprints:SOD-123-handsolder" H 4150 3450 50  0001 C CNN
F 3 "" H 4150 3450 50  0000 C CNN
	1    4150 3450
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D3
U 1 1 56F2954C
P 5550 1650
F 0 "D3" H 5550 1550 50  0000 C CNN
F 1 "D_Schottky" V 5550 1950 50  0000 C CNN
F 2 "theapi_footprints:SOD-123-handsolder" H 5550 1650 50  0001 C CNN
F 3 "" H 5550 1650 50  0000 C CNN
	1    5550 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 5550 4900 5550
Wire Wire Line
	4100 5950 4100 5850
Wire Wire Line
	9350 4750 8600 4750
Connection ~ 8600 4750
Wire Wire Line
	5550 950  5550 1500
$Comp
L R R5
U 1 1 56F5D3CF
P 2300 5050
F 0 "R5" V 2380 5050 50  0000 C CNN
F 1 "820" V 2300 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2230 5050 50  0001 C CNN
F 3 "" H 2300 5050 50  0000 C CNN
	1    2300 5050
	0    1    1    0   
$EndComp
$Comp
L Led_Small D4
U 1 1 56F5D6D0
P 1800 5050
F 0 "D4" H 1750 5175 50  0000 L CNN
F 1 "Led" H 1625 4950 50  0000 L CNN
F 2 "theapi_footprints:LED_0805" V 1800 5050 50  0001 C CNN
F 3 "" V 1800 5050 50  0000 C CNN
	1    1800 5050
	1    0    0    -1  
$EndComp
Text Label 2650 5050 0    60   ~ 0
MOSI
Wire Wire Line
	2450 5050 2650 5050
Wire Wire Line
	2150 5050 1900 5050
$Comp
L GND #PWR08
U 1 1 56F5DB12
P 1500 5200
F 0 "#PWR08" H 1500 4950 50  0001 C CNN
F 1 "GND" H 1500 5050 50  0000 C CNN
F 2 "" H 1500 5200 50  0000 C CNN
F 3 "" H 1500 5200 50  0000 C CNN
	1    1500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5050 1500 5050
Wire Wire Line
	1500 5050 1500 5200
Text Label 7100 950  0    60   ~ 0
VCC
$Comp
L MCP1755ST-3302E/DB U1
U 1 1 56F7151A
P 7350 3850
F 0 "U1" H 7500 3700 50  0000 C CNN
F 1 "MCP1755ST-3302E/DB" H 7350 4000 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 7350 3850 50  0001 C CNN
F 3 "" H 7350 3850 50  0000 C CNN
	1    7350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4050 7400 4050
Connection ~ 7350 4050
$Comp
L GND #PWR09
U 1 1 56F7F83F
P 8600 1050
F 0 "#PWR09" H 8600 800 50  0001 C CNN
F 1 "GND" H 8600 900 50  0000 C CNN
F 2 "" H 8600 1050 50  0000 C CNN
F 3 "" H 8600 1050 50  0000 C CNN
	1    8600 1050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 56F7F882
P 8800 1000
F 0 "P2" H 8800 1150 50  0000 C CNN
F 1 "ALT_PWR" H 9050 1000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 8800 1000 50  0001 C CNN
F 3 "" H 8800 1000 50  0000 C CNN
	1    8800 1000
	1    0    0    1   
$EndComp
$Comp
L CONN_01X01 MOUNT5
U 1 1 56F81651
P 1100 1900
F 0 "MOUNT5" V 1200 1900 50  0000 C CNN
F 1 "CONN_01X01" V 1000 1600 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 1100 1900 50  0001 C CNN
F 3 "" H 1100 1900 50  0000 C CNN
	1    1100 1900
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 MOUNT6
U 1 1 56F816D2
P 1550 1900
F 0 "MOUNT6" V 1650 1900 50  0000 C CNN
F 1 "CONN_01X01" V 1450 1600 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 1550 1900 50  0001 C CNN
F 3 "" H 1550 1900 50  0000 C CNN
	1    1550 1900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR010
U 1 1 56F8174A
P 1100 2100
F 0 "#PWR010" H 1100 1850 50  0001 C CNN
F 1 "GND" H 1100 1950 50  0000 C CNN
F 2 "" H 1100 2100 50  0000 C CNN
F 3 "" H 1100 2100 50  0000 C CNN
	1    1100 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 56F817AF
P 1550 2100
F 0 "#PWR011" H 1550 1850 50  0001 C CNN
F 1 "GND" H 1550 1950 50  0000 C CNN
F 2 "" H 1550 2100 50  0000 C CNN
F 3 "" H 1550 2100 50  0000 C CNN
	1    1550 2100
	1    0    0    -1  
$EndComp
$Comp
L SWITCH_INV SW1
U 1 1 56FBC9B1
P 6050 950
F 0 "SW1" H 5850 1100 50  0000 C CNN
F 1 "SWITCH_INV" H 5900 800 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_Micro_SPST" H 6050 950 50  0001 C CNN
F 3 "" H 6050 950 50  0000 C CNN
	1    6050 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 950  6700 850 
Wire Wire Line
	6700 850  6550 850 
$Comp
L GND #PWR012
U 1 1 56FBCCBF
P 6550 1050
F 0 "#PWR012" H 6550 800 50  0001 C CNN
F 1 "GND" H 6550 900 50  0000 C CNN
F 2 "" H 6550 1050 50  0000 C CNN
F 3 "" H 6550 1050 50  0000 C CNN
	1    6550 1050
	1    0    0    -1  
$EndComp
Text Label 5550 1300 0    60   ~ 0
VCC_SWITCHED
$Comp
L CONN_01X01 MOUNT1
U 1 1 5722072E
P 1100 2550
F 0 "MOUNT1" V 1200 2550 50  0000 C CNN
F 1 "CONN_01X01" V 1000 2250 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 1100 2550 50  0001 C CNN
F 3 "" H 1100 2550 50  0000 C CNN
	1    1100 2550
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 MOUNT2
U 1 1 57220734
P 1550 2550
F 0 "MOUNT2" V 1650 2550 50  0000 C CNN
F 1 "CONN_01X01" V 1450 2250 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 1550 2550 50  0001 C CNN
F 3 "" H 1550 2550 50  0000 C CNN
	1    1550 2550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR013
U 1 1 5722073A
P 1100 2750
F 0 "#PWR013" H 1100 2500 50  0001 C CNN
F 1 "GND" H 1100 2600 50  0000 C CNN
F 2 "" H 1100 2750 50  0000 C CNN
F 3 "" H 1100 2750 50  0000 C CNN
	1    1100 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 57220740
P 1550 2750
F 0 "#PWR014" H 1550 2500 50  0001 C CNN
F 1 "GND" H 1550 2600 50  0000 C CNN
F 2 "" H 1550 2750 50  0000 C CNN
F 3 "" H 1550 2750 50  0000 C CNN
	1    1550 2750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3
U 1 1 57266AA6
P 3400 5350
F 0 "P3" H 3400 5450 50  0000 C CNN
F 1 "CONN_01X01" V 3500 5350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 3400 5350 50  0001 C CNN
F 3 "" H 3400 5350 50  0000 C CNN
	1    3400 5350
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 57266A41
P 9550 4750
F 0 "P4" H 9550 4850 50  0000 C CNN
F 1 "CONN_01X01" V 9650 4750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 9550 4750 50  0001 C CNN
F 3 "" H 9550 4750 50  0000 C CNN
	1    9550 4750
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GDS Q2
U 1 1 573DB482
P 6450 2450
F 0 "Q2" H 6750 2500 50  0000 R CNN
F 1 "PMOS" H 6850 2400 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 6650 2550 50  0001 C CNN
F 3 "" H 6450 2450 50  0000 C CNN
	1    6450 2450
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 573F0506
P 7700 1100
F 0 "C4" H 7725 1200 50  0000 L CNN
F 1 "10uF" H 7725 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7738 950 50  0001 C CNN
F 3 "" H 7700 1100 50  0000 C CNN
	1    7700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 950  8600 950 
Connection ~ 7700 950 
$Comp
L GND #PWR015
U 1 1 573F0819
P 7700 1250
F 0 "#PWR015" H 7700 1000 50  0001 C CNN
F 1 "GND" H 7700 1100 50  0000 C CNN
F 2 "" H 7700 1250 50  0000 C CNN
F 3 "" H 7700 1250 50  0000 C CNN
	1    7700 1250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
