EESchema Schematic File Version 4
LIBS:PP_OCT-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
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
L Connector:Screw_Terminal_01x04 J1
U 1 1 5C63B352
P 4250 2800
F 0 "J1" H 4330 2792 50  0000 L CNN
F 1 "Screw_Terminal_01x04" H 4330 2701 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type101_RT01604HBWC_1x04_P5.08mm_Horizontal" H 4250 2800 50  0001 C CNN
F 3 "~" H 4250 2800 50  0001 C CNN
	1    4250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4000 4100 4000
Wire Wire Line
	4100 4000 4100 4100
Wire Wire Line
	4100 4900 4250 4900
Wire Wire Line
	4250 4100 4100 4100
Connection ~ 4100 4100
Wire Wire Line
	4100 4100 4100 4200
Wire Wire Line
	4250 4200 4100 4200
Connection ~ 4100 4200
Wire Wire Line
	4100 4200 4100 4300
Wire Wire Line
	4250 4300 4100 4300
Connection ~ 4100 4300
Wire Wire Line
	4100 4300 4100 4400
Wire Wire Line
	4250 4400 4100 4400
Connection ~ 4100 4400
Wire Wire Line
	4100 4400 4100 4500
Wire Wire Line
	4250 4500 4100 4500
Connection ~ 4100 4500
Wire Wire Line
	4250 4600 4100 4600
Wire Wire Line
	4100 4500 4100 4600
Connection ~ 4100 4600
Wire Wire Line
	4100 4600 4100 4650
Wire Wire Line
	4250 4700 4100 4700
Connection ~ 4100 4700
Wire Wire Line
	4100 4700 4100 4800
Wire Wire Line
	4250 4800 4100 4800
Connection ~ 4100 4800
Wire Wire Line
	4100 4800 4100 4900
Wire Wire Line
	4250 5000 4100 5000
Wire Wire Line
	4100 5000 4100 4900
Connection ~ 4100 4900
Wire Wire Line
	4250 5100 4100 5100
Wire Wire Line
	4100 5100 4100 5000
Connection ~ 4100 5000
Wire Wire Line
	4250 5500 4100 5500
Wire Wire Line
	4100 5500 4100 5600
Wire Wire Line
	4100 6400 4250 6400
Wire Wire Line
	4250 5600 4100 5600
Connection ~ 4100 5600
Wire Wire Line
	4100 5600 4100 5700
Wire Wire Line
	4250 5700 4100 5700
Connection ~ 4100 5700
Wire Wire Line
	4100 5700 4100 5800
Wire Wire Line
	4250 5800 4100 5800
Connection ~ 4100 5800
Wire Wire Line
	4100 5800 4100 5900
Wire Wire Line
	4250 5900 4100 5900
Connection ~ 4100 5900
Wire Wire Line
	4100 5900 4100 6000
Wire Wire Line
	4250 6000 4100 6000
Connection ~ 4100 6000
Wire Wire Line
	4250 6100 4100 6100
Wire Wire Line
	4100 6000 4100 6100
Connection ~ 4100 6100
Wire Wire Line
	4100 6100 4100 6200
Wire Wire Line
	4250 6200 4100 6200
Connection ~ 4100 6200
Wire Wire Line
	4100 6200 4100 6300
Wire Wire Line
	4250 6300 4100 6300
Connection ~ 4100 6300
Wire Wire Line
	4100 6300 4100 6400
Wire Wire Line
	4250 6500 4100 6500
Wire Wire Line
	4100 6500 4100 6400
Connection ~ 4100 6400
Wire Wire Line
	4250 6600 4100 6600
Wire Wire Line
	4100 6600 4100 6500
Connection ~ 4100 6500
Text HLabel 3850 3000 0    50   Input ~ 0
VCC
Text HLabel 3850 2800 0    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J3
U 1 1 5C942D4B
P 4550 6100
F 0 "J3" H 4600 6817 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 4600 6726 50  0000 C CNN
F 2 "teensy:PinSocket_2x12_P2.54mm_Vertical" H 4550 6100 50  0001 C CNN
F 3 "~" H 4550 6100 50  0001 C CNN
	1    4550 6100
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J4
U 1 1 5C95A68F
P 4550 4600
F 0 "J4" H 4600 5317 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 4600 5226 50  0000 C CNN
F 2 "teensy:PinSocket_2x12_P2.54mm_Vertical" H 4550 4600 50  0001 C CNN
F 3 "~" H 4550 4600 50  0001 C CNN
	1    4550 4600
	-1   0    0    1   
