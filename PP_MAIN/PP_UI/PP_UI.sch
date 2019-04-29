EESchema Schematic File Version 4
LIBS:PP_UI-cache
EELAYER 26 0
EELAYER END
$Descr User 11850 11024
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
L Device:Rotary_Encoder_Switch SW4
U 1 1 5C4773ED
P 7150 4950
F 0 "SW4" H 7150 5317 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 7150 5226 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 7000 5110 50  0001 C CNN
F 3 "~" H 7150 5210 50  0001 C CNN
	1    7150 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5C47743B
P 6150 6100
F 0 "C9" H 6265 6146 50  0000 L CNN
F 1 ".01u" H 6265 6055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6188 5950 50  0001 C CNN
F 3 "~" H 6150 6100 50  0001 C CNN
	1    6150 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 5C477486
P 7650 4550
F 0 "R29" H 7720 4596 50  0000 L CNN
F 1 "10k" H 7720 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7580 4550 50  0001 C CNN
F 3 "~" H 7650 4550 50  0001 C CNN
	1    7650 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 5C47759E
P 7900 4850
F 0 "R30" V 7693 4850 50  0000 C CNN
F 1 "10k" V 7784 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7830 4850 50  0001 C CNN
F 3 "~" H 7900 4850 50  0001 C CNN
	1    7900 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 5C4775E5
P 6450 5900
F 0 "R26" V 6243 5900 50  0000 C CNN
F 1 "10k" V 6334 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6380 5900 50  0001 C CNN
F 3 "~" H 6450 5900 50  0001 C CNN
	1    6450 5900
	0    1    1    0   
$EndComp
$Comp
L Device:R R24
U 1 1 5C4775EC
P 6350 5150
F 0 "R24" V 6143 5150 50  0000 C CNN
F 1 "10k" V 6234 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6280 5150 50  0001 C CNN
F 3 "~" H 6350 5150 50  0001 C CNN
	1    6350 5150
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 5C477612
P 6450 5500
F 0 "R25" V 6243 5500 50  0000 C CNN
F 1 "10k" V 6334 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6380 5500 50  0001 C CNN
F 3 "~" H 6450 5500 50  0001 C CNN
	1    6450 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 5C477619
P 6350 4850
F 0 "R23" V 6143 4850 50  0000 C CNN
F 1 "10k" V 6234 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6280 4850 50  0001 C CNN
F 3 "~" H 6350 4850 50  0001 C CNN
	1    6350 4850
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 5C477973
P 5750 6100
F 0 "C8" H 5865 6146 50  0000 L CNN
F 1 ".01u" H 5865 6055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5788 5950 50  0001 C CNN
F 3 "~" H 5750 6100 50  0001 C CNN
	1    5750 6100
	1    0    0    -1  
$EndComp
Text HLabel 6800 5150 3    50   Input ~ 0
GND
Text HLabel 6000 4750 1    50   Input ~ 0
+3V3
Wire Wire Line
	6200 4850 6150 4850
Wire Wire Line
	6000 4850 6000 4750
Wire Wire Line
	6200 5150 6150 5150
Wire Wire Line
	6150 5150 6150 4850
Connection ~ 6150 4850
Wire Wire Line
	6150 4850 6000 4850
Wire Wire Line
	6500 4850 6650 4850
Wire Wire Line
	6850 5050 6700 5050
Wire Wire Line
	6500 5050 6500 5150
Wire Wire Line
	6800 5150 6800 4950
Wire Wire Line
	6800 4950 6850 4950
Text HLabel 7550 5150 3    50   Input ~ 0
GND
Wire Wire Line
	7550 5150 7550 5050
Wire Wire Line
	7550 5050 7450 5050
Wire Wire Line
	7450 4850 7650 4850
Wire Wire Line
	7650 4700 7650 4850
Connection ~ 7650 4850
Wire Wire Line
	7650 4850 7750 4850
Wire Wire Line
	6600 5500 6650 5500
Wire Wire Line
	6650 5500 6650 4850
Connection ~ 6650 4850
Wire Wire Line
	6650 4850 6850 4850
Wire Wire Line
	6600 5900 6700 5900
Wire Wire Line
	6700 5900 6700 5050
Connection ~ 6700 5050
Wire Wire Line
	6700 5050 6500 5050
Wire Wire Line
	6150 5950 6150 5900
Wire Wire Line
	6150 5900 6300 5900
Text HLabel 5750 6250 3    50   Input ~ 0
GND
Text HLabel 6150 6250 3    50   Input ~ 0
GND
Text HLabel 7650 4400 1    50   Input ~ 0
+3V3
$Comp
L 4xxx:40106 U3
U 1 1 5C47BF73
P 8450 4850
F 0 "U3" H 8450 5167 50  0000 C CNN
F 1 "40106" H 8450 5076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 8450 4850 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/HEF40106B.pdf" H 8450 4850 50  0001 C CNN
	1    8450 4850
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:40106 U3
U 2 1 5C47BFC8
P 5400 5500
F 0 "U3" H 5400 5183 50  0000 C CNN
F 1 "40106" H 5400 5274 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 5400 5500 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/HEF40106B.pdf" H 5400 5500 50  0001 C CNN
	2    5400 5500
	-1   0    0    1   
$EndComp
$Comp
L 4xxx:40106 U3
U 3 1 5C47C027
P 5400 5900
F 0 "U3" H 5400 5583 50  0000 C CNN
F 1 "40106" H 5400 5674 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 5400 5900 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/HEF40106B.pdf" H 5400 5900 50  0001 C CNN
	3    5400 5900
	-1   0    0    1   
$EndComp
$Comp
L 4xxx:40106 U3
U 4 1 5C47C086
P 5750 2300
F 0 "U3" H 5750 2617 50  0000 C CNN
F 1 "40106" H 5750 2526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 5750 2300 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/HEF40106B.pdf" H 5750 2300 50  0001 C CNN
	4    5750 2300
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:40106 U3
U 5 1 5C47C0E7
P 5750 3250
F 0 "U3" H 5750 3567 50  0000 C CNN
F 1 "40106" H 5750 3476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 5750 3250 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/HEF40106B.pdf" H 5750 3250 50  0001 C CNN
	5    5750 3250
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:40106 U3
U 6 1 5C47C148
P 5750 1400
F 0 "U3" H 5750 1717 50  0000 C CNN
F 1 "40106" H 5750 1626 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 5750 1400 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/HEF40106B.pdf" H 5750 1400 50  0001 C CNN
	6    5750 1400
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:40106 U3
U 7 1 5C47C1AD
P 7700 8000
F 0 "U3" H 7930 8046 50  0000 L CNN
F 1 "40106" H 7930 7955 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 7700 8000 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/HEF40106B.pdf" H 7700 8000 50  0001 C CNN
	7    7700 8000
	1    0    0    -1  
