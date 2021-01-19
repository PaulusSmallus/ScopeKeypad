EESchema Schematic File Version 4
EELAYER 30 0
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
Text Notes 4400 1600 0    50   ~ 0
14 switches\n6 dials+switch\n18 LEDs\n--------\n20 normal GPIO\n12 interrupt GPIO\n1 led data out\n--------\n8 encoders\n17 buttons\n1 led strip\nusb\n1 spare
$Comp
L Device:Rotary_Encoder_Switch SW20
U 1 1 5F73377F
P 8300 1350
F 0 "SW20" H 8300 1717 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 8300 1626 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 8200 1510 50  0001 C CNN
F 3 "~" H 8300 1610 50  0001 C CNN
	1    8300 1350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F734BDF
P 6000 900
F 0 "SW1" H 6000 1185 50  0000 C CNN
F 1 "SW_Push" H 6000 1094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 1100 50  0001 C CNN
F 3 "" H 6000 1100 50  0001 C CNN
	1    6000 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW18
U 1 1 5F74A628
P 8250 3100
F 0 "SW18" H 8250 3467 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 8250 3376 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 8150 3260 50  0001 C CNN
F 3 "~" H 8250 3360 50  0001 C CNN
	1    8250 3100
	1    0    0    -1  
$EndComp
$Comp
L scope_user_interface-rescue:bluepill-pauls_comp_lib U1
U 1 1 5F757D31
P 3200 2000
F 0 "U1" H 3600 900 100 0000 C CNN
F 1 "bluepill" H 3200 2000 100 0000 C CNN
F 2 "footprints:DIP-40_15.24_generic" H 3300 1650 100 0001 C CNN
F 3 "" H 3400 1500 100 0001 C CNN
	1    3200 2000
	1    0    0    -1  
$EndComp
Text Label 2600 2100 2    50   ~ 0
led
NoConn ~ 3800 1250
NoConn ~ 3800 1350
Text Label 2600 1400 2    50   ~ 0
encoder1a
Text Label 2600 1500 2    50   ~ 0
encoder1b
Text Label 2600 1600 2    50   ~ 0
encoder2a
Text Label 2600 1700 2    50   ~ 0
encoder2b
Text Label 2600 1800 2    50   ~ 0
encoder3a
Text Label 3800 2600 0    50   ~ 0
encoder3b
Text Label 2600 2000 2    50   ~ 0
encoder4a
Text Label 3800 2500 0    50   ~ 0
encoder4b
Text Label 2600 2200 2    50   ~ 0
encoder5a
Text Label 2600 2300 2    50   ~ 0
encoder5b
Text Label 2600 2400 2    50   ~ 0
encoder6a
Text Label 2600 2700 2    50   ~ 0
encoder6b
Text Label 2600 2500 2    50   ~ 0
USB_N
Text Label 2600 2600 2    50   ~ 0
USB_P
$Comp
L power:GND #PWR0101
U 1 1 5F759DA8
P 3200 3300
F 0 "#PWR0101" H 3200 3050 50  0001 C CNN
F 1 "GND" H 3205 3127 50  0000 C CNN
F 2 "" H 3200 3300 50  0001 C CNN
F 3 "" H 3200 3300 50  0001 C CNN
	1    3200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3100 3100 3200
Wire Wire Line
	3100 3200 3200 3200
Wire Wire Line
	3300 3200 3300 3100
Wire Wire Line
	3200 3100 3200 3200
Connection ~ 3200 3200
Wire Wire Line
	3200 3200 3300 3200
Wire Wire Line
	3200 3200 3200 3300
$Comp
L power:+5V #PWR0102
U 1 1 5F75A9EA
P 3000 800
F 0 "#PWR0102" H 3000 650 50  0001 C CNN
F 1 "+5V" H 3015 973 50  0000 C CNN
F 2 "" H 3000 800 50  0001 C CNN
F 3 "" H 3000 800 50  0001 C CNN
	1    3000 800 
	1    0    0    -1  
$EndComp
NoConn ~ 2600 1150
Text Label 3800 1500 0    50   ~ 0
H0
Text Label 3800 1600 0    50   ~ 0
H1
Text Label 3800 1700 0    50   ~ 0
H2
Text Label 3800 1800 0    50   ~ 0
H3
Text Label 3800 1900 0    50   ~ 0
H4
Text Label 3800 2000 0    50   ~ 0
V0
Text Label 3800 2100 0    50   ~ 0
V1
Text Label 3800 2200 0    50   ~ 0
V2
Text Label 3800 2300 0    50   ~ 0
V3
Text Label 3800 2400 0    50   ~ 0
V4
Wire Notes Line
	3900 1400 4000 1400
Wire Notes Line
	4000 1400 4000 2400
Wire Notes Line
	4000 2400 3900 2400
Text Notes 4100 1550 3    50   ~ 0
key switch array
Text Label 7650 1250 2    50   ~ 0
encoder1a
Text Label 7650 1450 2    50   ~ 0
encoder1b
$Comp
L power:GND #PWR0103
U 1 1 5F75CCE3
P 7950 1350
F 0 "#PWR0103" H 7950 1100 50  0001 C CNN
F 1 "GND" V 7955 1222 50  0000 R CNN
F 2 "" H 7950 1350 50  0001 C CNN
F 3 "" H 7950 1350 50  0001 C CNN
	1    7950 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 1350 8000 1350
$Comp
L Device:R R9
U 1 1 5F75E805
P 7200 1050
F 0 "R9" H 7270 1096 50  0000 L CNN
F 1 "10k" H 7270 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7130 1050 50  0001 C CNN
F 3 "" H 7200 1050 50  0001 C CNN
	1    7200 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F75EBBB
P 6950 1050
F 0 "R6" H 7020 1096 50  0000 L CNN
F 1 "10k" H 7020 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6880 1050 50  0001 C CNN
F 3 "" H 6950 1050 50  0001 C CNN
	1    6950 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5F75F005
P 3350 800
F 0 "#PWR0104" H 3350 650 50  0001 C CNN
F 1 "+3V3" H 3365 973 50  0000 C CNN
F 2 "" H 3350 800 50  0001 C CNN
F 3 "" H 3350 800 50  0001 C CNN
	1    3350 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 900  3300 850 
Wire Wire Line
	3300 850  3350 850 
Wire Wire Line
	3400 850  3400 900 
Wire Wire Line
	3350 850  3350 800 
Connection ~ 3350 850 
Wire Wire Line
	3350 850  3400 850 
Wire Wire Line
	3000 800  3000 900 
Wire Wire Line
	6950 1200 6950 1450
Wire Wire Line
	6950 1450 7650 1450
Wire Wire Line
	7650 1250 7200 1250
Wire Wire Line
	7200 1250 7200 1200
Wire Wire Line
	6950 900  6950 850 
Wire Wire Line
	6950 850  7050 850 
Wire Wire Line
	7200 850  7200 900 
Wire Wire Line
	7050 850  7050 800 
Connection ~ 7050 850 
Wire Wire Line
	7050 850  7200 850 
$Comp
L power:+3V3 #PWR0105
U 1 1 5F761D65
P 7050 800
F 0 "#PWR0105" H 7050 650 50  0001 C CNN
F 1 "+3V3" H 7065 973 50  0000 C CNN
F 2 "" H 7050 800 50  0001 C CNN
F 3 "" H 7050 800 50  0001 C CNN
	1    7050 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F7639BE