$EndComp
$Comp
L DRV8804:DRV8804 U1
U 1 1 5C91F3F3
P 7200 3500
F 0 "U1" H 7200 2978 50  0000 C CNN
F 1 "DRV8804" H 7200 2887 50  0000 C CNN
F 2 "Package_SO:HTSSOP-16-1EP_4.4x5mm_P0.65mm_EP3.4x5mm_Mask3x3mm_ThermalVias" H 7200 3450 50  0001 C CNN
F 3 "" H 7200 3450 50  0001 C CNN
	1    7200 3500
	1    0    0    -1  
$EndComp
$Comp
L DRV8804:DRV8804 U2
U 1 1 5C91F508
P 7200 4850
F 0 "U2" H 7200 4328 50  0000 C CNN
F 1 "DRV8804" H 7200 4237 50  0000 C CNN
F 2 "Package_SO:HTSSOP-16-1EP_4.4x5mm_P0.65mm_EP3.4x5mm_Mask3x3mm_ThermalVias" H 7200 4800 50  0001 C CNN
F 3 "" H 7200 4800 50  0001 C CNN
	1    7200 4850
	1    0    0    -1  
$EndComp
$Comp
L DRV8804:DRV8804 U3
U 1 1 5C92A6FE
P 7200 2200
F 0 "U3" H 7200 1678 50  0000 C CNN
F 1 "DRV8804" H 7200 1587 50  0000 C CNN
F 2 "Package_SO:HTSSOP-16-1EP_4.4x5mm_P0.65mm_EP3.4x5mm_Mask3x3mm_ThermalVias" H 7200 2150 50  0001 C CNN
F 3 "" H 7200 2150 50  0001 C CNN
	1    7200 2200
	1    0    0    -1  
$EndComp
$Comp
L DRV8804:DRV8804 U4
U 1 1 5C965D2D
P 7200 6150
F 0 "U4" H 7200 5628 50  0000 C CNN
F 1 "DRV8804" H 7200 5537 50  0000 C CNN
F 2 "Package_SO:HTSSOP-16-1EP_4.4x5mm_P0.65mm_EP3.4x5mm_Mask3x3mm_ThermalVias" H 7200 6100 50  0001 C CNN
F 3 "" H 7200 6100 50  0001 C CNN
	1    7200 6150
	1    0    0    -1  
$EndComp
$Comp
L DRV8804:DRV8804 U5
U 1 1 5C96676A
P 7200 7450
F 0 "U5" H 7200 6928 50  0000 C CNN
F 1 "DRV8804" H 7200 6837 50  0000 C CNN
F 2 "Package_SO:HTSSOP-16-1EP_4.4x5mm_P0.65mm_EP3.4x5mm_Mask3x3mm_ThermalVias" H 7200 7400 50  0001 C CNN
F 3 "" H 7200 7400 50  0001 C CNN
	1    7200 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2050 5350 4000
Wire Wire Line
	5350 4000 4750 4000
Wire Wire Line
	5400 2150 5400 4100
Wire Wire Line
	5400 4100 4750 4100
Wire Wire Line
	5450 2350 5450 4200
Wire Wire Line
	5450 4200 4750 4200
Wire Wire Line
	5500 2450 5500 4300
Wire Wire Line
	5500 4300 4750 4300
Wire Wire Line
	5550 3350 5550 4400
Wire Wire Line
	5550 4400 4750 4400
Wire Wire Line
	5600 3450 5600 4500
Wire Wire Line
	5600 4500 4750 4500
Wire Wire Line
	5650 3650 5650 4600
Wire Wire Line
	5650 4600 4750 4600
Wire Wire Line
	5700 3750 5700 4700
Wire Wire Line
	5700 4700 4750 4700
Wire Wire Line
	5750 4700 5750 4800