$EndComp
Text HLabel 7700 7400 1    50   Input ~ 0
+3V3
Text HLabel 7700 8600 3    50   Input ~ 0
GND
Wire Wire Line
	5750 5500 6300 5500
Wire Wire Line
	5750 5500 5750 5950
Wire Wire Line
	5700 5500 5750 5500
Connection ~ 5750 5500
Wire Wire Line
	5700 5900 6150 5900
Connection ~ 6150 5900
$Comp
L Device:C C10
U 1 1 5C47F157
P 8100 5150
F 0 "C10" H 8215 5196 50  0000 L CNN
F 1 ".01u" H 8215 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8138 5000 50  0001 C CNN
F 3 "~" H 8100 5150 50  0001 C CNN
	1    8100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4850 8100 4850
Wire Wire Line
	8100 5000 8100 4850
Connection ~ 8100 4850
Wire Wire Line
	8100 4850 8150 4850
Text HLabel 8100 5300 3    50   Input ~ 0
GND
$Comp
L Switch:SW_Push SW2
U 1 1 5C4806BD
P 4650 2300
F 0 "SW2" H 4650 2585 50  0000 C CNN
F 1 "SW_Push" H 4650 2494 50  0000 C CNN
F 2 "Button_Switch_THT:Push_E-Switch_KS01Q01" H 4650 2500 50  0001 C CNN
F 3 "" H 4650 2500 50  0001 C CNN
	1    4650 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5C480FAC
P 5200 2300
F 0 "R21" V 4993 2300 50  0000 C CNN
F 1 "10k" V 5084 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5130 2300 50  0001 C CNN
F 3 "~" H 5200 2300 50  0001 C CNN
	1    5200 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5C481396
P 4950 2000
F 0 "R18" H 4880 1954 50  0000 R CNN
F 1 "10k" H 4880 2045 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4880 2000 50  0001 C CNN
F 3 "~" H 4950 2000 50  0001 C CNN
	1    4950 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 5C481F8C
P 5450 2500
F 0 "C6" H 5565 2546 50  0000 L CNN
F 1 ".01u" H 5565 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5488 2350 50  0001 C CNN
F 3 "~" H 5450 2500 50  0001 C CNN
	1    5450 2500
	1    0    0    -1  
$EndComp
Text HLabel 5450 2650 3    50   Input ~ 0
GND
Text HLabel 4950 1850 1    50   Input ~ 0
+3V3
Text HLabel 4350 2350 3    50   Input ~ 0
GND
Wire Wire Line
	4350 2350 4350 2300
Wire Wire Line
	4350 2300 4450 2300
Wire Wire Line
	4950 2150 4950 2300
Wire Wire Line
	4950 2300 4850 2300
Wire Wire Line
	5050 2300 4950 2300
Connection ~ 4950 2300
Wire Wire Line
	5450 2350 5450 2300
Wire Wire Line
	5450 2300 5350 2300
$Comp
L Switch:SW_Push SW3
U 1 1 5C484E92
P 4650 3250
F 0 "SW3" H 4650 3535 50  0000 C CNN
F 1 "SW_Push" H 4650 3444 50  0000 C CNN
F 2 "Button_Switch_THT:Push_E-Switch_KS01Q01" H 4650 3450 50  0001 C CNN
F 3 "" H 4650 3450 50  0001 C CNN
	1    4650 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 5C484E99
P 5200 3250
F 0 "R22" V 4993 3250 50  0000 C CNN
F 1 "10k" V 5084 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5130 3250 50  0001 C CNN
F 3 "~" H 5200 3250 50  0001 C CNN
	1    5200 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5C484EA0
P 4950 2950
F 0 "R19" H 4880 2904 50  0000 R CNN
F 1 "10k" H 4880 2995 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4880 2950 50  0001 C CNN
F 3 "~" H 4950 2950 50  0001 C CNN
	1    4950 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5C484EA7
P 5450 3450
F 0 "C7" H 5565 3496 50  0000 L CNN
F 1 ".01u" H 5565 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5488 3300 50  0001 C CNN
F 3 "~" H 5450 3450 50  0001 C CNN
	1    5450 3450
	1    0    0    -1  
$EndComp
Text HLabel 5450 3600 3    50   Input ~ 0
GND
Text HLabel 4950 2800 1    50   Input ~ 0
+3V3
Text HLabel 4350 3300 3    50   Input ~ 0
GND
Wire Wire Line
	4350 3300 4350 3250
Wire Wire Line
	4350 3250 4450 3250
Wire Wire Line
	4950 3100 4950 3250
Wire Wire Line
	4950 3250 4850 3250
Wire Wire Line
	5050 3250 4950 3250
Connection ~ 4950 3250
Wire Wire Line
	5450 3300 5450 3250
Wire Wire Line
	5450 3250 5350 3250
Connection ~ 5450 2300
Connection ~ 5450 3250
$Comp
L Switch:SW_Push SW1
U 1 1 5C488B8D
P 4650 1400
F 0 "SW1" H 4650 1685 50  0000 C CNN
F 1 "SW_Push" H 4650 1594 50  0000 C CNN
F 2 "Button_Switch_THT:Push_E-Switch_KS01Q01" H 4650 1600 50  0001 C CNN
F 3 "" H 4650 1600 50  0001 C CNN
	1    4650 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5C488B94
P 5200 1400
F 0 "R20" V 4993 1400 50  0000 C CNN
F 1 "10k" V 5084 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5130 1400 50  0001 C CNN
F 3 "~" H 5200 1400 50  0001 C CNN
	1    5200 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5C488B9B
P 4950 1100
F 0 "R17" H 4880 1054 50  0000 R CNN
F 1 "10k" H 4880 1145 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4880 1100 50  0001 C CNN
F 3 "~" H 4950 1100 50  0001 C CNN
	1    4950 1100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 5C488BA2
P 5450 1600
F 0 "C5" H 5565 1646 50  0000 L CNN
F 1 ".01u" H 5565 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5488 1450 50  0001 C CNN
F 3 "~" H 5450 1600 50  0001 C CNN
	1    5450 1600
	1    0    0    -1  
$EndComp
Text HLabel 4950 950  1    50   Input ~ 0
+3V3
Text HLabel 4350 1450 3    50   Input ~ 0
GND
Wire Wire Line
	4350 1450 4350 1400
Wire Wire Line
	4350 1400 4450 1400
Wire Wire Line
	4950 1250 4950 1400
Wire Wire Line
	4950 1400 4850 1400
Wire Wire Line
	5050 1400 4950 1400
Connection ~ 4950 1400
Wire Wire Line
	5450 1400 5350 1400
Wire Wire Line
	5450 1450 5450 1400
Connection ~ 5450 1400
Text HLabel 5450 1750 3    50   Input ~ 0
GND
Text GLabel 6050 1400 3    50   Input ~ 0
Midi_Play_Pause
Text GLabel 6050 2300 3    50   Input ~ 0
Midi_Stop
Text GLabel 6050 3250 3    50   Input ~ 0
Midi_loop
Wire Notes Line
	4250 700  4250 3850