P 6950 1650
F 0 "C1" H 6950 1750 50  0000 L CNN
F 1 "1nF" H 6950 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6988 1500 50  0001 C CNN
F 3 "" H 6950 1650 50  0001 C CNN
	1    6950 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F764055
P 7200 1650
F 0 "C4" H 7200 1750 50  0000 L CNN
F 1 "1nF" H 7200 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7238 1500 50  0001 C CNN
F 3 "" H 7200 1650 50  0001 C CNN
	1    7200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1500 6950 1450
Connection ~ 6950 1450
Wire Wire Line
	7200 1500 7200 1250
Connection ~ 7200 1250
$Comp
L Device:R R12
U 1 1 5F76515F
P 7800 1250
F 0 "R12" V 7700 1250 50  0000 C CNN
F 1 "100R" V 7800 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 1250 50  0001 C CNN
F 3 "" H 7800 1250 50  0001 C CNN
	1    7800 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5F7669D0
P 7800 1450
F 0 "R13" V 7900 1450 50  0000 C CNN
F 1 "100R" V 7800 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 1450 50  0001 C CNN
F 3 "" H 7800 1450 50  0001 C CNN
	1    7800 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 1800 6950 1850
Wire Wire Line
	6950 1850 7050 1850
Wire Wire Line
	7200 1850 7200 1800
$Comp
L power:GND #PWR0106
U 1 1 5F768968
P 7050 1900
F 0 "#PWR0106" H 7050 1650 50  0001 C CNN
F 1 "GND" V 7055 1772 50  0000 R CNN
F 2 "" H 7050 1900 50  0001 C CNN
F 3 "" H 7050 1900 50  0001 C CNN
	1    7050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1900 7050 1850
Connection ~ 7050 1850
Wire Wire Line
	7050 1850 7200 1850
Wire Wire Line
	7950 1250 8000 1250
Wire Wire Line
	7950 1450 8000 1450
Text Label 7650 3000 2    50   ~ 0
encoder2a
Text Label 7650 3200 2    50   ~ 0
encoder2b
$Comp
L Device:R R10
U 1 1 5F772DCF
P 7200 2800
F 0 "R10" H 7270 2846 50  0000 L CNN
F 1 "10k" H 7270 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7130 2800 50  0001 C CNN
F 3 "" H 7200 2800 50  0001 C CNN
	1    7200 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F772DD5
P 6950 2800
F 0 "R7" H 7020 2846 50  0000 L CNN
F 1 "10k" H 7020 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6880 2800 50  0001 C CNN
F 3 "" H 6950 2800 50  0001 C CNN
	1    6950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2950 6950 3200
Wire Wire Line
	6950 3200 7650 3200
Wire Wire Line
	7650 3000 7200 3000
Wire Wire Line
	7200 3000 7200 2950
Wire Wire Line
	6950 2650 6950 2600
Wire Wire Line
	6950 2600 7050 2600
Wire Wire Line
	7200 2600 7200 2650
Wire Wire Line
	7050 2600 7050 2550
Connection ~ 7050 2600
Wire Wire Line
	7050 2600 7200 2600
$Comp
L power:+3V3 #PWR0107
U 1 1 5F772DE5
P 7050 2550
F 0 "#PWR0107" H 7050 2400 50  0001 C CNN
F 1 "+3V3" H 7065 2723 50  0000 C CNN
F 2 "" H 7050 2550 50  0001 C CNN
F 3 "" H 7050 2550 50  0001 C CNN
	1    7050 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F772DEB
P 6950 3400
F 0 "C2" H 6950 3500 50  0000 L CNN
F 1 "1nF" H 6950 3300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6988 3250 50  0001 C CNN
F 3 "" H 6950 3400 50  0001 C CNN
	1    6950 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F772DF1
P 7200 3400
F 0 "C5" H 7200 3500 50  0000 L CNN
F 1 "1nF" H 7200 3300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7238 3250 50  0001 C CNN
F 3 "" H 7200 3400 50  0001 C CNN
	1    7200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3250 6950 3200
Connection ~ 6950 3200
Wire Wire Line
	7200 3250 7200 3000
Connection ~ 7200 3000
$Comp
L Device:R R14
U 1 1 5F772DFB
P 7800 3000
F 0 "R14" V 7700 3000 50  0000 C CNN
F 1 "100R" V 7800 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 3000 50  0001 C CNN
F 3 "" H 7800 3000 50  0001 C CNN
	1    7800 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5F772E01
P 7800 3200
F 0 "R15" V 7900 3200 50  0000 C CNN
F 1 "100R" V 7800 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 3200 50  0001 C CNN
F 3 "" H 7800 3200 50  0001 C CNN
	1    7800 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 3550 6950 3600
Wire Wire Line
	6950 3600 7050 3600
Wire Wire Line
	7200 3600 7200 3550
$Comp
L power:GND #PWR0108
U 1 1 5F772E0A
P 7050 3650
F 0 "#PWR0108" H 7050 3400 50  0001 C CNN
F 1 "GND" V 7055 3522 50  0000 R CNN
F 2 "" H 7050 3650 50  0001 C CNN
F 3 "" H 7050 3650 50  0001 C CNN
	1    7050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3650 7050 3600
Connection ~ 7050 3600
Wire Wire Line
	7050 3600 7200 3600
$Comp
L Device:Rotary_Encoder_Switch SW19
U 1 1 5F77A716
P 8250 4900
F 0 "SW19" H 8250 5267 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 8250 5176 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 8150 5060 50  0001 C CNN
F 3 "~" H 8250 5160 50  0001 C CNN
	1    8250 4900
	1    0    0    -1  
$EndComp
Text Label 7650 4800 2    50   ~ 0
encoder3a
Text Label 7650 5000 2    50   ~ 0
encoder3b
$Comp
L Device:R R11
U 1 1 5F77A71E
P 7200 4600
F 0 "R11" H 7270 4646 50  0000 L CNN
F 1 "10k" H 7270 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7130 4600 50  0001 C CNN
F 3 "" H 7200 4600 50  0001 C CNN
	1    7200 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F77A724
P 6950 4600
F 0 "R8" H 7020 4646 50  0000 L CNN
F 1 "10k" H 7020 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6880 4600 50  0001 C CNN
F 3 "" H 6950 4600 50  0001 C CNN
	1    6950 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4750 6950 5000
Wire Wire Line
	6950 5000 7650 5000
Wire Wire Line
	7650 4800 7200 4800
Wire Wire Line
	7200 4800 7200 4750
Wire Wire Line
	6950 4450 6950 4400
Wire Wire Line
	6950 4400 7050 4400
Wire Wire Line
	7200 4400 7200 4450
Wire Wire Line
	7050 4400 7050 4350
Connection ~ 7050 4400
Wire Wire Line
	7050 4400 7200 4400
$Comp
L power:+3V3 #PWR0109
U 1 1 5F77A734
P 7050 4350
F 0 "#PWR0109" H 7050 4200 50  0001 C CNN
F 1 "+3V3" H 7065 4523 50  0000 C CNN
F 2 "" H 7050 4350 50  0001 C CNN
F 3 "" H 7050 4350 50  0001 C CNN
	1    7050 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5F77A73A