Wire Wire Line
	5750 4800 4750 4800
Wire Wire Line
	5800 4800 5800 4900
Wire Wire Line
	5800 4900 4750 4900
Wire Wire Line
	6400 5500 4750 5500
Wire Wire Line
	6300 5700 4750 5700
Wire Wire Line
	6250 5800 4750 5800
Wire Wire Line
	6200 5900 4750 5900
Wire Wire Line
	6150 6000 4750 6000
Wire Wire Line
	6100 6100 4750 6100
Wire Wire Line
	6050 6200 4750 6200
Wire Wire Line
	6000 8700 6000 6300
Wire Wire Line
	6000 6300 4750 6300
Wire Wire Line
	5950 8800 5950 6400
Wire Wire Line
	5950 6400 4750 6400
Wire Wire Line
	5900 9000 5900 6500
Wire Wire Line
	5900 6500 4750 6500
Wire Wire Line
	5850 9100 5850 6600
Wire Wire Line
	5850 6600 4750 6600
Wire Wire Line
	6650 2050 5350 2050
Wire Wire Line
	5400 2150 6650 2150
Wire Wire Line
	5450 2350 6650 2350
Wire Wire Line
	5500 2450 6650 2450
Wire Wire Line
	5550 3350 6650 3350
Wire Wire Line
	5600 3450 6650 3450
Wire Wire Line
	6050 7700 6050 6200
Wire Wire Line
	6100 7600 6100 6100
Wire Wire Line
	6150 7400 6150 6000
Wire Wire Line
	6200 7300 6200 5900
Wire Wire Line
	6250 6400 6250 5800
Wire Wire Line
	6300 6300 6300 5700
Wire Wire Line
	6350 5600 4750 5600
Wire Wire Line
	6350 6100 6350 5600
Wire Wire Line
	6400 6000 6400 5500
Wire Wire Line
	5650 3650 6650 3650
Wire Wire Line
	5700 3750 6650 3750
Wire Wire Line
	5750 4700 6650 4700
Wire Wire Line
	5800 4800 6650 4800
Wire Wire Line
	6650 5000 4750 5000
Wire Wire Line
	6650 5100 4750 5100
Wire Wire Line
	6650 6000 6400 6000
Wire Wire Line
	6350 6100 6650 6100
Wire Wire Line
	6300 6300 6650 6300
Wire Wire Line
	6250 6400 6650 6400
Wire Wire Line
	6200 7300 6650 7300
Wire Wire Line
	6150 7400 6650 7400
Wire Wire Line
	6100 7600 6650 7600
Wire Wire Line
	6050 7700 6650 7700
Wire Wire Line
	6000 8700 6650 8700
Wire Wire Line
	6650 8800 5950 8800
Wire Wire Line
	5900 9000 6650 9000
Wire Wire Line
	6650 9100 5850 9100
Wire Wire Line
	7750 1950 7950 1950
Wire Wire Line
	7950 1950 7950 3350
Wire Wire Line
	7950 3350 7750 3350
Wire Wire Line
	7750 4600 7950 4600
Wire Wire Line
	7950 4600 7950 6000
Wire Wire Line
	7950 6000 7750 6000
Wire Wire Line
	7750 7200 7950 7200
Wire Wire Line
	7950 7200 7950 8700
Wire Wire Line
	7950 8700 7750 8700
Wire Wire Line
	7750 2550 8000 2550
Wire Wire Line
	8000 2550 8000 3850
Wire Wire Line
	8000 3850 7750 3850
Wire Wire Line
	7750 5200 8000 5200
Wire Wire Line
	8000 5200 8000 3850
Connection ~ 8000 3850
Wire Wire Line
	7750 6500 8000 6500
Wire Wire Line
	8000 6500 8000 5200
Connection ~ 8000 5200
Wire Wire Line
	7750 7800 8000 7800
Wire Wire Line
	8000 7800 8000 6500
Connection ~ 8000 6500
Wire Wire Line
	7750 9200 8000 9200
Wire Wire Line
	8000 9200 8000 7800
Connection ~ 8000 7800
Wire Wire Line
	8400 2550 8000 2550