Wire Notes Line
	4250 3850 6150 3850
Wire Notes Line
	6150 3850 6150 700 
Wire Notes Line
	6150 700  4250 700 
Text Notes 4650 650  0    98   ~ 0
MIDI BUTTONS
Wire Wire Line
	7700 7500 7700 7400
Wire Wire Line
	7700 8500 7700 8600
Wire Wire Line
	7200 8500 7700 8500
Connection ~ 7700 8500
Wire Wire Line
	7200 7500 7700 7500
Connection ~ 7700 7500
Text GLabel 5100 5500 3    50   Input ~ 0
Enc_A
Text GLabel 5100 5900 3    50   Input ~ 0
Enc_B
Text GLabel 8750 4850 3    50   Input ~ 0
Enc_SW
Wire Notes Line
	5000 5100 5000 6550
Wire Notes Line
	5000 6550 6850 6550
Wire Notes Line
	6850 6550 6850 5600
Wire Notes Line
	6850 5600 8850 5600
Wire Notes Line
	8850 4100 5900 4100
Wire Notes Line
	5900 5100 5000 5100
Text Notes 6750 4050 0    98   ~ 0
ENCODER W/ SW\n
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 5C4A6BF1
P 7300 1350
F 0 "Q1" H 7505 1396 50  0000 L CNN
F 1 "2N7000" H 7505 1305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7500 1275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 7300 1350 50  0001 L CNN
	1    7300 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J6
U 1 1 5C4AACF7
P 6800 1450
F 0 "J6" H 6804 1792 50  0000 C CNN
F 1 "AudioJack2_Ground_Switch" H 6804 1701 50  0000 C CNN
F 2 "thonkiconn:THONKICONN" H 6800 1450 50  0001 C CNN
F 3 "~" H 6800 1450 50  0001 C CNN
	1    6800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1550 7100 1550
Wire Wire Line
	7100 1550 7100 1500
Wire Wire Line
	7100 1450 7000 1450
Wire Wire Line
	7150 1600 7150 1500
Wire Wire Line
	7150 1500 7100 1500
Connection ~ 7100 1500
Wire Wire Line
	7100 1500 7100 1450
Wire Wire Line
	7000 1350 7100 1350
Text HLabel 7400 2000 3    50   Input ~ 0
GND
Text HLabel 7150 1600 3    50   Input ~ 0
GND
$Comp
L Device:R R27
U 1 1 5C4B58C3
P 7400 1800
F 0 "R27" H 7470 1846 50  0000 L CNN
F 1 "47k" H 7470 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7330 1800 50  0001 C CNN
F 3 "~" H 7400 1800 50  0001 C CNN
	1    7400 1800
	1    0    0    -1  
$EndComp
Text HLabel 7400 1000 1    50   Input ~ 0
+3V3
Wire Wire Line
	7400 2000 7400 1950
Wire Wire Line
	7400 1650 7400 1600
Wire Wire Line
	7400 1150 7400 1000
Text GLabel 7750 1650 3    50   Input ~ 0
Gate_A
Wire Wire Line
	7750 1650 7750 1600
Wire Wire Line
	7750 1600 7400 1600
Connection ~ 7400 1600
Wire Wire Line
	7400 1600 7400 1550
$Comp
L Transistor_FET:2N7000 Q3
U 1 1 5C4C18FA
P 8850 1350
F 0 "Q3" H 9055 1396 50  0000 L CNN
F 1 "2N7000" H 9055 1305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9050 1275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 8850 1350 50  0001 L CNN
	1    8850 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J8
U 1 1 5C4C1901
P 8350 1450
F 0 "J8" H 8354 1792 50  0000 C CNN
F 1 "AudioJack2_Ground_Switch" H 8354 1701 50  0000 C CNN
F 2 "thonkiconn:THONKICONN" H 8350 1450 50  0001 C CNN
F 3 "~" H 8350 1450 50  0001 C CNN
	1    8350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1550 8650 1550
Wire Wire Line
	8650 1550 8650 1500
Wire Wire Line
	8650 1450 8550 1450
Wire Wire Line
	8700 1600 8700 1500
Wire Wire Line
	8700 1500 8650 1500
Connection ~ 8650 1500
Wire Wire Line
	8650 1500 8650 1450
Wire Wire Line
	8550 1350 8650 1350
Text HLabel 8950 2000 3    50   Input ~ 0
GND
Text HLabel 8700 1600 3    50   Input ~ 0
GND
$Comp
L Device:R R31
U 1 1 5C4C1912
P 8950 1800
F 0 "R31" H 9020 1846 50  0000 L CNN
F 1 "47k" H 9020 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8880 1800 50  0001 C CNN
F 3 "~" H 8950 1800 50  0001 C CNN
	1    8950 1800
	1    0    0    -1  
$EndComp
Text HLabel 8950 1000 1    50   Input ~ 0
+3V3
Wire Wire Line
	8950 2000 8950 1950
Wire Wire Line
	8950 1650 8950 1600
Wire Wire Line
	8950 1150 8950 1000
Text GLabel 9300 1650 3    50   Input ~ 0
Gate_B
Wire Wire Line
	9300 1650 9300 1600
Wire Wire Line
	9300 1600 8950 1600
Connection ~ 8950 1600
Wire Wire Line
	8950 1600 8950 1550
$Comp
L Transistor_FET:2N7000 Q2
U 1 1 5C4C34E8
P 7300 2850
F 0 "Q2" H 7505 2896 50  0000 L CNN
F 1 "2N7000" H 7505 2805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7500 2775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 7300 2850 50  0001 L CNN
	1    7300 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J7
U 1 1 5C4C34EF
P 6800 2950
F 0 "J7" H 6804 3292 50  0000 C CNN
F 1 "AudioJack2_Ground_Switch" H 6804 3201 50  0000 C CNN
F 2 "thonkiconn:THONKICONN" H 6800 2950 50  0001 C CNN
F 3 "~" H 6800 2950 50  0001 C CNN
	1    6800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3050 7100 3050
Wire Wire Line
	7100 3050 7100 3000
Wire Wire Line
	7100 2950 7000 2950
Wire Wire Line
	7150 3100 7150 3000
Wire Wire Line
	7150 3000 7100 3000
Connection ~ 7100 3000
Wire Wire Line
	7100 3000 7100 2950
Wire Wire Line
	7000 2850 7100 2850
Text HLabel 7400 3500 3    50   Input ~ 0
GND
Text HLabel 7150 3100 3    50   Input ~ 0
GND
$Comp
L Device:R R28
U 1 1 5C4C3500
P 7400 3300
F 0 "R28" H 7470 3346 50  0000 L CNN
F 1 "47k" H 7470 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7330 3300 50  0001 C CNN
F 3 "~" H 7400 3300 50  0001 C CNN
	1    7400 3300
	1    0    0    -1  