P 6950 5200
F 0 "C3" H 6950 5300 50  0000 L CNN
F 1 "1nF" H 6950 5100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6988 5050 50  0001 C CNN
F 3 "" H 6950 5200 50  0001 C CNN
	1    6950 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F77A740
P 7200 5200
F 0 "C6" H 7200 5300 50  0000 L CNN
F 1 "1nF" H 7200 5100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7238 5050 50  0001 C CNN
F 3 "" H 7200 5200 50  0001 C CNN
	1    7200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5050 6950 5000
Connection ~ 6950 5000
Wire Wire Line
	7200 5050 7200 4800
Connection ~ 7200 4800
$Comp
L Device:R R16
U 1 1 5F77A74A
P 7800 4800
F 0 "R16" V 7700 4800 50  0000 C CNN
F 1 "100R" V 7800 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 4800 50  0001 C CNN
F 3 "" H 7800 4800 50  0001 C CNN
	1    7800 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5F77A750
P 7800 5000
F 0 "R17" V 7900 5000 50  0000 C CNN
F 1 "100R" V 7800 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 5000 50  0001 C CNN
F 3 "" H 7800 5000 50  0001 C CNN
	1    7800 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 5350 6950 5400
Wire Wire Line
	6950 5400 7050 5400
Wire Wire Line
	7200 5400 7200 5350
$Comp
L power:GND #PWR0110
U 1 1 5F77A759
P 7050 5450
F 0 "#PWR0110" H 7050 5200 50  0001 C CNN
F 1 "GND" V 7055 5322 50  0000 R CNN
F 2 "" H 7050 5450 50  0001 C CNN
F 3 "" H 7050 5450 50  0001 C CNN
	1    7050 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5450 7050 5400
Connection ~ 7050 5400
Wire Wire Line
	7050 5400 7200 5400
$Comp
L Device:Rotary_Encoder_Switch SW23
U 1 1 5F787628
P 10550 1300
F 0 "SW23" H 10550 1667 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 10550 1576 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 10450 1460 50  0001 C CNN
F 3 "~" H 10550 1560 50  0001 C CNN
	1    10550 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW21
U 1 1 5F78762E
P 10500 3050
F 0 "SW21" H 10500 3417 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 10500 3326 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 10400 3210 50  0001 C CNN
F 3 "~" H 10500 3310 50  0001 C CNN
	1    10500 3050
	1    0    0    -1  
$EndComp
Text Label 9900 1200 2    50   ~ 0
encoder4a
Text Label 9900 1400 2    50   ~ 0
encoder4b
$Comp
L power:GND #PWR0111
U 1 1 5F787636
P 10200 1300
F 0 "#PWR0111" H 10200 1050 50  0001 C CNN
F 1 "GND" V 10205 1172 50  0000 R CNN
F 2 "" H 10200 1300 50  0001 C CNN
F 3 "" H 10200 1300 50  0001 C CNN
	1    10200 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 1300 10250 1300
$Comp
L Device:R R21
U 1 1 5F78763D
P 9450 1000
F 0 "R21" H 9520 1046 50  0000 L CNN
F 1 "10k" H 9520 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9380 1000 50  0001 C CNN
F 3 "" H 9450 1000 50  0001 C CNN
	1    9450 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5F787643
P 9200 1000
F 0 "R18" H 9270 1046 50  0000 L CNN
F 1 "10k" H 9270 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9130 1000 50  0001 C CNN
F 3 "" H 9200 1000 50  0001 C CNN
	1    9200 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1150 9200 1400
Wire Wire Line
	9200 1400 9900 1400
Wire Wire Line
	9900 1200 9450 1200
Wire Wire Line
	9450 1200 9450 1150
Wire Wire Line
	9200 850  9200 800 
Wire Wire Line
	9200 800  9300 800 
Wire Wire Line
	9450 800  9450 850 
Wire Wire Line
	9300 800  9300 750 
Connection ~ 9300 800 
Wire Wire Line
	9300 800  9450 800 
$Comp
L power:+3V3 #PWR0112
U 1 1 5F787653
P 9300 750
F 0 "#PWR0112" H 9300 600 50  0001 C CNN
F 1 "+3V3" H 9315 923 50  0000 C CNN
F 2 "" H 9300 750 50  0001 C CNN
F 3 "" H 9300 750 50  0001 C CNN
	1    9300 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F787659
P 9200 1600
F 0 "C7" H 9200 1700 50  0000 L CNN
F 1 "1nF" H 9200 1500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9238 1450 50  0001 C CNN
F 3 "" H 9200 1600 50  0001 C CNN
	1    9200 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5F78765F
P 9450 1600
F 0 "C10" H 9450 1700 50  0000 L CNN
F 1 "1nF" H 9450 1500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9488 1450 50  0001 C CNN
F 3 "" H 9450 1600 50  0001 C CNN
	1    9450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1450 9200 1400
Connection ~ 9200 1400
Wire Wire Line
	9450 1450 9450 1200
Connection ~ 9450 1200
$Comp
L Device:R R24
U 1 1 5F787669
P 10050 1200
F 0 "R24" V 9950 1200 50  0000 C CNN
F 1 "100R" V 10050 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9980 1200 50  0001 C CNN
F 3 "" H 10050 1200 50  0001 C CNN
	1    10050 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 5F78766F
P 10050 1400
F 0 "R25" V 10150 1400 50  0000 C CNN
F 1 "100R" V 10050 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9980 1400 50  0001 C CNN
F 3 "" H 10050 1400 50  0001 C CNN
	1    10050 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 1750 9200 1800
Wire Wire Line
	9200 1800 9300 1800
Wire Wire Line
	9450 1800 9450 1750
$Comp
L power:GND #PWR0113
U 1 1 5F787678
P 9300 1850
F 0 "#PWR0113" H 9300 1600 50  0001 C CNN
F 1 "GND" V 9305 1722 50  0000 R CNN
F 2 "" H 9300 1850 50  0001 C CNN
F 3 "" H 9300 1850 50  0001 C CNN
	1    9300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1850 9300 1800
Connection ~ 9300 1800
Wire Wire Line
	9300 1800 9450 1800
Wire Wire Line
	10200 1200 10250 1200
Wire Wire Line
	10200 1400 10250 1400
Text Label 9900 2950 2    50   ~ 0
encoder5a
Text Label 9900 3150 2    50   ~ 0
encoder5b
$Comp
L Device:R R22
U 1 1 5F787685
P 9450 2750
F 0 "R22" H 9520 2796 50  0000 L CNN
F 1 "10k" H 9520 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9380 2750 50  0001 C CNN
F 3 "" H 9450 2750 50  0001 C CNN
	1    9450 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5F78768B
P 9200 2750
F 0 "R19" H 9270 2796 50  0000 L CNN
F 1 "10k" H 9270 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9130 2750 50  0001 C CNN
F 3 "" H 9200 2750 50  0001 C CNN
	1    9200 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2900 9200 3150
Wire Wire Line
	9200 3150 9900 3150
Wire Wire Line
	9900 2950 9450 2950
Wire Wire Line
	9450 2950 9450 2900
Wire Wire Line
	9200 2600 9200 2550
Wire Wire Line
	9200 2550 9300 2550
Wire Wire Line
	9450 2550 9450 2600
Wire Wire Line
	9300 2550 9300 2500
Connection ~ 9300 2550
Wire Wire Line
	9300 2550 9450 2550