Connection ~ 8000 2550
Text HLabel 6450 1550 1    50   Input ~ 0
GND
Text HLabel 6450 2800 1    50   Input ~ 0
GND
Text HLabel 6450 4200 1    50   Input ~ 0
GND
Text HLabel 6500 5500 1    50   Input ~ 0
GND
Text HLabel 6500 6750 1    50   Input ~ 0
GND
Text HLabel 6500 8200 1    50   Input ~ 0
GND
Wire Wire Line
	7750 2350 7900 2350
Wire Wire Line
	7900 2350 7900 3000
Wire Wire Line
	7900 3650 7750 3650
Connection ~ 7900 3000
Wire Wire Line
	7900 3000 7900 3650
Text GLabel 8250 3000 2    50   Input ~ 0
LATCH_A
Wire Wire Line
	7750 5000 7900 5000
Wire Wire Line
	7900 5000 7900 5600
Wire Wire Line
	7900 6300 7750 6300
Connection ~ 7900 5600
Wire Wire Line
	7900 5600 7900 6300
Text GLabel 8250 5600 2    50   Input ~ 0
LATCH_B
Wire Wire Line
	7750 7600 7900 7600
Wire Wire Line
	7900 7600 7900 8250
Wire Wire Line
	7900 9000 7750 9000
Connection ~ 7900 8250
Wire Wire Line
	7900 8250 7900 9000
Text GLabel 8300 8250 2    50   Input ~ 0
LATCH_C
Wire Wire Line
	7200 2950 7200 2900
Wire Wire Line
	7200 2900 6450 2900
Wire Wire Line
	6450 2900 6450 2800
Wire Wire Line
	6650 3550 6450 3550
Wire Wire Line
	6450 3550 6450 2900
Connection ~ 6450 2900
Wire Wire Line
	7750 3550 7850 3550
Wire Wire Line
	7850 3550 7850 2900
Wire Wire Line
	7850 2900 7200 2900
Connection ~ 7200 2900
Wire Wire Line
	7200 1650 7200 1600
Wire Wire Line
	7200 1600 6450 1600
Wire Wire Line
	6450 1600 6450 1550
Wire Wire Line
	6650 2250 6450 2250
Wire Wire Line
	6450 2250 6450 1600
Connection ~ 6450 1600
Wire Wire Line
	7750 2250 7850 2250
Wire Wire Line
	7850 2250 7850 1600
Wire Wire Line
	7850 1600 7200 1600
Connection ~ 7200 1600
Wire Wire Line
	7200 4300 7200 4250
Wire Wire Line
	7200 4250 6450 4250
Wire Wire Line
	6450 4250 6450 4200
Wire Wire Line
	7750 4900 7900 4900
Wire Wire Line
	7900 4900 7900 4250
Wire Wire Line
	7900 4250 7200 4250
Connection ~ 7200 4250
Wire Wire Line
	6650 4900 6450 4900
Wire Wire Line
	6450 4900 6450 4250
Connection ~ 6450 4250
Wire Wire Line
	7200 5600 7200 5550
Wire Wire Line
	7200 5550 6500 5550
Wire Wire Line
	6500 5550 6500 5500
Wire Wire Line
	6650 6200 6500 6200
Wire Wire Line
	6500 6200 6500 5550
Connection ~ 6500 5550
Wire Wire Line
	7750 6200 7850 6200
Wire Wire Line
	7850 6200 7850 5550
Wire Wire Line
	7850 5550 7200 5550
Connection ~ 7200 5550
Wire Wire Line
	7200 6900 7200 6850
Wire Wire Line
	7200 6850 6500 6850
Wire Wire Line
	6500 6850 6500 6750
Wire Wire Line
	7750 7500 7900 7500
Wire Wire Line
	7900 7500 7900 6850
Wire Wire Line
	7900 6850 7200 6850
Connection ~ 7200 6850
Wire Wire Line
	6650 7500 6500 7500
Wire Wire Line
	6500 7500 6500 6850
Connection ~ 6500 6850
Wire Wire Line
	7200 8300 7200 8250
Wire Wire Line
	7750 8900 7850 8900
Wire Wire Line
	7850 8900 7850 8250