$EndComp
Text HLabel 7400 2500 1    50   Input ~ 0
+3V3
Wire Wire Line
	7400 3500 7400 3450
Wire Wire Line
	7400 3150 7400 3100
Wire Wire Line
	7400 2650 7400 2500
Text GLabel 7750 3150 3    50   Input ~ 0
Gate_C
Wire Wire Line
	7750 3150 7750 3100
Wire Wire Line
	7750 3100 7400 3100
Connection ~ 7400 3100
Wire Wire Line
	7400 3100 7400 3050
$Comp
L Transistor_FET:2N7000 Q4
U 1 1 5C4C3510
P 8850 2850
F 0 "Q4" H 9055 2896 50  0000 L CNN
F 1 "2N7000" H 9055 2805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9050 2775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 8850 2850 50  0001 L CNN
	1    8850 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J9
U 1 1 5C4C3517
P 8350 2950
F 0 "J9" H 8354 3292 50  0000 C CNN
F 1 "AudioJack2_Ground_Switch" H 8354 3201 50  0000 C CNN
F 2 "thonkiconn:THONKICONN" H 8350 2950 50  0001 C CNN
F 3 "~" H 8350 2950 50  0001 C CNN
	1    8350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3050 8650 3050
Wire Wire Line
	8650 3050 8650 3000
Wire Wire Line
	8650 2950 8550 2950
Wire Wire Line
	8700 3100 8700 3000
Wire Wire Line
	8700 3000 8650 3000
Connection ~ 8650 3000
Wire Wire Line
	8650 3000 8650 2950
Wire Wire Line
	8550 2850 8650 2850
Text HLabel 8950 3500 3    50   Input ~ 0
GND
Text HLabel 8700 3100 3    50   Input ~ 0
GND
$Comp
L Device:R R32
U 1 1 5C4C3528
P 8950 3300
F 0 "R32" H 9020 3346 50  0000 L CNN
F 1 "47k" H 9020 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8880 3300 50  0001 C CNN
F 3 "~" H 8950 3300 50  0001 C CNN
	1    8950 3300
	1    0    0    -1  
$EndComp
Text HLabel 8950 2500 1    50   Input ~ 0
+3V3
Wire Wire Line
	8950 3500 8950 3450
Wire Wire Line
	8950 3150 8950 3100
Wire Wire Line
	8950 2650 8950 2500
Text GLabel 9300 3150 3    50   Input ~ 0
Gate_D
Wire Wire Line
	9300 3150 9300 3100
Wire Wire Line
	9300 3100 8950 3100
Connection ~ 8950 3100
Wire Wire Line
	8950 3100 8950 3050
Wire Notes Line
	9500 3750 6250 3750
Text Notes 7350 650  0    98   ~ 0
GATE INPUTS\n
Wire Notes Line
	6250 700  9500 700 
Wire Notes Line
	8850 4100 8850 5600
Wire Notes Line
	5900 4100 5900 5100
$Comp
L Amplifier_Operational:MCP6004 U2
U 1 1 5C51E9FD
P 3550 2000
F 0 "U2" H 3550 2367 50  0000 C CNN
F 1 "MCP6004" H 3550 2276 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 3500 2100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 3600 2200 50  0001 C CNN
	1    3550 2000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6004 U2
U 2 1 5C51EAD0
P 3550 3400
F 0 "U2" H 3550 3767 50  0000 C CNN
F 1 "MCP6004" H 3550 3676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 3500 3500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 3600 3600 50  0001 C CNN
	2    3550 3400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6004 U2
U 3 1 5C51EB75
P 3550 4800
F 0 "U2" H 3550 5167 50  0000 C CNN
F 1 "MCP6004" H 3550 5076 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 3500 4900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 3600 5000 50  0001 C CNN
	3    3550 4800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6004 U2
U 4 1 5C51EC2C
P 3550 6200
F 0 "U2" H 3550 6567 50  0000 C CNN
F 1 "MCP6004" H 3550 6476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 3500 6300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 3600 6400 50  0001 C CNN
	4    3550 6200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6004 U2
U 5 1 5C51ECE5
P 9500 5850
F 0 "U2" H 9458 5896 50  0000 L CNN
F 1 "MCP6004" H 9458 5805 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 9450 5950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 9550 6050 50  0001 C CNN
	5    9500 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C11
U 1 1 5C523884
P 9050 5850
F 0 "C11" H 9165 5896 50  0000 L CNN
F 1 "100n" H 9165 5805 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 9050 5850 50  0001 C CNN
F 3 "~" H 9050 5850 50  0001 C CNN
	1    9050 5850
	1    0    0    -1  
$EndComp
Text HLabel 9400 5500 1    50   Input ~ 0
+3V3
Wire Wire Line
	9050 5700 9050 5550
Wire Wire Line
	9050 5550 9400 5550
Wire Wire Line
	9400 5500 9400 5550
Connection ~ 9400 5550
Wire Wire Line
	9050 6150 9400 6150
Wire Wire Line
	9050 6000 9050 6150
Wire Notes Line
	9500 700  9500 3750
Wire Notes Line
	6250 700  6250 3750
Text HLabel 9400 6200 3    50   Input ~ 0
GND
Wire Wire Line
	9400 6200 9400 6150
Connection ~ 9400 6150
$Comp
L Device:CP1 C13
U 1 1 5C549236
P 7200 8000
F 0 "C13" H 7315 8046 50  0000 L CNN
F 1 "100n" H 7315 7955 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 7200 8000 50  0001 C CNN
F 3 "~" H 7200 8000 50  0001 C CNN
	1    7200 8000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 1 1 5C55640F
P 2350 1900
F 0 "U1" H 2350 2267 50  0000 C CNN
F 1 "TL074" H 2350 2176 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 2300 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2400 2100 50  0001 C CNN
	1    2350 1900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 2 1 5C5596C0
P 2350 3300
F 0 "U1" H 2350 3667 50  0000 C CNN
F 1 "TL074" H 2350 3576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 2300 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2400 3500 50  0001 C CNN
	2    2350 3300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 3 1 5C559775
P 2350 4700
F 0 "U1" H 2350 5067 50  0000 C CNN
F 1 "TL074" H 2350 4976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 2300 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2400 4900 50  0001 C CNN
	3    2350 4700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 4 1 5C55983A
P 2350 6100
F 0 "U1" H 2350 6467 50  0000 C CNN
F 1 "TL074" H 2350 6376 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 2300 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2400 6300 50  0001 C CNN
	4    2350 6100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 5 1 5C55990D
P 9500 4600
F 0 "U1" H 9458 4646 50  0000 L CNN
F 1 "TL074" H 9458 4555 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W8.89mm_SMDSocket_LongPads" H 9450 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9550 4800 50  0001 C CNN
	5    9500 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C12
U 1 1 5C55E1F6
P 9100 4550
F 0 "C12" H 9215 4596 50  0000 L CNN
F 1 "100n" H 9215 4505 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 9100 4550 50  0001 C CNN
F 3 "~" H 9100 4550 50  0001 C CNN
	1    9100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4700 9100 4900