$Comp
L power:+3V3 #PWR0114
U 1 1 5F78769B
P 9300 2500
F 0 "#PWR0114" H 9300 2350 50  0001 C CNN
F 1 "+3V3" H 9315 2673 50  0000 C CNN
F 2 "" H 9300 2500 50  0001 C CNN
F 3 "" H 9300 2500 50  0001 C CNN
	1    9300 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F7876A1
P 9200 3350
F 0 "C8" H 9200 3450 50  0000 L CNN
F 1 "1nF" H 9200 3250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9238 3200 50  0001 C CNN
F 3 "" H 9200 3350 50  0001 C CNN
	1    9200 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F7876A7
P 9450 3350
F 0 "C11" H 9450 3450 50  0000 L CNN
F 1 "1nF" H 9450 3250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9488 3200 50  0001 C CNN
F 3 "" H 9450 3350 50  0001 C CNN
	1    9450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3200 9200 3150
Connection ~ 9200 3150
Wire Wire Line
	9450 3200 9450 2950
Connection ~ 9450 2950
$Comp
L Device:R R26
U 1 1 5F7876B1
P 10050 2950
F 0 "R26" V 9950 2950 50  0000 C CNN
F 1 "100R" V 10050 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9980 2950 50  0001 C CNN
F 3 "" H 10050 2950 50  0001 C CNN
	1    10050 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 5F7876B7
P 10050 3150
F 0 "R27" V 10150 3150 50  0000 C CNN
F 1 "100R" V 10050 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9980 3150 50  0001 C CNN
F 3 "" H 10050 3150 50  0001 C CNN
	1    10050 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 3500 9200 3550
Wire Wire Line
	9200 3550 9300 3550
Wire Wire Line
	9450 3550 9450 3500
$Comp
L power:GND #PWR0115
U 1 1 5F7876C0
P 9300 3600
F 0 "#PWR0115" H 9300 3350 50  0001 C CNN
F 1 "GND" V 9305 3472 50  0000 R CNN
F 2 "" H 9300 3600 50  0001 C CNN
F 3 "" H 9300 3600 50  0001 C CNN
	1    9300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3600 9300 3550
Connection ~ 9300 3550
Wire Wire Line
	9300 3550 9450 3550
$Comp
L Device:Rotary_Encoder_Switch SW22
U 1 1 5F7876C9
P 10500 4850
F 0 "SW22" H 10500 5217 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 10500 5126 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 10400 5010 50  0001 C CNN
F 3 "~" H 10500 5110 50  0001 C CNN
	1    10500 4850
	1    0    0    -1  
$EndComp
Text Label 9900 4750 2    50   ~ 0
encoder6a
Text Label 9900 4950 2    50   ~ 0
encoder6b
$Comp
L Device:R R23
U 1 1 5F7876D1
P 9450 4550
F 0 "R23" H 9520 4596 50  0000 L CNN
F 1 "10k" H 9520 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9380 4550 50  0001 C CNN
F 3 "" H 9450 4550 50  0001 C CNN
	1    9450 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5F7876D7
P 9200 4550
F 0 "R20" H 9270 4596 50  0000 L CNN
F 1 "10k" H 9270 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9130 4550 50  0001 C CNN
F 3 "" H 9200 4550 50  0001 C CNN
	1    9200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4700 9200 4950
Wire Wire Line
	9200 4950 9900 4950
Wire Wire Line
	9900 4750 9450 4750
Wire Wire Line
	9450 4750 9450 4700
Wire Wire Line
	9200 4400 9200 4350
Wire Wire Line
	9200 4350 9300 4350
Wire Wire Line
	9450 4350 9450 4400
Wire Wire Line
	9300 4350 9300 4300
Connection ~ 9300 4350
Wire Wire Line
	9300 4350 9450 4350
$Comp
L power:+3V3 #PWR0116
U 1 1 5F7876E7
P 9300 4300
F 0 "#PWR0116" H 9300 4150 50  0001 C CNN
F 1 "+3V3" H 9315 4473 50  0000 C CNN
F 2 "" H 9300 4300 50  0001 C CNN
F 3 "" H 9300 4300 50  0001 C CNN
	1    9300 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F7876ED
P 9200 5150
F 0 "C9" H 9200 5250 50  0000 L CNN
F 1 "1nF" H 9200 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9238 5000 50  0001 C CNN
F 3 "" H 9200 5150 50  0001 C CNN
	1    9200 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5F7876F3
P 9450 5150
F 0 "C12" H 9450 5250 50  0000 L CNN
F 1 "1nF" H 9450 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9488 5000 50  0001 C CNN
F 3 "" H 9450 5150 50  0001 C CNN
	1    9450 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5000 9200 4950
Connection ~ 9200 4950
Wire Wire Line
	9450 5000 9450 4750
Connection ~ 9450 4750
$Comp
L Device:R R28
U 1 1 5F7876FD
P 10050 4750
F 0 "R28" V 9950 4750 50  0000 C CNN
F 1 "100R" V 10050 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9980 4750 50  0001 C CNN
F 3 "" H 10050 4750 50  0001 C CNN
	1    10050 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 5F787703
P 10050 4950
F 0 "R29" V 10150 4950 50  0000 C CNN
F 1 "100R" V 10050 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9980 4950 50  0001 C CNN
F 3 "" H 10050 4950 50  0001 C CNN
	1    10050 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 5300 9200 5350
Wire Wire Line
	9200 5350 9300 5350
Wire Wire Line
	9450 5350 9450 5300
$Comp
L power:GND #PWR0117
U 1 1 5F78770C
P 9300 5400
F 0 "#PWR0117" H 9300 5150 50  0001 C CNN
F 1 "GND" V 9305 5272 50  0000 R CNN
F 2 "" H 9300 5400 50  0001 C CNN
F 3 "" H 9300 5400 50  0001 C CNN
	1    9300 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5400 9300 5350
Connection ~ 9300 5350
Wire Wire Line
	9300 5350 9450 5350
$Comp
L power:GND #PWR0123
U 1 1 5F7AD41A
P 7950 3100
F 0 "#PWR0123" H 7950 2850 50  0001 C CNN
F 1 "GND" V 7955 2972 50  0000 R CNN
F 2 "" H 7950 3100 50  0001 C CNN
F 3 "" H 7950 3100 50  0001 C CNN
	1    7950 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5F7AD936
P 7950 4900
F 0 "#PWR0124" H 7950 4650 50  0001 C CNN
F 1 "GND" V 7955 4772 50  0000 R CNN
F 2 "" H 7950 4900 50  0001 C CNN
F 3 "" H 7950 4900 50  0001 C CNN
	1    7950 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5F7ADEAF
P 10200 4850
F 0 "#PWR0125" H 10200 4600 50  0001 C CNN
F 1 "GND" V 10205 4722 50  0000 R CNN
F 2 "" H 10200 4850 50  0001 C CNN
F 3 "" H 10200 4850 50  0001 C CNN
	1    10200 4850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5F7AE3E5
P 10200 3050
F 0 "#PWR0126" H 10200 2800 50  0001 C CNN
F 1 "GND" V 10205 2922 50  0000 R CNN
F 2 "" H 10200 3050 50  0001 C CNN
F 3 "" H 10200 3050 50  0001 C CNN
	1    10200 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F7B0565