Wire Wire Line
	7850 8250 7200 8250
Connection ~ 7200 8250
Text HLabel 6550 1550 1    50   Input ~ 0
VCC
Wire Wire Line
	6650 1950 6550 1950
Wire Wire Line
	6550 1950 6550 1850
Wire Wire Line
	6650 1850 6550 1850
Connection ~ 6550 1850
Wire Wire Line
	6550 1850 6550 1550
Text HLabel 6550 2800 1    50   Input ~ 0
VCC
Text HLabel 6550 4200 1    50   Input ~ 0
VCC
Text HLabel 6600 5500 1    50   Input ~ 0
VCC
Text HLabel 6600 6750 1    50   Input ~ 0
VCC
Text HLabel 6600 8200 1    50   Input ~ 0
VCC
$Comp
L DRV8804:DRV8804 U6
U 1 1 5C96A713
P 7200 8850
F 0 "U6" H 7200 8328 50  0000 C CNN
F 1 "DRV8804" H 7200 8237 50  0000 C CNN
F 2 "Package_SO:HTSSOP-16-1EP_4.4x5mm_P0.65mm_EP3.4x5mm_Mask3x3mm_ThermalVias" H 7200 8800 50  0001 C CNN
F 3 "" H 7200 8800 50  0001 C CNN
	1    7200 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 8250 6500 8200
Wire Wire Line
	6500 8250 7200 8250
Wire Wire Line
	6500 8900 6650 8900
Connection ~ 6500 8250
Wire Wire Line
	6600 8200 6600 8500
Wire Wire Line
	6600 8600 6650 8600
Wire Wire Line
	6650 8500 6600 8500
Connection ~ 6600 8500
Wire Wire Line
	6600 8500 6600 8600
Wire Wire Line
	6650 7200 6600 7200
Wire Wire Line
	6600 7200 6600 7100
Wire Wire Line
	6650 7100 6600 7100
Connection ~ 6600 7100
Wire Wire Line
	6600 7100 6600 6750
Wire Wire Line
	6650 4600 6550 4600
Wire Wire Line
	6650 4500 6550 4500
Connection ~ 6550 4500
Wire Wire Line
	6550 4500 6550 4200
Wire Wire Line
	6650 3250 6550 3250
Wire Wire Line
	6550 3250 6550 3150
Wire Wire Line
	6650 3150 6550 3150
Connection ~ 6550 3150
Wire Wire Line
	6550 3150 6550 2800
Wire Wire Line
	6650 5900 6600 5900
Wire Wire Line
	6600 5900 6600 5800
Wire Wire Line
	6650 5800 6600 5800
Connection ~ 6600 5800
Wire Wire Line
	6600 5800 6600 5650
Wire Wire Line
	6650 6500 6500 6500
Wire Wire Line
	6650 7800 6500 7800
Wire Wire Line
	6650 9200 6500 9200
Text Notes 14400 1750 2    50   ~ 0
Pins like the output enable input and the reset both need to be low, \nhowever, both pins have internal pull down resistors. Do these pins even need to be connected?
Text GLabel 8200 2050 2    50   Input ~ 0
SER_DATA
NoConn ~ 7750 3250
Wire Wire Line
	7900 8250 8300 8250
Wire Wire Line
	7900 5600 8250 5600
Wire Wire Line
	7900 3000 8250 3000
Wire Wire Line
	7750 2050 8050 2050
Wire Wire Line
	8050 2050 8050 4700
Wire Wire Line
	8050 4700 7750 4700
Connection ~ 8050 2050
Wire Wire Line
	8050 2050 8200 2050
Wire Wire Line
	8050 4700 8050 7300
Wire Wire Line
	8050 7300 7750 7300
Connection ~ 8050 4700
Text GLabel 8200 1850 2    50   Input ~ 0
FAULT
Wire Wire Line
	8200 1850 8100 1850
Wire Wire Line
	8100 1850 8100 3150
Wire Wire Line
	8100 3150 7750 3150
Connection ~ 8100 1850
Wire Wire Line
	8100 1850 7750 1850
Wire Wire Line
	8100 3150 8100 4500
Wire Wire Line
	8100 4500 7750 4500