Wire Wire Line
	9100 4900 9400 4900
Wire Wire Line
	9400 4950 9400 4900
Connection ~ 9400 4900
Wire Wire Line
	9100 4400 9100 4250
Wire Wire Line
	9100 4250 9400 4250
Wire Wire Line
	9400 4250 9400 4300
Text HLabel 9400 4200 1    50   Input ~ 0
VCC
Wire Wire Line
	9400 4200 9400 4250
Connection ~ 9400 4250
$Comp
L Connector:AudioJack2_Ground_Switch J1
U 1 1 5C58E384
P 1200 1500
F 0 "J1" H 1204 1842 50  0000 C CNN
F 1 "AudioJack2_Ground_Switch" H 1204 1751 50  0000 C CNN
F 2 "thonkiconn:THONKICONN" H 1200 1500 50  0001 C CNN
F 3 "~" H 1200 1500 50  0001 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C5A2427
P 1800 1400
F 0 "R1" V 1593 1400 50  0000 C CNN
F 1 "100k" V 1684 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1730 1400 50  0001 C CNN
F 3 "~" H 1800 1400 50  0001 C CNN
	1    1800 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5C5A258B
P 2400 1400
F 0 "R5" V 2193 1400 50  0000 C CNN
F 1 "24.9k" V 2284 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2330 1400 50  0001 C CNN
F 3 "~" H 2400 1400 50  0001 C CNN
	1    2400 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 1400 1650 1400
Wire Wire Line
	1950 1400 2000 1400
Wire Wire Line
	2050 1800 2000 1800
Wire Wire Line
	2000 1800 2000 1400
Connection ~ 2000 1400
Wire Wire Line
	2750 1400 2750 1900
Wire Wire Line
	2750 1900 2650 1900
Wire Wire Line
	2550 1400 2750 1400
Wire Wire Line
	2000 1400 2250 1400
Wire Wire Line
	1400 1600 1550 1600
Wire Wire Line
	1550 1600 1550 1550
Wire Wire Line
	1550 1500 1400 1500
$Comp
L Device:R R9
U 1 1 5C5D6F91
P 3000 1900
F 0 "R9" V 2793 1900 50  0000 C CNN
F 1 "24.9k" V 2884 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2930 1900 50  0001 C CNN
F 3 "~" H 3000 1900 50  0001 C CNN
	1    3000 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 1900 2750 1900
Connection ~ 2750 1900
Wire Wire Line
	3150 1900 3200 1900
$Comp
L Device:R R13
U 1 1 5C5E3485
P 3550 1400
F 0 "R13" V 3343 1400 50  0000 C CNN
F 1 "24.9k" V 3434 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3480 1400 50  0001 C CNN
F 3 "~" H 3550 1400 50  0001 C CNN
	1    3550 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 1400 3200 1400
Wire Wire Line
	3200 1400 3200 1900
Connection ~ 3200 1900
Wire Wire Line
	3200 1900 3250 1900
Wire Wire Line
	3700 1400 3950 1400
Wire Wire Line
	3950 1400 3950 2000
Wire Wire Line
	3950 2000 3850 2000
$Comp
L Device:C C1
U 1 1 5C5F4553
P 3550 1050
F 0 "C1" V 3298 1050 50  0000 C CNN
F 1 "1n" V 3389 1050 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3588 900 50  0001 C CNN
F 3 "~" H 3550 1050 50  0001 C CNN
	1    3550 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 1400 3200 1050
Wire Wire Line
	3200 1050 3400 1050
Connection ~ 3200 1400
Wire Wire Line
	3700 1050 3950 1050
Wire Wire Line
	3950 1050 3950 1400
Connection ~ 3950 1400
$Comp
L Connector:AudioJack2_Ground_Switch J2
U 1 1 5C61E128
P 1200 2900
F 0 "J2" H 1204 3242 50  0000 C CNN
F 1 "AudioJack2_Ground_Switch" H 1204 3151 50  0000 C CNN
F 2 "thonkiconn:THONKICONN" H 1200 2900 50  0001 C CNN
F 3 "~" H 1200 2900 50  0001 C CNN
	1    1200 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C61E12F
P 1800 2800
F 0 "R2" V 1593 2800 50  0000 C CNN
F 1 "100k" V 1684 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1730 2800 50  0001 C CNN
F 3 "~" H 1800 2800 50  0001 C CNN
	1    1800 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5C61E136
P 2400 2800
F 0 "R6" V 2193 2800 50  0000 C CNN
F 1 "24.9k" V 2284 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2330 2800 50  0001 C CNN
F 3 "~" H 2400 2800 50  0001 C CNN
	1    2400 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 2800 1650 2800
Wire Wire Line
	1950 2800 2000 2800
Wire Wire Line
	2050 3200 2000 3200
Wire Wire Line
	2000 3200 2000 2800
Connection ~ 2000 2800
Wire Wire Line
	2750 2800 2750 3300
Wire Wire Line
	2550 2800 2750 2800
Wire Wire Line
	2000 2800 2250 2800
Wire Wire Line
	1400 3000 1550 3000
Wire Wire Line
	1550 3000 1550 2950
Wire Wire Line
	1550 2900 1400 2900
$Comp
L Device:R R10
U 1 1 5C61E149
P 3000 3300
F 0 "R10" V 2793 3300 50  0000 C CNN
F 1 "24.9k" V 2884 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2930 3300 50  0001 C CNN
F 3 "~" H 3000 3300 50  0001 C CNN
	1    3000 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 3300 2750 3300
Connection ~ 2750 3300
Wire Wire Line
	3150 3300 3200 3300
$Comp
L Device:R R14
U 1 1 5C61E153
P 3550 2800
F 0 "R14" V 3343 2800 50  0000 C CNN
F 1 "24.9k" V 3434 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3480 2800 50  0001 C CNN
F 3 "~" H 3550 2800 50  0001 C CNN
	1    3550 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 2800 3200 2800
Wire Wire Line
	3200 2800 3200 3300
Connection ~ 3200 3300
Wire Wire Line
	3200 3300 3250 3300
Wire Wire Line
	3700 2800 3950 2800
Wire Wire Line
	3950 2800 3950 3400
Wire Wire Line
	3950 3400 3850 3400
$Comp
L Device:C C2
U 1 1 5C61E161
P 3550 2450
F 0 "C2" V 3298 2450 50  0000 C CNN
F 1 "1n" V 3389 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3588 2300 50  0001 C CNN
F 3 "~" H 3550 2450 50  0001 C CNN
	1    3550 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 2800 3200 2450
Wire Wire Line
	3200 2450 3400 2450
Connection ~ 3200 2800
Wire Wire Line
	3700 2450 3950 2450
Wire Wire Line
	3950 2450 3950 2800