P 4300 2000
F 0 "R1" V 4250 2150 50  0000 C CNN
F 1 "10k" V 4300 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4230 2000 50  0001 C CNN
F 3 "" H 4300 2000 50  0001 C CNN
	1    4300 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F7B17C4
P 4300 2100
F 0 "R2" V 4250 2250 50  0000 C CNN
F 1 "10k" V 4300 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4230 2100 50  0001 C CNN
F 3 "" H 4300 2100 50  0001 C CNN
	1    4300 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F7B19FE
P 4300 2200
F 0 "R3" V 4250 2350 50  0000 C CNN
F 1 "10k" V 4300 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4230 2200 50  0001 C CNN
F 3 "" H 4300 2200 50  0001 C CNN
	1    4300 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F7B1C68
P 4300 2300
F 0 "R4" V 4250 2450 50  0000 C CNN
F 1 "10k" V 4300 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4230 2300 50  0001 C CNN
F 3 "" H 4300 2300 50  0001 C CNN
	1    4300 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F7B1EEB
P 4300 2400
F 0 "R5" V 4250 2550 50  0000 C CNN
F 1 "10k" V 4300 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4230 2400 50  0001 C CNN
F 3 "" H 4300 2400 50  0001 C CNN
	1    4300 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 2400 4150 2400
Wire Wire Line
	3800 2000 4150 2000
Wire Wire Line
	3800 2100 4150 2100
Wire Wire Line
	3800 2200 4150 2200
Wire Wire Line
	3800 2300 4150 2300
Wire Wire Line
	4450 2000 4550 2000
Wire Wire Line
	4550 2000 4550 1900
Wire Wire Line
	4450 2400 4550 2400
Wire Wire Line
	4550 2400 4550 2300
Connection ~ 4550 2000
Wire Wire Line
	4450 2300 4550 2300
Connection ~ 4550 2300
Wire Wire Line
	4550 2300 4550 2200
Wire Wire Line
	4450 2100 4550 2100
Connection ~ 4550 2100
Wire Wire Line
	4550 2100 4550 2000
Wire Wire Line
	4450 2200 4550 2200
Connection ~ 4550 2200
Wire Wire Line
	4550 2200 4550 2100
$Comp
L power:+3V3 #PWR0128
U 1 1 5F7E9109
P 4550 1900
F 0 "#PWR0128" H 4550 1750 50  0001 C CNN
F 1 "+3V3" H 4565 2073 50  0000 C CNN
F 2 "" H 4550 1900 50  0001 C CNN
F 3 "" H 4550 1900 50  0001 C CNN
	1    4550 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:D D20
U 1 1 5F7E9709
P 8600 1600
F 0 "D20" V 8646 1521 50  0000 R CNN
F 1 "D" V 8555 1521 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 8600 1600 50  0001 C CNN
F 3 "" H 8600 1600 50  0001 C CNN
	1    8600 1600
	0    -1   -1   0   
$EndComp
Text Label 8600 1250 0    50   ~ 0
V0
Text Label 10800 5250 0    50   ~ 0
H0
Text Label 8550 3000 0    50   ~ 0
V0
Text Label 8550 4800 0    50   ~ 0
V0
Text Label 10850 1200 0    50   ~ 0
V0
Text Label 10800 2950 0    50   ~ 0
V0
Text Label 8550 5300 0    50   ~ 0
H2
Text Label 10850 1700 0    50   ~ 0
H3
Text Label 10800 3450 0    50   ~ 0
H4
$Comp
L Device:D D18
U 1 1 5F8040DE
P 8550 3350
F 0 "D18" V 8596 3271 50  0000 R CNN
F 1 "D" V 8505 3271 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 8550 3350 50  0001 C CNN
F 3 "" H 8550 3350 50  0001 C CNN
	1    8550 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D19
U 1 1 5F804804
P 8550 5150
F 0 "D19" V 8596 5071 50  0000 R CNN
F 1 "D" V 8505 5071 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 8550 5150 50  0001 C CNN
F 3 "" H 8550 5150 50  0001 C CNN
	1    8550 5150
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D23
U 1 1 5F804D4A
P 10850 1550
F 0 "D23" V 10896 1471 50  0000 R CNN
F 1 "D" V 10805 1471 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 10850 1550 50  0001 C CNN
F 3 "" H 10850 1550 50  0001 C CNN
	1    10850 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D21
U 1 1 5F8052BD
P 10800 3300
F 0 "D21" V 10846 3221 50  0000 R CNN
F 1 "D" V 10755 3221 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 10800 3300 50  0001 C CNN
F 3 "" H 10800 3300 50  0001 C CNN
	1    10800 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D22
U 1 1 5F8056D7
P 10800 5100
F 0 "D22" V 10846 5021 50  0000 R CNN
F 1 "D" V 10755 5021 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 10800 5100 50  0001 C CNN
F 3 "" H 10800 5100 50  0001 C CNN
	1    10800 5100
	0    -1   -1   0   
$EndComp
Text Label 8550 3500 0    50   ~ 0
H1
Text Label 8600 1750 0    50   ~ 0
H0
Text Label 10800 4750 0    50   ~ 0
V1
$Comp
L Device:D D1
U 1 1 5F808555
P 5650 900
F 0 "D1" H 5650 1116 50  0000 C CNN
F 1 "D" H 5650 1025 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 900 50  0001 C CNN
F 3 "" H 5650 900 50  0001 C CNN
	1    5650 900 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5F80F62F
P 6000 1300
F 0 "SW2" H 6000 1585 50  0000 C CNN
F 1 "SW_Push" H 6000 1494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 1500 50  0001 C CNN
F 3 "" H 6000 1500 50  0001 C CNN
	1    6000 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 5F80F635
P 5650 1300
F 0 "D2" H 5650 1516 50  0000 C CNN
F 1 "D" H 5650 1425 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 1300 50  0001 C CNN
F 3 "" H 5650 1300 50  0001 C CNN
	1    5650 1300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5F815FD0
P 6000 1700
F 0 "SW3" H 6000 1985 50  0000 C CNN
F 1 "SW_Push" H 6000 1894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 1900 50  0001 C CNN
F 3 "" H 6000 1900 50  0001 C CNN
	1    6000 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5F815FD6
P 5650 1700
F 0 "D3" H 5650 1916 50  0000 C CNN
F 1 "D" H 5650 1825 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 1700 50  0001 C CNN
F 3 "" H 5650 1700 50  0001 C CNN
	1    5650 1700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5F81C8C7
P 6000 2100
F 0 "SW4" H 6000 2385 50  0000 C CNN
F 1 "SW_Push" H 6000 2294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 2300 50  0001 C CNN
F 3 "" H 6000 2300 50  0001 C CNN
	1    6000 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:D D4
U 1 1 5F81C8CD
P 5650 2100
F 0 "D4" H 5650 2316 50  0000 C CNN
F 1 "D" H 5650 2225 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 2100 50  0001 C CNN
F 3 "" H 5650 2100 50  0001 C CNN
	1    5650 2100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5F82324A
P 6000 2500
F 0 "SW5" H 6000 2785 50  0000 C CNN
F 1 "SW_Push" H 6000 2694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 2700 50  0001 C CNN
F 3 "" H 6000 2700 50  0001 C CNN
	1    6000 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D5