Connection ~ 8100 3150
Wire Wire Line
	8100 4500 8100 5800
Wire Wire Line
	8100 5800 7750 5800
Connection ~ 8100 4500
Wire Wire Line
	8100 5800 8100 7100
Wire Wire Line
	8100 7100 7750 7100
Connection ~ 8100 5800
Wire Wire Line
	8100 7100 8100 8500
Wire Wire Line
	8100 8500 7750 8500
Connection ~ 8100 7100
Text GLabel 8200 2150 2    50   Input ~ 0
SER_CLK
Wire Wire Line
	8200 2150 8150 2150
Wire Wire Line
	8150 2150 8150 3450
Wire Wire Line
	8150 3450 7750 3450
Connection ~ 8150 2150
Wire Wire Line
	8150 2150 7750 2150
Wire Wire Line
	8150 3450 8150 4800
Wire Wire Line
	8150 4800 7750 4800
Connection ~ 8150 3450
Wire Wire Line
	8150 4800 8150 6100
Wire Wire Line
	8150 6100 7750 6100
Connection ~ 8150 4800
Wire Wire Line
	8150 6100 8150 7400
Wire Wire Line
	8150 7400 7750 7400
Connection ~ 8150 6100
Wire Wire Line
	8150 7400 8150 8800
Wire Wire Line
	8150 8800 7750 8800
Connection ~ 8150 7400
NoConn ~ 7750 8600
NoConn ~ 7750 5900
$Comp
L Device:CP C2
U 1 1 5CDB79AB
P 6200 1800
F 0 "C2" H 6082 1754 50  0000 R CNN
F 1 "CP" H 6082 1845 50  0000 R CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-10_Kemet-I_Pad1.58x1.35mm_HandSolder" H 6238 1650 50  0001 C CNN
F 3 "~" H 6200 1800 50  0001 C CNN
	1    6200 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C3
U 1 1 5CDD96A4
P 6200 3100
F 0 "C3" H 6082 3054 50  0000 R CNN
F 1 "CP" H 6082 3145 50  0000 R CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-10_Kemet-I_Pad1.58x1.35mm_HandSolder" H 6238 2950 50  0001 C CNN
F 3 "~" H 6200 3100 50  0001 C CNN
	1    6200 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C4
U 1 1 5CDEA49B
P 6200 4400
F 0 "C4" H 6082 4354 50  0000 R CNN
F 1 "CP" H 6082 4445 50  0000 R CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-10_Kemet-I_Pad1.58x1.35mm_HandSolder" H 6238 4250 50  0001 C CNN
F 3 "~" H 6200 4400 50  0001 C CNN
	1    6200 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C1
U 1 1 5CDFB258
P 6100 5300
F 0 "C1" H 5982 5254 50  0000 R CNN
F 1 "CP" H 5982 5345 50  0000 R CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-10_Kemet-I_Pad1.58x1.35mm_HandSolder" H 6138 5150 50  0001 C CNN
F 3 "~" H 6100 5300 50  0001 C CNN
	1    6100 5300
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C6
U 1 1 5CE0BFF9
P 6300 7000
F 0 "C6" H 6182 6954 50  0000 R CNN
F 1 "CP" H 6182 7045 50  0000 R CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-10_Kemet-I_Pad1.58x1.35mm_HandSolder" H 6338 6850 50  0001 C CNN
F 3 "~" H 6300 7000 50  0001 C CNN
	1    6300 7000
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C5
U 1 1 5CE1CF6D
P 6250 8450
F 0 "C5" H 6132 8404 50  0000 R CNN
F 1 "CP" H 6132 8495 50  0000 R CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-10_Kemet-I_Pad1.58x1.35mm_HandSolder" H 6288 8300 50  0001 C CNN
F 3 "~" H 6250 8450 50  0001 C CNN
	1    6250 8450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 8300 6500 8300
Wire Wire Line
	6500 8300 6500 8250
Wire Wire Line
	6250 8600 6600 8600
Connection ~ 6600 8600
Wire Wire Line
	6300 6850 6500 6850
Wire Wire Line
	6300 7150 6300 7200
Wire Wire Line
	6300 7200 6600 7200