Connection ~ 3950 2800
$Comp
L Connector:AudioJack2_Ground_Switch J3
U 1 1 5C6243A6
P 1200 4300
F 0 "J3" H 1204 4642 50  0000 C CNN
F 1 "AudioJack2_Ground_Switch" H 1204 4551 50  0000 C CNN
F 2 "thonkiconn:THONKICONN" H 1200 4300 50  0001 C CNN
F 3 "~" H 1200 4300 50  0001 C CNN
	1    1200 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C6243AD
P 1800 4200
F 0 "R3" V 1593 4200 50  0000 C CNN
F 1 "100k" V 1684 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1730 4200 50  0001 C CNN
F 3 "~" H 1800 4200 50  0001 C CNN
	1    1800 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5C6243B4
P 2400 4200
F 0 "R7" V 2193 4200 50  0000 C CNN
F 1 "24.9k" V 2284 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2330 4200 50  0001 C CNN
F 3 "~" H 2400 4200 50  0001 C CNN
	1    2400 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 4200 1650 4200
Wire Wire Line
	1950 4200 2000 4200
Wire Wire Line
	2050 4600 2000 4600
Wire Wire Line
	2000 4600 2000 4200
Connection ~ 2000 4200
Wire Wire Line
	2750 4200 2750 4700
Wire Wire Line
	2750 4700 2650 4700
Wire Wire Line
	2550 4200 2750 4200
Wire Wire Line
	2000 4200 2250 4200
Wire Wire Line
	1400 4400 1550 4400
Wire Wire Line
	1550 4400 1550 4350
Wire Wire Line
	1550 4300 1400 4300
$Comp
L Device:R R11
U 1 1 5C6243C7
P 3000 4700
F 0 "R11" V 2793 4700 50  0000 C CNN
F 1 "24.9k" V 2884 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2930 4700 50  0001 C CNN
F 3 "~" H 3000 4700 50  0001 C CNN
	1    3000 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 4700 2750 4700
Connection ~ 2750 4700
Wire Wire Line
	3150 4700 3200 4700
$Comp
L Device:R R15
U 1 1 5C6243D1
P 3550 4200
F 0 "R15" V 3343 4200 50  0000 C CNN
F 1 "24.9k" V 3434 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3480 4200 50  0001 C CNN
F 3 "~" H 3550 4200 50  0001 C CNN
	1    3550 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 4200 3200 4200
Wire Wire Line
	3200 4200 3200 4700
Connection ~ 3200 4700
Wire Wire Line
	3200 4700 3250 4700
Wire Wire Line
	3700 4200 3950 4200
Wire Wire Line
	3950 4200 3950 4800
Wire Wire Line
	3950 4800 3850 4800
$Comp
L Device:C C3
U 1 1 5C6243DF
P 3550 3850
F 0 "C3" V 3298 3850 50  0000 C CNN
F 1 "1n" V 3389 3850 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3588 3700 50  0001 C CNN
F 3 "~" H 3550 3850 50  0001 C CNN
	1    3550 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 4200 3200 3850
Wire Wire Line
	3200 3850 3400 3850
Connection ~ 3200 4200
Wire Wire Line
	3700 3850 3950 3850
Wire Wire Line
	3950 3850 3950 4200
Connection ~ 3950 4200
$Comp
L Connector:AudioJack2_Ground_Switch J4
U 1 1 5C62D12C
P 1200 5700
F 0 "J4" H 1204 6042 50  0000 C CNN
F 1 "AudioJack2_Ground_Switch" H 1204 5951 50  0000 C CNN
F 2 "thonkiconn:THONKICONN" H 1200 5700 50  0001 C CNN
F 3 "~" H 1200 5700 50  0001 C CNN
	1    1200 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C62D133
P 1800 5600
F 0 "R4" V 1593 5600 50  0000 C CNN
F 1 "100k" V 1684 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1730 5600 50  0001 C CNN
F 3 "~" H 1800 5600 50  0001 C CNN
	1    1800 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5C62D13A
P 2400 5600
F 0 "R8" V 2193 5600 50  0000 C CNN
F 1 "24.9k" V 2284 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2330 5600 50  0001 C CNN
F 3 "~" H 2400 5600 50  0001 C CNN
	1    2400 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 5600 1650 5600
Wire Wire Line
	1950 5600 2000 5600
Wire Wire Line
	2050 6000 2000 6000
Wire Wire Line
	2000 6000 2000 5600
Connection ~ 2000 5600
Wire Wire Line
	2750 5600 2750 6100
Wire Wire Line
	2750 6100 2650 6100
Wire Wire Line
	2550 5600 2750 5600
Wire Wire Line
	2000 5600 2250 5600
Wire Wire Line
	1400 5800 1550 5800
Wire Wire Line
	1550 5800 1550 5750
Wire Wire Line
	1550 5700 1400 5700
$Comp
L Device:R R12
U 1 1 5C62D14D
P 3000 6100
F 0 "R12" V 2793 6100 50  0000 C CNN
F 1 "24.9k" V 2884 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2930 6100 50  0001 C CNN
F 3 "~" H 3000 6100 50  0001 C CNN
	1    3000 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 6100 2750 6100
Connection ~ 2750 6100
Wire Wire Line
	3150 6100 3200 6100
$Comp
L Device:R R16
U 1 1 5C62D157
P 3550 5600
F 0 "R16" V 3343 5600 50  0000 C CNN
F 1 "24.9k" V 3434 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3480 5600 50  0001 C CNN
F 3 "~" H 3550 5600 50  0001 C CNN
	1    3550 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 5600 3200 5600
Wire Wire Line
	3200 5600 3200 6100
Connection ~ 3200 6100
Wire Wire Line
	3200 6100 3250 6100
Wire Wire Line
	3700 5600 3950 5600
Wire Wire Line
	3950 5600 3950 6200
Wire Wire Line
	3950 6200 3850 6200
$Comp
L Device:C C4
U 1 1 5C62D165
P 3550 5250
F 0 "C4" V 3298 5250 50  0000 C CNN
F 1 "1n" V 3389 5250 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3588 5100 50  0001 C CNN
F 3 "~" H 3550 5250 50  0001 C CNN
	1    3550 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 5600 3200 5250
Wire Wire Line
	3200 5250 3400 5250
Connection ~ 3200 5600
Wire Wire Line
	3700 5250 3950 5250
Wire Wire Line
	3950 5250 3950 5600
Connection ~ 3950 5600
Wire Wire Line
	2650 3300 2750 3300
Text HLabel 2050 3400 3    50   Input ~ 0
GND
Text HLabel 3250 3500 3    50   Input ~ 0
GND
Text HLabel 2050 2000 3    50   Input ~ 0
GND
Text HLabel 3250 2100 3    50   Input ~ 0
GND
Text HLabel 2050 4800 3    50   Input ~ 0
GND
Text HLabel 3250 4900 3    50   Input ~ 0
GND
Text HLabel 2050 6200 3    50   Input ~ 0
GND
Text HLabel 3250 6300 3    50   Input ~ 0
GND
Text HLabel 1600 1600 3    50   Input ~ 0
GND
Text HLabel 1600 3000 3    50   Input ~ 0
GND
Text HLabel 1600 4400 3    50   Input ~ 0
GND
Text HLabel 1600 5800 3    50   Input ~ 0
GND
Wire Wire Line
	1600 1600 1600 1550