U 1 1 5F823250
P 5650 2500
F 0 "D5" H 5650 2716 50  0000 C CNN
F 1 "D" H 5650 2625 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 2500 50  0001 C CNN
F 3 "" H 5650 2500 50  0001 C CNN
	1    5650 2500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5F829939
P 6000 2900
F 0 "SW6" H 6000 3185 50  0000 C CNN
F 1 "SW_Push" H 6000 3094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 3100 50  0001 C CNN
F 3 "" H 6000 3100 50  0001 C CNN
	1    6000 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:D D6
U 1 1 5F82993F
P 5650 2900
F 0 "D6" H 5650 3116 50  0000 C CNN
F 1 "D" H 5650 3025 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 2900 50  0001 C CNN
F 3 "" H 5650 2900 50  0001 C CNN
	1    5650 2900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW7
U 1 1 5F82FDA8
P 6000 3300
F 0 "SW7" H 6000 3585 50  0000 C CNN
F 1 "SW_Push" H 6000 3494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 3500 50  0001 C CNN
F 3 "" H 6000 3500 50  0001 C CNN
	1    6000 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:D D7
U 1 1 5F82FDAE
P 5650 3300
F 0 "D7" H 5650 3516 50  0000 C CNN
F 1 "D" H 5650 3425 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 3300 50  0001 C CNN
F 3 "" H 5650 3300 50  0001 C CNN
	1    5650 3300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW8
U 1 1 5F843B30
P 6000 3700
F 0 "SW8" H 6000 3985 50  0000 C CNN
F 1 "SW_Push" H 6000 3894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 3900 50  0001 C CNN
F 3 "" H 6000 3900 50  0001 C CNN
	1    6000 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:D D8
U 1 1 5F843B36
P 5650 3700
F 0 "D8" H 5650 3916 50  0000 C CNN
F 1 "D" H 5650 3825 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 3700 50  0001 C CNN
F 3 "" H 5650 3700 50  0001 C CNN
	1    5650 3700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW9
U 1 1 5F843B3C
P 6000 4100
F 0 "SW9" H 6000 4385 50  0000 C CNN
F 1 "SW_Push" H 6000 4294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 4300 50  0001 C CNN
F 3 "" H 6000 4300 50  0001 C CNN
	1    6000 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:D D9
U 1 1 5F843B42
P 5650 4100
F 0 "D9" H 5650 4316 50  0000 C CNN
F 1 "D" H 5650 4225 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 4100 50  0001 C CNN
F 3 "" H 5650 4100 50  0001 C CNN
	1    5650 4100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW10
U 1 1 5F843B48
P 6000 4500
F 0 "SW10" H 6000 4785 50  0000 C CNN
F 1 "SW_Push" H 6000 4694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 4700 50  0001 C CNN
F 3 "" H 6000 4700 50  0001 C CNN
	1    6000 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D10
U 1 1 5F843B4E
P 5650 4500
F 0 "D10" H 5650 4716 50  0000 C CNN
F 1 "D" H 5650 4625 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 4500 50  0001 C CNN
F 3 "" H 5650 4500 50  0001 C CNN
	1    5650 4500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW11
U 1 1 5F843B54
P 6000 4900
F 0 "SW11" H 6000 5185 50  0000 C CNN
F 1 "SW_Push" H 6000 5094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 5100 50  0001 C CNN
F 3 "" H 6000 5100 50  0001 C CNN
	1    6000 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:D D11
U 1 1 5F843B5A
P 5650 4900
F 0 "D11" H 5650 5116 50  0000 C CNN
F 1 "D" H 5650 5025 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 4900 50  0001 C CNN
F 3 "" H 5650 4900 50  0001 C CNN
	1    5650 4900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW12
U 1 1 5F843B60
P 6000 5300
F 0 "SW12" H 6000 5585 50  0000 C CNN
F 1 "SW_Push" H 6000 5494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 5500 50  0001 C CNN
F 3 "" H 6000 5500 50  0001 C CNN
	1    6000 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:D D12
U 1 1 5F843B66
P 5650 5300
F 0 "D12" H 5650 5516 50  0000 C CNN
F 1 "D" H 5650 5425 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 5300 50  0001 C CNN
F 3 "" H 5650 5300 50  0001 C CNN
	1    5650 5300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW13
U 1 1 5F843B6C
P 6000 5700
F 0 "SW13" H 6000 5985 50  0000 C CNN
F 1 "SW_Push" H 6000 5894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 5900 50  0001 C CNN
F 3 "" H 6000 5900 50  0001 C CNN
	1    6000 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:D D13
U 1 1 5F843B72
P 5650 5700
F 0 "D13" H 5650 5916 50  0000 C CNN
F 1 "D" H 5650 5825 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 5700 50  0001 C CNN
F 3 "" H 5650 5700 50  0001 C CNN
	1    5650 5700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW14
U 1 1 5F843B78
P 6000 6100
F 0 "SW14" H 6000 6385 50  0000 C CNN
F 1 "SW_Push" H 6000 6294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 6000 6300 50  0001 C CNN
F 3 "" H 6000 6300 50  0001 C CNN
	1    6000 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:D D14
U 1 1 5F843B7E
P 5650 6100
F 0 "D14" H 5650 6316 50  0000 C CNN
F 1 "D" H 5650 6225 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 5650 6100 50  0001 C CNN
F 3 "" H 5650 6100 50  0001 C CNN
	1    5650 6100
	1    0    0    -1  
$EndComp
Text Label 6200 900  0    50   ~ 0
V1
Text Label 6200 1300 0    50   ~ 0
V1
Text Label 5500 900  2    50   ~ 0
H3
Text Label 5500 1300 2    50   ~ 0
H4
Text Label 5500 1700 2    50   ~ 0
H0
Text Label 5500 2100 2    50   ~ 0
H1
Text Label 5500 2500 2    50   ~ 0
H2
Text Label 5500 2900 2    50   ~ 0
H3
Text Label 5500 3300 2    50   ~ 0
H4
Text Label 5500 3700 2    50   ~ 0
H0
Text Label 5500 4100 2    50   ~ 0
H1
Text Label 5500 4500 2    50   ~ 0
H2
Text Label 5500 4900 2    50   ~ 0
H3
Text Label 5500 5300 2    50   ~ 0
H4
Text Label 5500 5700 2    50   ~ 0
H0
Text Label 5500 6100 2    50   ~ 0
H1
Text Label 6200 1700 0    50   ~ 0
V2
Text Label 6200 2100 0    50   ~ 0
V2
Text Label 6200 2500 0    50   ~ 0
V2
Text Label 6200 2900 0    50   ~ 0
V2
Text Label 6200 3300 0    50   ~ 0
V2
Text Label 6200 3700 0    50   ~ 0
V3
Text Label 6200 4100 0    50   ~ 0
V3
Text Label 6200 4500 0    50   ~ 0
V3
Text Label 6200 4900 0    50   ~ 0
V3
Text Label 6200 5300 0    50   ~ 0
V3
Text Label 6200 5700 0    50   ~ 0
V4
Text Label 6200 6100 0    50   ~ 0
V4
$Comp
L power:+5V #PWR0130
U 1 1 5F897106
P 1350 2200
F 0 "#PWR0130" H 1350 2050 50  0001 C CNN
F 1 "+5V" H 1365 2373 50  0000 C CNN
F 2 "" H 1350 2200 50  0001 C CNN
F 3 "" H 1350 2200 50  0001 C CNN
	1    1350 2200
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D26
U 1 1 5F7D03DC
P 1000 4600
F 0 "D26" H 1050 4350 50  0000 L CNN
F 1 "NeoPixel_THT" H 1000 4850 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 1050 4300 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 1100 4225 50  0001 L TNN
	1    1000 4600
	1    0    0    -1  