Connection ~ 6600 7200
Wire Wire Line
	6100 5150 6350 5150
Wire Wire Line
	6350 5150 6350 5450
Wire Wire Line
	6350 5450 6450 5450
Wire Wire Line
	6450 5450 6450 5550
Wire Wire Line
	6450 5550 6500 5550
Wire Wire Line
	6100 5450 6100 5650
Wire Wire Line
	6100 5650 6600 5650
Connection ~ 6600 5650
Wire Wire Line
	6600 5650 6600 5500
Wire Wire Line
	6200 4550 6200 4600
Wire Wire Line
	6200 4600 6550 4600
Connection ~ 6550 4600
Wire Wire Line
	6200 4250 6450 4250
Wire Wire Line
	6550 4500 6550 4600
Wire Wire Line
	6200 3250 6550 3250
Connection ~ 6550 3250
Wire Wire Line
	6200 2950 6200 2900
Wire Wire Line
	6200 2900 6450 2900
Wire Wire Line
	6200 1950 6550 1950
Connection ~ 6550 1950
Wire Wire Line
	6200 1650 6200 1600
Wire Wire Line
	6200 1600 6450 1600
$Comp
L Connector_Generic:Conn_01x09 J2
U 1 1 5CF3A9AE
P 9200 4350
F 0 "J2" H 9280 4392 50  0000 L CNN
F 1 "Conn_01x09" H 9280 4301 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Female_Vertical_P2.77x2.84mm_MountingHoles" H 9200 4350 50  0001 C CNN
F 3 "~" H 9200 4350 50  0001 C CNN
	1    9200 4350
	1    0    0    -1  
$EndComp
Text GLabel 9000 3950 0    50   Input ~ 0
LATCH_A
Text GLabel 9000 4350 0    50   Input ~ 0
SER_DATA
Text GLabel 9000 4450 0    50   Input ~ 0
FAULT
Text GLabel 9000 4250 0    50   Input ~ 0
SER_CLK
Text GLabel 9000 4050 0    50   Input ~ 0
LATCH_B
Text GLabel 9000 4150 0    50   Input ~ 0
LATCH_C
Wire Wire Line
	9000 4750 8950 4750
Wire Wire Line
	4050 2800 3950 2800
Wire Wire Line
	4050 2700 3950 2700
Wire Wire Line
	3950 2700 3950 2800
Connection ~ 3950 2800
Wire Wire Line
	3950 2800 3850 2800
Wire Wire Line
	4050 3000 3950 3000
Wire Wire Line
	4050 2900 3950 2900
Wire Wire Line
	3950 2900 3950 3000
Connection ~ 3950 3000
Wire Wire Line
	3950 3000 3850 3000
Text HLabel 8950 4750 0    50   Input ~ 0
GND
Text Notes 10750 4650 0    50   ~ 0
This ground should be the common between\nthis board and the MAIN board
Text GLabel 9000 4650 0    50   Input ~ 0
nENBL
Text GLabel 9000 4550 0    50   Input ~ 0
RESET
Text GLabel 8400 2550 2    50   Input ~ 0
RESET
Text GLabel 6300 2550 0    50   Input ~ 0
nENBL
Text GLabel 6350 3850 0    50   Input ~ 0
nENBL
Text GLabel 6500 6500 0    50   Input ~ 0
nENBL
Text GLabel 6500 9200 0    50   Input ~ 0
nENBL
Connection ~ 6500 8300
Wire Wire Line
	6500 8900 6500 8300
Text GLabel 6500 7800 0    50   Input ~ 0
nENBL
Text GLabel 6000 5200 0    50   Input ~ 0
nENBL
Wire Wire Line
	6000 5200 6650 5200
Wire Wire Line
	6350 3850 6650 3850
Wire Wire Line
	6300 2550 6650 2550
Text HLabel 3850 4650 0    50   Input ~ 0
VCC
Wire Wire Line
	3850 4650 4100 4650
Connection ~ 4100 4650
Wire Wire Line
	4100 4650 4100 4700
Text HLabel 3850 6000 0    50   Input ~ 0
VCC
Wire Wire Line
	3850 6000 4100 6000
$EndSCHEMATC