Wire Wire Line
	1600 1550 1550 1550
Connection ~ 1550 1550
Wire Wire Line
	1550 1550 1550 1500
Wire Wire Line
	1600 3000 1600 2950
Wire Wire Line
	1600 2950 1550 2950
Connection ~ 1550 2950
Wire Wire Line
	1550 2950 1550 2900
Wire Wire Line
	1600 4400 1600 4350
Wire Wire Line
	1600 4350 1550 4350
Connection ~ 1550 4350
Wire Wire Line
	1550 4350 1550 4300
Wire Wire Line
	1600 5800 1600 5750
Wire Wire Line
	1600 5750 1550 5750
Connection ~ 1550 5750
Wire Wire Line
	1550 5750 1550 5700
Text GLabel 4050 2000 3    50   Input ~ 0
PITCH_A
Text GLabel 4050 3400 3    50   Input ~ 0
PITCH_B
Text GLabel 4050 4800 3    50   Input ~ 0
PITCH_C
Text GLabel 4050 6200 3    50   Input ~ 0
PITCH_D
Wire Wire Line
	4050 6200 3950 6200
Connection ~ 3950 6200
Wire Wire Line
	4050 4800 3950 4800
Connection ~ 3950 4800
Wire Wire Line
	4050 3400 3950 3400
Connection ~ 3950 3400
Wire Wire Line
	4050 2000 3950 2000
Connection ~ 3950 2000
Wire Notes Line
	650  700  4150 700 
Wire Notes Line
	650  700  650  6550
Wire Notes Line
	650  6600 4150 6600
Wire Notes Line
	4150 700  4150 6600
Text Notes 1800 650  0    98   ~ 0
CV INPUTS
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5C9C82CB
P 4950 4550
F 0 "J5" H 4977 4526 50  0000 L CNN
F 1 "Conn_01x04_Female" H 4977 4435 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4950 4550 50  0001 C CNN
F 3 "~" H 4950 4550 50  0001 C CNN
	1    4950 4550
	1    0    0    -1  
$EndComp
Text HLabel 4650 4450 1    50   Input ~ 0
+3V3
Text HLabel 4550 4550 1    50   Input ~ 0
GND
Text GLabel 4450 4650 1    50   Input ~ 0
SCL_Display
Text GLabel 4350 4750 1    50   Input ~ 0
SDA_Display
Wire Wire Line
	4650 4450 4750 4450
Wire Wire Line
	4550 4550 4750 4550
Wire Wire Line
	4450 4650 4750 4650
Wire Wire Line
	4350 4750 4750 4750
Wire Notes Line
	4250 4100 4250 4800
Wire Notes Line
	4250 4800 5800 4800
Wire Notes Line
	5800 4800 5800 4100
Wire Notes Line
	5800 4100 4250 4100
Text Notes 4750 4050 0    98   ~ 0
DISPLAY\n
$Comp
L Connector_Generic:Conn_02x10_Counter_Clockwise J10
U 1 1 5CB24E14
P 7550 6400
F 0 "J10" H 7600 7017 50  0000 C CNN
F 1 "Conn_02x10_Counter_Clockwise" H 7600 6926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 7550 6400 50  0001 C CNN
F 3 "~" H 7550 6400 50  0001 C CNN
	1    7550 6400
	1    0    0    -1  
$EndComp
Text HLabel 9400 4950 3    50   Input ~ 0
VEE
Text GLabel 7350 6100 0    50   Input ~ 0
Gate_A
Text GLabel 7350 6200 0    50   Input ~ 0
Gate_B
Text GLabel 7350 6300 0    50   Input ~ 0
Gate_C
Text GLabel 7350 6400 0    50   Input ~ 0
Gate_D
Text GLabel 7350 6500 0    50   Input ~ 0
PITCH_A
Text GLabel 7350 6600 0    50   Input ~ 0
PITCH_B
Text GLabel 7350 6700 0    50   Input ~ 0
PITCH_C
Text GLabel 7350 6800 0    50   Input ~ 0
PITCH_D
Text HLabel 7350 6000 0    50   Input ~ 0
+3V3
Text HLabel 7850 6000 2    50   Input ~ 0
VCC
Text HLabel 7350 6900 0    50   Input ~ 0
VEE
Text HLabel 7850 6900 2    50   Input ~ 0
GND
Text GLabel 7850 6200 2    50   Input ~ 0
Enc_B
Text GLabel 7850 6100 2    50   Input ~ 0
Enc_A
Text GLabel 7850 6300 2    50   Input ~ 0
Enc_SW
Text GLabel 7850 6400 2    50   Input ~ 0
Midi_Play_Pause
Text GLabel 7850 6500 2    50   Input ~ 0
Midi_Stop
Text GLabel 7850 6600 2    50   Input ~ 0
Midi_loop
Text GLabel 7850 6700 2    50   Input ~ 0
SCL_Display
Text GLabel 7850 6800 2    50   Input ~ 0
SDA_Display
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J11
U 1 1 5C55666F
P 1050 7750
F 0 "J11" H 1100 8467 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 1100 8376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 1050 7750 50  0001 C CNN
F 3 "~" H 1050 7750 50  0001 C CNN
	1    1050 7750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J12
U 1 1 5C556836
P 2200 7750
F 0 "J12" H 2250 8467 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 2250 8376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 2200 7750 50  0001 C CNN
F 3 "~" H 2200 7750 50  0001 C CNN
	1    2200 7750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J13
U 1 1 5C5675FE
P 2950 7750
F 0 "J13" H 3000 8467 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 3000 8376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 2950 7750 50  0001 C CNN
F 3 "~" H 2950 7750 50  0001 C CNN
	1    2950 7750
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J14
U 1 1 5C5783B1
P 3700 7750
F 0 "J14" H 3750 8467 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 3750 8376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 3700 7750 50  0001 C CNN
F 3 "~" H 3700 7750 50  0001 C CNN
	1    3700 7750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J15
U 1 1 5C589179
P 4600 7750
F 0 "J15" H 4650 8467 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 4650 8376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 4600 7750 50  0001 C CNN
F 3 "~" H 4600 7750 50  0001 C CNN
	1    4600 7750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J16
U 1 1 5C599F40
P 5500 7750
F 0 "J16" H 5550 8467 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 5550 8376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 5500 7750 50  0001 C CNN
F 3 "~" H 5500 7750 50  0001 C CNN
	1    5500 7750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J17