$EndComp
Text Label 700  4600 2    50   ~ 0
led
$Comp
L LED:NeoPixel_THT D27
U 1 1 5F7F6957
P 1600 4600
F 0 "D27" H 1650 4350 50  0000 L CNN
F 1 "NeoPixel_THT" H 1600 4850 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 1650 4300 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 1700 4225 50  0001 L TNN
	1    1600 4600
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D28
U 1 1 5F7FF6D7
P 2200 4600
F 0 "D28" H 2250 4350 50  0000 L CNN
F 1 "NeoPixel_THT" H 2200 4850 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 2250 4300 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 2300 4225 50  0001 L TNN
	1    2200 4600
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D29
U 1 1 5F8081A5
P 2800 4600
F 0 "D29" H 2850 4350 50  0000 L CNN
F 1 "NeoPixel_THT" H 2800 4850 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 2850 4300 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 2900 4225 50  0001 L TNN
	1    2800 4600
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D30
U 1 1 5F8108D1
P 3400 4600
F 0 "D30" H 3450 4350 50  0000 L CNN
F 1 "NeoPixel_THT" H 3400 4850 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 3450 4300 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 3500 4225 50  0001 L TNN
	1    3400 4600
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D31
U 1 1 5F82AB0C
P 4000 4600
F 0 "D31" H 4050 4350 50  0000 L CNN
F 1 "NeoPixel_THT" H 4000 4850 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 4050 4300 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 4100 4225 50  0001 L TNN
	1    4000 4600
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D32
U 1 1 5F83E6BD
P 1000 5800
F 0 "D32" H 1050 5550 50  0000 L CNN
F 1 "NeoPixel_THT" H 1000 6050 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 1050 5500 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 1100 5425 50  0001 L TNN
	1    1000 5800
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D33
U 1 1 5F846B37
P 1600 5800
F 0 "D33" H 1650 5550 50  0000 L CNN
F 1 "NeoPixel_THT" H 1600 6050 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 1650 5500 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 1700 5425 50  0001 L TNN
	1    1600 5800
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D34
U 1 1 5F84F146
P 2200 5800
F 0 "D34" H 2250 5550 50  0000 L CNN
F 1 "NeoPixel_THT" H 2200 6050 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 2250 5500 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 2300 5425 50  0001 L TNN
	1    2200 5800
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D35
U 1 1 5F857854
P 2800 5800
F 0 "D35" H 2850 5550 50  0000 L CNN
F 1 "NeoPixel_THT" H 2800 6050 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 2850 5500 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 2900 5425 50  0001 L TNN
	1    2800 5800
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D36
U 1 1 5F85FD82
P 3400 5800
F 0 "D36" H 3450 5550 50  0000 L CNN
F 1 "NeoPixel_THT" H 3400 6050 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 3450 5500 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 3500 5425 50  0001 L TNN
	1    3400 5800
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D37
U 1 1 5F86810C
P 4000 5800
F 0 "D37" H 4050 5550 50  0000 L CNN
F 1 "NeoPixel_THT" H 4000 6050 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 4050 5500 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 4100 5425 50  0001 L TNN
	1    4000 5800
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D38
U 1 1 5F903DB5
P 1000 7000
F 0 "D38" H 1050 6750 50  0000 L CNN
F 1 "NeoPixel_THT" H 1000 7250 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 1050 6700 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 1100 6625 50  0001 L TNN
	1    1000 7000
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D39
U 1 1 5F903DC1
P 1600 7000
F 0 "D39" H 1650 6750 50  0000 L CNN
F 1 "NeoPixel_THT" H 1600 7250 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 1650 6700 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 1700 6625 50  0001 L TNN
	1    1600 7000
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D40
U 1 1 5F903DCD
P 2200 7000
F 0 "D40" H 2250 6750 50  0000 L CNN
F 1 "NeoPixel_THT" H 2200 7250 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 2250 6700 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 2300 6625 50  0001 L TNN
	1    2200 7000
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D41
U 1 1 5F903DD9
P 2800 7000
F 0 "D41" H 2850 6750 50  0000 L CNN
F 1 "NeoPixel_THT" H 2800 7250 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 2850 6700 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 2900 6625 50  0001 L TNN
	1    2800 7000
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D42
U 1 1 5F903DE5
P 3400 7000
F 0 "D42" H 3450 6750 50  0000 L CNN
F 1 "NeoPixel_THT" H 3400 7250 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 3450 6700 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 3500 6625 50  0001 L TNN
	1    3400 7000
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D43
U 1 1 5F903DF1
P 4000 7000
F 0 "D43" H 4050 6750 50  0000 L CNN
F 1 "NeoPixel_THT" H 4000 7250 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 4050 6700 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 4100 6625 50  0001 L TNN
	1    4000 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4600 4300 5250
Wire Wire Line
	4300 5250 700  5250
Wire Wire Line
	700  5250 700  5800
Wire Wire Line
	4300 5800 4300 6450
Wire Wire Line
	4300 6450 700  6450
Wire Wire Line
	700  6450 700  7000
$Comp
L Connector:TestPoint TP1
U 1 1 5F9BB81A
P 3800 2900
F 0 "TP1" V 3754 3088 50  0000 L CNN
F 1 "TestPoint" V 3845 3088 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.85mm" H 4000 2900 50  0001 C CNN
F 3 "~" H 4000 2900 50  0001 C CNN
	1    3800 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R38
U 1 1 5F9BCECC
P 2100 2500
F 0 "R38" V 2050 2350 50  0000 C CNN
F 1 "22R" V 2100 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2030 2500 50  0001 C CNN
F 3 "" H 2100 2500 50  0001 C CNN
	1    2100 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R39
U 1 1 5F9BD6A6
P 2100 2600
F 0 "R39" V 2050 2450 50  0000 C CNN
F 1 "22R" V 2100 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2030 2600 50  0001 C CNN
F 3 "" H 2100 2600 50  0001 C CNN
	1    2100 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 2500 2600 2500
Wire Wire Line
	2600 2600 2250 2600
Text Label 1250 2550 0    50   ~ 0
USBB_N
Text Label 1250 2450 0    50   ~ 0
USBB_P
$Comp
L Connector:TestPoint TP2
U 1 1 5FA0FF39
P 800 800
F 0 "TP2" H 742 826 50  0000 R CNN
F 1 "TestPoint" H 742 917 50  0000 R CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.85mm" H 1000 800 50  0001 C CNN
F 3 "~" H 1000 800 50  0001 C CNN
	1    800  800 
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5FA1101E
P 1300 800
F 0 "TP4" H 1242 826 50  0000 R CNN
F 1 "TestPoint" H 1242 917 50  0000 R CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.85mm" H 1500 800 50  0001 C CNN
F 3 "~" H 1500 800 50  0001 C CNN
	1    1300 800 
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5FA11504
P 800 1200
F 0 "TP3" H 858 1318 50  0000 L CNN
F 1 "TestPoint" H 858 1227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.85mm" H 1000 1200 50  0001 C CNN
F 3 "~" H 1000 1200 50  0001 C CNN
	1    800  1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5FA11982