U 1 1 5C5AAD02
P 1650 7750
F 0 "J17" H 1700 8467 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 1700 8376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 1650 7750 50  0001 C CNN
F 3 "~" H 1650 7750 50  0001 C CNN
	1    1650 7750
	-1   0    0    -1  
$EndComp
Wire Notes Line
	6950 6900 650  6900
Text Notes 3050 6800 0    98   ~ 0
OCTAVE TEMINALS
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J18
U 1 1 5C67A622
P 1100 9200
F 0 "J18" H 1150 9917 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 1150 9826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 1100 9200 50  0001 C CNN
F 3 "~" H 1100 9200 50  0001 C CNN
	1    1100 9200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J19
U 1 1 5C67A629
P 1950 9200
F 0 "J19" H 2000 9917 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 2000 9826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 1950 9200 50  0001 C CNN
F 3 "~" H 1950 9200 50  0001 C CNN
	1    1950 9200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J20
U 1 1 5C67A630
P 2850 9200
F 0 "J20" H 2900 9917 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 2900 9826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 2850 9200 50  0001 C CNN
F 3 "~" H 2850 9200 50  0001 C CNN
	1    2850 9200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J21
U 1 1 5C67A637
P 3750 9200
F 0 "J21" H 3800 9917 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 3800 9826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 3750 9200 50  0001 C CNN
F 3 "~" H 3750 9200 50  0001 C CNN
	1    3750 9200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J22
U 1 1 5C67A63E
P 4650 9200
F 0 "J22" H 4700 9917 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 4700 9826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 4650 9200 50  0001 C CNN
F 3 "~" H 4650 9200 50  0001 C CNN
	1    4650 9200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J23
U 1 1 5C67A645
P 5550 9200
F 0 "J23" H 5600 9917 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 5600 9826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 5550 9200 50  0001 C CNN
F 3 "~" H 5550 9200 50  0001 C CNN
	1    5550 9200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J24
U 1 1 5C67A64C
P 6450 9200
F 0 "J24" H 6500 9917 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 6500 9826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 6450 9200 50  0001 C CNN
F 3 "~" H 6450 9200 50  0001 C CNN
	1    6450 9200
	1    0    0    -1  
$EndComp
Wire Notes Line
	650  9950 6950 9950
Wire Notes Line
	650  6900 650  9950
Wire Notes Line
	6950 6900 6950 9950
Wire Wire Line
	7200 7500 7200 7850
Wire Wire Line
	7200 8150 7200 8500
Wire Wire Line
	1850 7250 1850 7200
Wire Wire Line
	1850 7200 850  7200
Wire Wire Line
	850  7200 850  7250
Wire Wire Line
	1850 7350 1850 7300
Wire Wire Line
	1850 7300 850  7300
Wire Wire Line
	850  7300 850  7350
Wire Wire Line
	1850 7450 1850 7400
Wire Wire Line
	1850 7400 850  7400
Wire Wire Line
	850  7400 850  7450
Wire Wire Line
	1850 7550 1850 7500
Wire Wire Line
	1850 7500 850  7500
Wire Wire Line
	850  7500 850  7550
Wire Wire Line
	1850 7650 1850 7600
Wire Wire Line
	1850 7600 850  7600
Wire Wire Line
	850  7600 850  7650
Wire Wire Line
	1850 7750 1850 7700
Wire Wire Line
	1850 7700 850  7700
Wire Wire Line
	850  7700 850  7750
Wire Wire Line
	1850 7850 1850 7800
Wire Wire Line
	1850 7800 850  7800
Wire Wire Line
	850  7800 850  7850
Wire Wire Line
	1850 7950 1850 7900
Wire Wire Line
	1850 7900 850  7900
Wire Wire Line
	850  7900 850  7950
Wire Wire Line
	1850 8050 1850 8000
Wire Wire Line
	1850 8000 850  8000
Wire Wire Line
	850  8000 850  8050
Wire Wire Line
	1850 8150 1850 8100
Wire Wire Line
	1850 8100 850  8100
Wire Wire Line
	850  8100 850  8150
Wire Wire Line
	1850 8250 1850 8200
Wire Wire Line
	1850 8200 850  8200
Wire Wire Line
	850  8200 850  8250
Wire Wire Line
	1850 8350 1850 8300
Wire Wire Line
	1850 8300 850  8300
Wire Wire Line
	850  8300 850  8350
Wire Wire Line
	2500 7250 2650 7250
Wire Wire Line
	3150 7250 3150 7200
Wire Wire Line
	3150 7200 2000 7200
Wire Wire Line
	2000 7200 2000 7250
Wire Wire Line
	2500 7350 2650 7350
Wire Wire Line
	2000 7350 2000 7300
Wire Wire Line
	2000 7300 3150 7300
Wire Wire Line
	3150 7300 3150 7350
Wire Wire Line
	3150 7450 3150 7400
Wire Wire Line
	3150 7400 2000 7400
Wire Wire Line
	2000 7400 2000 7450
Wire Wire Line
	2500 7450 2650 7450
Wire Wire Line
	3150 7550 3150 7500
Wire Wire Line
	3150 7500 2000 7500
Wire Wire Line
	2000 7500 2000 7550
Wire Wire Line
	2650 7550 2500 7550
Wire Wire Line
	2000 7650 2000 7600
Wire Wire Line
	2000 7600 3150 7600
Wire Wire Line
	3150 7600 3150 7650
Wire Wire Line
	3150 7750 3150 7700
Wire Wire Line
	3150 7700 2000 7700
Wire Wire Line
	2000 7700 2000 7750
Wire Wire Line
	2000 7850 2000 7800
Wire Wire Line
	2000 7800 3150 7800
Wire Wire Line
	3150 7800 3150 7850
Wire Wire Line
	2650 7850 2500 7850
Wire Wire Line
	2500 7750 2650 7750
Wire Wire Line
	2650 7650 2500 7650
Wire Wire Line
	3150 7950 3150 7900
Wire Wire Line
	3150 7900 2000 7900
Wire Wire Line
	2000 7900 2000 7950
Wire Wire Line
	2500 7950 2650 7950
Wire Wire Line
	2000 8050 2000 8000
Wire Wire Line
	2000 8000 3150 8000
Wire Wire Line
	3150 8000 3150 8050
Wire Wire Line
	2650 8050 2500 8050
Wire Wire Line
	2000 8150 2000 8100
Wire Wire Line
	2000 8100 3150 8100
Wire Wire Line
	3150 8100 3150 8150
Wire Wire Line
	2650 8150 2500 8150
Wire Wire Line
	2000 8250 2000 8200
Wire Wire Line
	2000 8200 3150 8200
Wire Wire Line
	3150 8200 3150 8250
Wire Wire Line
	2650 8250 2500 8250
Wire Wire Line
	2000 8350 2000 8300
Wire Wire Line
	2000 8300 3150 8300
Wire Wire Line
	3150 8300 3150 8350
Wire Wire Line
	2650 8350 2500 8350
$EndSCHEMATC