P 800 800
F 0 "#PWR01" H 800 650 50  0001 C CNN
F 1 "+5V" H 815 973 50  0000 C CNN
F 2 "" H 800 800 50  0001 C CNN
F 3 "" H 800 800 50  0001 C CNN
	1    800  800 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR03
U 1 1 5FA121B8
P 1300 800
F 0 "#PWR03" H 1300 650 50  0001 C CNN
F 1 "+3V3" H 1315 973 50  0000 C CNN
F 2 "" H 1300 800 50  0001 C CNN
F 3 "" H 1300 800 50  0001 C CNN
	1    1300 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FA15402
P 800 1200
F 0 "#PWR02" H 800 950 50  0001 C CNN
F 1 "GND" H 805 1027 50  0000 C CNN
F 2 "" H 800 1200 50  0001 C CNN
F 3 "" H 800 1200 50  0001 C CNN
	1    800  1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FA15B4B
P 1300 1200
F 0 "#PWR04" H 1300 950 50  0001 C CNN
F 1 "GND" H 1305 1027 50  0000 C CNN
F 2 "" H 1300 1200 50  0001 C CNN
F 3 "" H 1300 1200 50  0001 C CNN
	1    1300 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5FA16147
P 1300 1200
F 0 "TP5" H 1358 1318 50  0000 L CNN
F 1 "TestPoint" H 1358 1227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.85mm" H 1500 1200 50  0001 C CNN
F 3 "~" H 1500 1200 50  0001 C CNN
	1    1300 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 5FA5598C
P 900 2950
F 0 "#PWR0167" H 900 2700 50  0001 C CNN
F 1 "GND" H 905 2777 50  0000 C CNN
F 2 "" H 900 2950 50  0001 C CNN
F 3 "" H 900 2950 50  0001 C CNN
	1    900  2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2600 1950 2600
$Comp
L Connector:USB_B_Micro J1
U 1 1 5FADF173
P 950 2450
F 0 "J1" H 1007 2917 50  0000 C CNN
F 1 "USB_B_Micro" H 1007 2826 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 1100 2400 50  0001 C CNN
F 3 "~" H 1100 2400 50  0001 C CNN
	1    950  2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2450 1750 2450
Wire Wire Line
	1750 2450 1750 2600
Wire Wire Line
	1650 2500 1650 2550
Wire Wire Line
	1650 2550 1250 2550
Wire Wire Line
	1650 2500 1950 2500
Wire Wire Line
	1250 2250 1350 2250
Wire Wire Line
	1350 2250 1350 2200
Wire Wire Line
	850  2850 850  2900
Wire Wire Line
	850  2900 900  2900
Wire Wire Line
	950  2900 950  2850
Wire Wire Line
	900  2950 900  2900
Connection ~ 900  2900
Wire Wire Line
	900  2900 950  2900
Wire Wire Line
	1250 2650 1250 2900
Wire Wire Line
	1250 2900 950  2900
Connection ~ 950  2900
Text Label 6200 6950 0    50   ~ 0
led5v
Text Label 5400 6950 0    50   ~ 0
ledGnd
Text Label 1000 4300 1    50   ~ 0
led5v
Text Label 1600 4300 1    50   ~ 0
led5v
Text Label 2200 4300 1    50   ~ 0
led5v
Text Label 2800 4300 1    50   ~ 0
led5v
Text Label 3400 4300 1    50   ~ 0
led5v
Text Label 4000 4300 1    50   ~ 0
led5v
Text Label 1000 5500 1    50   ~ 0
led5v
Text Label 1600 5500 1    50   ~ 0
led5v
Text Label 2200 5500 1    50   ~ 0
led5v
Text Label 2800 5500 1    50   ~ 0
led5v
Text Label 3400 5500 1    50   ~ 0
led5v
Text Label 4000 5500 1    50   ~ 0
led5v
Text Label 1000 6700 1    50   ~ 0
led5v
Text Label 1600 6700 1    50   ~ 0
led5v
Text Label 2200 6700 1    50   ~ 0
led5v
Text Label 2800 6700 1    50   ~ 0
led5v
Text Label 3400 6700 1    50   ~ 0
led5v
Text Label 4000 6700 1    50   ~ 0
led5v
Text Label 1000 4900 3    50   ~ 0
ledGnd
Text Label 1600 4900 3    50   ~ 0
ledGnd
Text Label 2200 4900 3    50   ~ 0
ledGnd
Text Label 2800 4900 3    50   ~ 0
ledGnd
Text Label 3400 4900 3    50   ~ 0
ledGnd
Text Label 4000 4900 3    50   ~ 0
ledGnd
Text Label 1000 6100 3    50   ~ 0
ledGnd
Text Label 1600 6100 3    50   ~ 0
ledGnd
Text Label 2200 6100 3    50   ~ 0
ledGnd
Text Label 2800 6100 3    50   ~ 0
ledGnd
Text Label 3400 6100 3    50   ~ 0
ledGnd
Text Label 4000 6100 3    50   ~ 0
ledGnd
Text Label 1000 7300 3    50   ~ 0
ledGnd
Text Label 1600 7300 3    50   ~ 0
ledGnd
Text Label 2200 7300 3    50   ~ 0
ledGnd
Text Label 2800 7300 3    50   ~ 0
ledGnd
Text Label 3400 7300 3    50   ~ 0
ledGnd
Text Label 4000 7300 3    50   ~ 0
ledGnd
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 60094B2B
P 5250 6950
F 0 "JP1" V 5296 7017 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 5150 6650 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5250 6950 50  0001 C CNN
F 3 "~" H 5250 6950 50  0001 C CNN
	1    5250 6950
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 6009852F
P 6050 6950
F 0 "JP2" V 6096 7017 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 5950 6550 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6050 6950 50  0001 C CNN
F 3 "~" H 6050 6950 50  0001 C CNN
	1    6050 6950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 6009FC63
P 5250 7150
F 0 "#PWR0118" H 5250 6900 50  0001 C CNN
F 1 "GND" V 5255 7022 50  0000 R CNN
F 2 "" H 5250 7150 50  0001 C CNN
F 3 "" H 5250 7150 50  0001 C CNN
	1    5250 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 600A066C
P 6050 6750
F 0 "#PWR0119" H 6050 6500 50  0001 C CNN
F 1 "GND" V 6055 6622 50  0000 R CNN
F 2 "" H 6050 6750 50  0001 C CNN
F 3 "" H 6050 6750 50  0001 C CNN
	1    6050 6750
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0120
U 1 1 600A2CC0
P 5250 6750
F 0 "#PWR0120" H 5250 6600 50  0001 C CNN
F 1 "+5V" H 5265 6923 50  0000 C CNN
F 2 "" H 5250 6750 50  0001 C CNN
F 3 "" H 5250 6750 50  0001 C CNN
	1    5250 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 600A466B
P 6050 7150
F 0 "#PWR0121" H 6050 7000 50  0001 C CNN
F 1 "+5V" H 6065 7323 50  0000 C CNN
F 2 "" H 6050 7150 50  0001 C CNN
F 3 "" H 6050 7150 50  0001 C CNN
	1    6050 7150
	-1   0    0    1   
$EndComp
$EndSCHEMATC
