EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2021-11-09"
Rev "VacuumPick"
Comp "design: Piotr Zapart "
Comment1 "www.hexefx.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L H_passives:R R7
U 1 1 615DDCA2
P 2600 3100
F 0 "R7" H 2671 3138 40  0000 L CNN
F 1 "220k" H 2671 3062 40  0000 L CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 2530 3100 30  0001 C CNN
F 3 "" H 2600 3100 30  0000 C CNN
	1    2600 3100
	1    0    0    -1  
$EndComp
$Comp
L H_passives:CAP_NP C2
U 1 1 615DE403
P 1100 3250
F 0 "C2" H 1000 3350 50  0000 L CNN
F 1 "1u" H 1000 3150 50  0000 L CNN
F 2 "H_smd_passives:Hx_C_0805_2012Metric" H 1100 3200 50  0001 C CNN
F 3 "" H 1100 3200 50  0001 C CNN
	1    1100 3250
	1    0    0    -1  
$EndComp
$Comp
L H_passives:CAP_POL C1
U 1 1 615DEDEB
P 1600 1600
F 0 "C1" H 1703 1638 40  0000 L CNN
F 1 "470u/25V" H 1250 1500 40  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 1638 1450 30  0001 C CNN
F 3 "" H 1600 1600 60  0000 C CNN
F 4 "" H 1600 1600 50  0001 C CNN "Field4"
	1    1600 1600
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:KA78M05_TO252 U1
U 1 1 615E020B
P 2350 1350
F 0 "U1" H 2350 1592 50  0000 C CNN
F 1 "KA78M05_TO252" H 2350 1501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 2350 1575 50  0001 C CIN
F 3 "https://www.onsemi.com/pub/Collateral/MC78M00-D.PDF" H 2350 1300 50  0001 C CNN
	1    2350 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 615E0C7B
P 10450 3150
F 0 "J8" H 10530 3192 50  0000 L CNN
F 1 "KK100-3" H 10200 2950 50  0000 L CNN
F 2 "H_pin_headers:1x3_254_socket_H" H 10450 3150 50  0001 C CNN
F 3 "~" H 10450 3150 50  0001 C CNN
	1    10450 3150
	1    0    0    -1  
$EndComp
$Comp
L H_passives:CAP_NP C11
U 1 1 615E52C4
P 7750 3500
F 0 "C11" H 7827 3454 50  0000 L CNN
F 1 "1u" H 7827 3545 50  0000 L CNN
F 2 "H_smd_passives:Hx_C_0805_2012Metric" H 7750 3450 50  0001 C CNN
F 3 "" H 7750 3450 50  0001 C CNN
	1    7750 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 3150 7750 3350
$Comp
L power:GND #PWR020
U 1 1 615E65E1
P 7750 3800
F 0 "#PWR020" H 7750 3550 50  0001 C CNN
F 1 "GND" H 7755 3627 50  0000 C CNN
F 2 "" H 7750 3800 50  0001 C CNN
F 3 "" H 7750 3800 50  0001 C CNN
	1    7750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3800 7750 3650
Wire Wire Line
	7750 3150 8000 3150
Wire Wire Line
	10250 3050 9750 3050
Wire Wire Line
	9750 3050 9750 2200
$Comp
L power:+5V #PWR023
U 1 1 615F059B
P 9750 1650
F 0 "#PWR023" H 9750 1500 50  0001 C CNN
F 1 "+5V" H 9765 1823 50  0000 C CNN
F 2 "" H 9750 1650 50  0001 C CNN
F 3 "" H 9750 1650 50  0001 C CNN
	1    9750 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 615F0B65
P 10000 3300
F 0 "#PWR025" H 10000 3050 50  0001 C CNN
F 1 "GND" H 10005 3127 50  0000 C CNN
F 2 "" H 10000 3300 50  0001 C CNN
F 3 "" H 10000 3300 50  0001 C CNN
	1    10000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3300 10000 3250
$Comp
L H_passives:R R8
U 1 1 615F403B
P 2850 2850
F 0 "R8" V 2665 2850 40  0000 C CNN
F 1 "220R" V 2741 2850 40  0000 C CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 2780 2850 30  0001 C CNN
F 3 "" H 2850 2850 30  0000 C CNN
	1    2850 2850
	0    1    1    0   
$EndComp
$Comp
L H_passives:CAP_NP C4
U 1 1 615F62C5
P 1950 1600
F 0 "C4" H 2028 1646 50  0000 L CNN
F 1 "100n" H 2028 1555 50  0000 L CNN
F 2 "H_smd_passives:Hx_C_0805_2012Metric" H 1950 1550 50  0001 C CNN
F 3 "" H 1950 1550 50  0001 C CNN
	1    1950 1600
	1    0    0    -1  
$EndComp
$Comp
L H_passives:CAP_NP C7
U 1 1 615F6C7E
P 2700 1600
F 0 "C7" H 2778 1646 50  0000 L CNN
F 1 "100n" H 2778 1555 50  0000 L CNN
F 2 "H_smd_passives:Hx_C_0805_2012Metric" H 2700 1550 50  0001 C CNN
F 3 "" H 2700 1550 50  0001 C CNN
	1    2700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1450 2700 1350
Wire Wire Line
	2700 1350 2650 1350
Wire Wire Line
	2050 1350 1950 1350
Wire Wire Line
	1950 1350 1950 1450
Wire Wire Line
	1950 1750 1950 1850
Wire Wire Line
	1950 1850 2350 1850
Wire Wire Line
	2700 1850 2700 1750
Wire Wire Line
	2350 1650 2350 1850
Connection ~ 2350 1850
Wire Wire Line
	2350 1850 2700 1850
Wire Wire Line
	1950 1350 1600 1350
Wire Wire Line
	1600 1350 1600 1450
Connection ~ 1950 1350
Wire Wire Line
	1600 1750 1600 1850
Wire Wire Line
	1600 1850 1950 1850
Connection ~ 1950 1850
$Comp
L power:GND #PWR011
U 1 1 615FC5A7
P 2350 1900
F 0 "#PWR011" H 2350 1650 50  0001 C CNN
F 1 "GND" H 2355 1727 50  0000 C CNN
F 2 "" H 2350 1900 50  0001 C CNN
F 3 "" H 2350 1900 50  0001 C CNN
	1    2350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1900 2350 1850
$Comp
L H_passives:CAP_NP C8
U 1 1 615FD5F1
P 3100 1600
F 0 "C8" H 3203 1638 40  0000 L CNN
F 1 "10u" H 3203 1562 40  0000 L CNN
F 2 "H_smd_passives:Hx_C_0805_2012Metric" H 3138 1450 30  0001 C CNN
F 3 "" H 3100 1600 60  0000 C CNN
	1    3100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1450 3100 1350
Wire Wire Line
	3100 1350 2700 1350
Connection ~ 2700 1350
Wire Wire Line
	2700 1850 3100 1850
Wire Wire Line
	3100 1850 3100 1750
Connection ~ 2700 1850
$Comp
L power:+5V #PWR013
U 1 1 615FF898
P 3100 1250
F 0 "#PWR013" H 3100 1100 50  0001 C CNN
F 1 "+5V" H 3115 1423 50  0000 C CNN
F 2 "" H 3100 1250 50  0001 C CNN
F 3 "" H 3100 1250 50  0001 C CNN
	1    3100 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1250 3100 1350
Connection ~ 3100 1350
$Comp
L power:+12V #PWR04
U 1 1 61601D36
P 1600 1250
F 0 "#PWR04" H 1600 1100 50  0001 C CNN
F 1 "+12V" H 1615 1423 50  0000 C CNN
F 2 "" H 1600 1250 50  0001 C CNN
F 3 "" H 1600 1250 50  0001 C CNN
	1    1600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1250 1600 1350
Connection ~ 1600 1350
$Comp
L H_passives:CAP_NP C3
U 1 1 6160510E
P 1100 3650
F 0 "C3" H 1178 3696 50  0000 L CNN
F 1 "1u" H 1178 3605 50  0000 L CNN
F 2 "H_smd_passives:Hx_C_0805_2012Metric" H 1100 3600 50  0001 C CNN
F 3 "" H 1100 3600 50  0001 C CNN
	1    1100 3650
	1    0    0    -1  
$EndComp
$Comp
L H_passives:CAP_NP C5
U 1 1 61605677
P 1850 3250
F 0 "C5" H 1700 3350 50  0000 L CNN
F 1 "1u" H 1750 3150 50  0000 L CNN
F 2 "H_smd_passives:Hx_C_0805_2012Metric" H 1850 3200 50  0001 C CNN
F 3 "" H 1850 3200 50  0001 C CNN
	1    1850 3250
	1    0    0    -1  
$EndComp
$Comp
L H_passives:CAP_NP C6
U 1 1 61605693
P 1850 3650
F 0 "C6" H 1928 3696 50  0000 L CNN
F 1 "1u" H 1928 3605 50  0000 L CNN
F 2 "H_smd_passives:Hx_C_0805_2012Metric" H 1850 3600 50  0001 C CNN
F 3 "" H 1850 3600 50  0001 C CNN
	1    1850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3450 1100 3400
Wire Wire Line
	1100 3500 1100 3450
Connection ~ 1100 3450
Wire Wire Line
	1850 3400 1850 3450
Connection ~ 1850 3450
Wire Wire Line
	1850 3450 1850 3500
$Comp
L power:GND #PWR06
U 1 1 6160DA4A
P 1450 3900
F 0 "#PWR06" H 1450 3650 50  0001 C CNN
F 1 "GND" H 1455 3727 50  0000 C CNN
F 2 "" H 1450 3900 50  0001 C CNN
F 3 "" H 1450 3900 50  0001 C CNN
	1    1450 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6160E071
P 1500 3050
F 0 "#PWR07" H 1500 2800 50  0001 C CNN
F 1 "GND" H 1505 2877 50  0000 C CNN
F 2 "" H 1500 3050 50  0001 C CNN
F 3 "" H 1500 3050 50  0001 C CNN
	1    1500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3100 1850 3000
Wire Wire Line
	1850 3000 1500 3000
Wire Wire Line
	1100 3000 1100 3100
Wire Wire Line
	1500 3050 1500 3000
Connection ~ 1500 3000
Wire Wire Line
	1500 3000 1100 3000
Wire Wire Line
	1100 3800 1100 3850
Wire Wire Line
	1100 3850 1450 3850
Wire Wire Line
	1850 3850 1850 3800
Wire Wire Line
	1450 3900 1450 3850
Connection ~ 1450 3850
Wire Wire Line
	1450 3850 1850 3850
$Comp
L power:+12V #PWR05
U 1 1 6161B50A
P 1250 2600
F 0 "#PWR05" H 1250 2450 50  0001 C CNN
F 1 "+12V" H 1265 2773 50  0000 C CNN
F 2 "" H 1250 2600 50  0001 C CNN
F 3 "" H 1250 2600 50  0001 C CNN
	1    1250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3450 1200 3450
Wire Wire Line
	1850 3450 1700 3450
Wire Wire Line
	1750 2850 1650 2850
Wire Wire Line
	1250 2850 1250 2600
$Comp
L power:GND #PWR012
U 1 1 61637181
P 2150 3100
F 0 "#PWR012" H 2150 2850 50  0001 C CNN
F 1 "GND" H 2155 2927 50  0000 C CNN
F 2 "" H 2150 3100 50  0001 C CNN
F 3 "" H 2150 3100 50  0001 C CNN
	1    2150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2850 1750 2600
Wire Wire Line
	2600 2850 2600 2900
$Comp
L power:GND #PWR014
U 1 1 6164FE8D
P 2600 3300
F 0 "#PWR014" H 2600 3050 50  0001 C CNN
F 1 "GND" H 2605 3127 50  0000 C CNN
F 2 "" H 2600 3300 50  0001 C CNN
F 3 "" H 2600 3300 50  0001 C CNN
	1    2600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2850 2600 2850
Connection ~ 2600 2850
Wire Wire Line
	3150 2850 3050 2850
$Comp
L H_passives:R R10
U 1 1 61676D81
P 8950 2300
F 0 "R10" V 8850 2300 40  0000 C CNN
F 1 "2k2" V 8950 2300 40  0000 C CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 8880 2300 30  0001 C CNN
F 3 "" H 8950 2300 30  0000 C CNN
	1    8950 2300
	0    1    1    0   
$EndComp
$Comp
L H_passives:CAP_NP C10
U 1 1 616776B4
P 8650 2550
F 0 "C10" H 8572 2504 50  0000 R CNN
F 1 "10n" H 8572 2595 50  0000 R CNN
F 2 "H_smd_passives:Hx_C_0805_2012Metric" H 8650 2500 50  0001 C CNN
F 3 "" H 8650 2500 50  0001 C CNN
	1    8650 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 2300 8650 2300
Wire Wire Line
	8650 2300 8650 2400
Connection ~ 8650 2300
$Comp
L power:GND #PWR019
U 1 1 6169763D
P 8650 2700
F 0 "#PWR019" H 8650 2450 50  0001 C CNN
F 1 "GND" H 8655 2527 50  0000 C CNN
F 2 "" H 8650 2700 50  0001 C CNN
F 3 "" H 8650 2700 50  0001 C CNN
	1    8650 2700
	1    0    0    -1  
$EndComp
$Comp
L H_passives:R R9
U 1 1 616B6301
P 8350 2300
F 0 "R9" V 8250 2300 40  0000 C CNN
F 1 "2k2" V 8350 2300 40  0000 C CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 8280 2300 30  0001 C CNN
F 3 "" H 8350 2300 30  0000 C CNN
	1    8350 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 2300 8650 2300
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 616C425C
P 10450 2300
F 0 "J7" H 10530 2342 50  0000 L CNN
F 1 "KK100-3" H 10250 2100 50  0000 L CNN
F 2 "H_pin_headers:1x3_254_socket_H" H 10450 2300 50  0001 C CNN
F 3 "~" H 10450 2300 50  0001 C CNN
	1    10450 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 616CE3FE
P 10200 2750
F 0 "#PWR028" H 10200 2500 50  0001 C CNN
F 1 "GND" H 10205 2577 50  0000 C CNN
F 2 "" H 10200 2750 50  0001 C CNN
F 3 "" H 10200 2750 50  0001 C CNN
	1    10200 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2750 10200 2650
Wire Wire Line
	10200 2400 10250 2400
Wire Wire Line
	10250 2200 10100 2200
Connection ~ 9750 2200
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 616DF427
P 10450 1800
F 0 "J6" H 10530 1792 50  0000 L CNN
F 1 "KK100-2" H 10250 1600 50  0000 L CNN
F 2 "H_pin_headers:1x2_254_socket_H" H 10450 1800 50  0001 C CNN
F 3 "~" H 10450 1800 50  0001 C CNN
	1    10450 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2400 10200 1900
Wire Wire Line
	10200 1900 10250 1900
Connection ~ 10200 2400
Text Notes 10650 3200 0    50   ~ 10
SPEED\nPOT
Text Notes 10700 2350 0    50   ~ 10
HANDLE
Text Notes 10750 1900 0    50   ~ 10
FOOTSW
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 616F61D3
P 950 1350
F 0 "J1" H 1030 1342 50  0000 L CNN
F 1 "KK100-2" H 750 1150 50  0000 L CNN
F 2 "H_pin_headers:1x2_254_socket_H" H 950 1350 50  0001 C CNN
F 3 "~" H 950 1350 50  0001 C CNN
	1    950  1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 1450 1150 1450
Text Notes 1150 1250 2    50   ~ 10
12VDC PWR IN
Connection ~ 7750 3150
Wire Wire Line
	10000 3250 10250 3250
$Comp
L H_passives:R R11
U 1 1 61778D1E
P 8000 3500
F 0 "R11" H 8071 3538 40  0000 L CNN
F 1 "220k" H 8071 3462 40  0000 L CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 7930 3500 30  0001 C CNN
F 3 "" H 8000 3500 30  0000 C CNN
	1    8000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3300 8000 3150
Connection ~ 8000 3150
Wire Wire Line
	8000 3150 10250 3150
$Comp
L power:+5V #PWR021
U 1 1 61783DA4
P 8000 3800
F 0 "#PWR021" H 8000 3650 50  0001 C CNN
F 1 "+5V" H 8015 3973 50  0000 C CNN
F 2 "" H 8000 3800 50  0001 C CNN
F 3 "" H 8000 3800 50  0001 C CNN
	1    8000 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 3700 8000 3800
Text Notes 8250 3600 0    50   ~ 0
will set the motor speed \nto 100%\nif no pot is present
$Comp
L Device:Polyfuse_Small F1
U 1 1 6179F2BB
P 10000 2200
F 0 "F1" V 9795 2200 50  0000 C CNN
F 1 "100mA" V 9886 2200 50  0000 C CNN
F 2 "H_Fuses:Fuse_1206_3216Metric" H 10050 2000 50  0001 L CNN
F 3 "~" H 10000 2200 50  0001 C CNN
	1    10000 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 2200 9850 2200
$Comp
L H_passives:R R12
U 1 1 617C4C34
P 9800 4300
F 0 "R12" V 9700 4300 40  0000 C CNN
F 1 "470R" V 9800 4300 40  0000 C CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 9730 4300 30  0001 C CNN
F 3 "" H 9800 4300 30  0000 C CNN
	1    9800 4300
	0    1    1    0   
$EndComp
$Comp
L H_passives:R R14
U 1 1 617C5472
P 9800 4800
F 0 "R14" V 9700 4800 40  0000 C CNN
F 1 "470R" V 9800 4800 40  0000 C CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 9730 4800 30  0001 C CNN
F 3 "" H 9800 4800 30  0000 C CNN
	1    9800 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 4800 10000 4800
Wire Wire Line
	10250 4300 10000 4300
Text Label 9450 4300 2    50   ~ 0
SW_1
Wire Wire Line
	9450 4300 9600 4300
Text Label 9400 4800 2    50   ~ 0
SW_2
Wire Wire Line
	9600 4800 9400 4800
Text Notes 10700 4400 0    50   ~ 10
BTN\nALWAYS ON
Text Notes 10700 4950 0    50   ~ 10
BTN\nREVERSE
$Comp
L MCU_Microchip_ATtiny:ATtiny806-M U2
U 1 1 617E25D4
P 5150 4250
F 0 "U2" H 4800 5200 50  0000 C CNN
F 1 "ATtiny806-M" H 4800 5100 50  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-20-1EP_3x3mm_P0.4mm_EP1.7x1.7mm" H 5150 4250 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATtiny806_1606_Data_Sheet_40002029A.pdf" H 5150 4250 50  0001 C CNN
	1    5150 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 617E481C
P 5150 5200
F 0 "#PWR017" H 5150 4950 50  0001 C CNN
F 1 "GND" H 5155 5027 50  0000 C CNN
F 2 "" H 5150 5200 50  0001 C CNN
F 3 "" H 5150 5200 50  0001 C CNN
	1    5150 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5200 5150 5150
$Comp
L H_passives:CAP_NP C9
U 1 1 617EA888
P 4950 3000
F 0 "C9" V 4735 3000 50  0000 C CNN
F 1 "1u" V 4826 3000 50  0000 C CNN
F 2 "H_smd_passives:Hx_C_0805_2012Metric" H 4950 2950 50  0001 C CNN
F 3 "" H 4950 2950 50  0001 C CNN
	1    4950 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3000 5150 3000
Wire Wire Line
	5150 3000 5150 3350
$Comp
L power:GND #PWR015
U 1 1 617EA8A6
P 4700 3050
F 0 "#PWR015" H 4700 2800 50  0001 C CNN
F 1 "GND" H 4705 2877 50  0000 C CNN
F 2 "" H 4700 3050 50  0001 C CNN
F 3 "" H 4700 3050 50  0001 C CNN
	1    4700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3000 4700 3000
Wire Wire Line
	4700 3000 4700 3050
$Comp
L power:+5V #PWR016
U 1 1 617EA8B2
P 5150 2950
F 0 "#PWR016" H 5150 2800 50  0001 C CNN
F 1 "+5V" H 5165 3123 50  0000 C CNN
F 2 "" H 5150 2950 50  0001 C CNN
F 3 "" H 5150 2950 50  0001 C CNN
	1    5150 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2950 5150 3000
Connection ~ 5150 3000
Text Label 5900 3650 0    50   ~ 0
AIN1_SPEED_POT
Wire Wire Line
	5900 3650 5750 3650
Text Label 5900 3850 0    50   ~ 0
TCA0_WO3_PWM
Wire Wire Line
	5900 4450 5750 4450
Wire Wire Line
	5750 3550 5900 3550
Text Label 5900 3550 0    50   ~ 0
~UPDI
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 61824C25
P 1100 6850
F 0 "J4" H 1180 6842 50  0000 L CNN
F 1 "KK100-2" H 900 6650 50  0000 L CNN
F 2 "H_pin_headers:1x2_254_socket_H" H 1100 6850 50  0001 C CNN
F 3 "~" H 1100 6850 50  0001 C CNN
	1    1100 6850
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR03
U 1 1 61825116
P 1550 6800
F 0 "#PWR03" H 1550 6650 50  0001 C CNN
F 1 "+12V" H 1565 6973 50  0000 C CNN
F 2 "" H 1550 6800 50  0001 C CNN
F 3 "" H 1550 6800 50  0001 C CNN
	1    1550 6800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1300 6850 1400 6850
Text Notes 900  7000 2    50   ~ 10
VALVE1
Text Label 5900 3750 0    50   ~ 0
PUMP_ON
Wire Wire Line
	5900 3750 5750 3750
Wire Wire Line
	5750 4650 5900 4650
Wire Wire Line
	5750 4750 5900 4750
Text Label 5900 4750 0    50   ~ 0
RX
Text Label 5900 4650 0    50   ~ 0
TX
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 61884811
P 10450 3800
F 0 "J9" H 10530 3842 50  0000 L CNN
F 1 "Header 3pin" H 10200 3600 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10450 3800 50  0001 C CNN
F 3 "~" H 10450 3800 50  0001 C CNN
	1    10450 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 6188A7BA
P 10000 4050
F 0 "#PWR026" H 10000 3800 50  0001 C CNN
F 1 "GND" H 10005 3877 50  0000 C CNN
F 2 "" H 10000 4050 50  0001 C CNN
F 3 "" H 10000 4050 50  0001 C CNN
	1    10000 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3900 10000 3900
Wire Wire Line
	10000 3900 10000 4050
$Comp
L power:+5V #PWR024
U 1 1 6189066F
P 9800 3400
F 0 "#PWR024" H 9800 3250 50  0001 C CNN
F 1 "+5V" H 9815 3573 50  0000 C CNN
F 2 "" H 9800 3400 50  0001 C CNN
F 3 "" H 9800 3400 50  0001 C CNN
	1    9800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3800 9800 3800
Wire Wire Line
	9800 3800 9800 3400
Text Label 10100 3700 2    50   ~ 0
~UPDI
Wire Wire Line
	5750 4550 5900 4550
Text Label 5900 4850 0    50   ~ 0
VALVE_1_CTRL
$Comp
L Connector_Generic:Conn_01x03 J10
U 1 1 618A9F70
P 10450 4400
F 0 "J10" H 10530 4442 50  0000 L CNN
F 1 "KK100-3" H 10200 4200 50  0000 L CNN
F 2 "H_pin_headers:1x3_254_socket_H" H 10450 4400 50  0001 C CNN
F 3 "~" H 10450 4400 50  0001 C CNN
	1    10450 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4400 10000 4400
Text Label 9450 4400 2    50   ~ 0
LED_1
$Comp
L Connector_Generic:Conn_01x03 J11
U 1 1 618D15F6
P 10450 4900
F 0 "J11" H 10530 4942 50  0000 L CNN
F 1 "KK100-3" H 10200 4700 50  0000 L CNN
F 2 "H_pin_headers:1x3_254_socket_H" H 10450 4900 50  0001 C CNN
F 3 "~" H 10450 4900 50  0001 C CNN
	1    10450 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5000 10150 5000
Connection ~ 10150 5000
Wire Wire Line
	10150 4500 10250 4500
Wire Wire Line
	10150 4500 10150 5000
Wire Wire Line
	10250 4900 10000 4900
Text Label 9400 4900 2    50   ~ 0
LED_2
Text Label 7650 2300 2    50   ~ 0
PUMP_ON
Wire Wire Line
	7650 3150 7750 3150
Text Notes 10700 3850 0    50   ~ 10
~UPDI
Text Label 4450 4450 2    50   ~ 0
LED_1
Wire Wire Line
	4550 4450 4450 4450
Text Label 4450 4550 2    50   ~ 0
LED_2
Wire Wire Line
	4550 4550 4450 4550
$Comp
L Transistor_FET:DMG2302U Q3
U 1 1 619708B6
P 2200 6950
F 0 "Q3" H 2404 6996 50  0000 L CNN
F 1 "DMG2302U" H 1800 6800 50  0000 L CNN
F 2 "H_SOT:SOT-23" H 2400 6875 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/DMG2302U.pdf" H 2200 6950 50  0001 L CNN
	1    2200 6950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 6800 1400 6800
Wire Wire Line
	1400 6800 1400 6850
Wire Wire Line
	1300 6950 1400 6950
Wire Wire Line
	1400 6950 1400 7250
$Comp
L power:GND #PWR010
U 1 1 61991E14
P 2100 7450
F 0 "#PWR010" H 2100 7200 50  0001 C CNN
F 1 "GND" H 2105 7277 50  0000 C CNN
F 2 "" H 2100 7450 50  0001 C CNN
F 3 "" H 2100 7450 50  0001 C CNN
	1    2100 7450
	-1   0    0    -1  
$EndComp
$Comp
L H_passives:R R3
U 1 1 619B6275
P 2700 7200
F 0 "R3" H 2630 7238 40  0000 R CNN
F 1 "220k" H 2630 7162 40  0000 R CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 2630 7200 30  0001 C CNN
F 3 "" H 2700 7200 30  0000 C CNN
	1    2700 7200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 7250 1850 6700
Wire Wire Line
	1850 6700 2100 6700
Wire Wire Line
	2100 6700 2100 6750
Wire Wire Line
	2100 7450 2100 7400
Wire Wire Line
	2700 7400 2100 7400
Connection ~ 2100 7400
Wire Wire Line
	2100 7400 2100 7150
Wire Wire Line
	2400 6950 2700 6950
Wire Wire Line
	2700 6950 2700 7000
Connection ~ 2700 6950
Text Label 3300 6050 0    50   ~ 0
VALVE_1_CTRL
Wire Wire Line
	3300 6050 3200 6050
Wire Wire Line
	1850 3450 1950 3450
Wire Wire Line
	1950 3450 1950 2850
Wire Wire Line
	1950 2850 1750 2850
Connection ~ 1750 2850
Wire Wire Line
	1100 3450 900  3450
Wire Wire Line
	900  3450 900  2850
Wire Wire Line
	900  2850 1250 2850
Connection ~ 1250 2850
$Comp
L H_motor:Motor_DC M1
U 1 1 6167C79E
P 1450 3450
F 0 "M1" V 1300 3550 50  0000 C CNN
F 1 "PUMP" V 1600 3250 50  0000 C CNN
F 2 "H_motor:VacuumPump_DC12V" H 1450 3410 50  0001 C CNN
F 3 "~" H 1450 3410 50  0001 C CNN
	1    1450 3450
	0    -1   1    0   
$EndComp
Wire Wire Line
	1450 3650 1450 3850
$Comp
L H_passives:R R13
U 1 1 616931D8
P 9800 4400
F 0 "R13" V 9900 4400 40  0000 C CNN
F 1 "470R" V 9800 4400 40  0000 C CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 9730 4400 30  0001 C CNN
F 3 "" H 9800 4400 30  0000 C CNN
	1    9800 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 4400 9450 4400
$Comp
L H_passives:R R15
U 1 1 6169B7DA
P 9800 4900
F 0 "R15" V 9900 4900 40  0000 C CNN
F 1 "470R" V 9800 4900 40  0000 C CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 9730 4900 30  0001 C CNN
F 3 "" H 9800 4900 30  0000 C CNN
	1    9800 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 4900 9400 4900
$Comp
L Diode:MBR0530 D4
U 1 1 6169DC2C
P 1500 2850
F 0 "D4" H 1500 3067 50  0000 C CNN
F 1 "MBR0530" H 1500 2976 50  0000 C CNN
F 2 "H_diodes:D_SOD-123" H 1500 2675 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 1500 2850 50  0001 C CNN
	1    1500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2850 1250 2850
$Comp
L Diode:MBR0530 D3
U 1 1 616BC665
P 1550 7000
F 0 "D3" V 1650 7000 50  0000 L CNN
F 1 "MBR0530" H 1350 6900 50  0000 L CNN
F 2 "H_diodes:D_SOD-123" H 1550 6825 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 1550 7000 50  0001 C CNN
	1    1550 7000
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 7250 1550 7250
Wire Wire Line
	1550 6850 1550 6800
Connection ~ 1550 6800
Wire Wire Line
	1550 7150 1550 7250
Connection ~ 1550 7250
Wire Wire Line
	1550 7250 1400 7250
Wire Wire Line
	1150 1350 1600 1350
Wire Wire Line
	1600 1850 1200 1850
Wire Wire Line
	1200 1450 1200 1850
Connection ~ 1600 1850
$Comp
L power:GND #PWR027
U 1 1 617312B8
P 10150 5550
F 0 "#PWR027" H 10150 5300 50  0001 C CNN
F 1 "GND" H 10155 5377 50  0000 C CNN
F 2 "" H 10150 5550 50  0001 C CNN
F 3 "" H 10150 5550 50  0001 C CNN
	1    10150 5550
	1    0    0    -1  
$EndComp
$Comp
L H_passives:R R16
U 1 1 617312CA
P 9800 5300
F 0 "R16" V 9700 5300 40  0000 C CNN
F 1 "470R" V 9800 5300 40  0000 C CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 9730 5300 30  0001 C CNN
F 3 "" H 9800 5300 30  0000 C CNN
	1    9800 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 5300 10000 5300
Wire Wire Line
	9600 5300 9400 5300
Text Notes 10700 5450 0    50   ~ 10
BTN\nCLEAN
$Comp
L Connector_Generic:Conn_01x03 J12
U 1 1 617312D8
P 10450 5400
F 0 "J12" H 10530 5442 50  0000 L CNN
F 1 "KK100-3" H 10200 5200 50  0000 L CNN
F 2 "H_pin_headers:1x3_254_socket_H" H 10450 5400 50  0001 C CNN
F 3 "~" H 10450 5400 50  0001 C CNN
	1    10450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5500 10150 5500
Connection ~ 10150 5500
Wire Wire Line
	10150 5500 10150 5550
Wire Wire Line
	10250 5400 10000 5400
$Comp
L H_passives:R R17
U 1 1 617312E8
P 9800 5400
F 0 "R17" V 9900 5400 40  0000 C CNN
F 1 "470R" V 9800 5400 40  0000 C CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 9730 5400 30  0001 C CNN
F 3 "" H 9800 5400 30  0000 C CNN
	1    9800 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 5400 9400 5400
Text Label 9400 5300 2    50   ~ 0
SW_3
Text Label 9400 5400 2    50   ~ 0
LED_3
Wire Wire Line
	10150 5000 10150 5500
Text Label 5900 4050 0    50   ~ 0
SW_1
Wire Wire Line
	5750 3850 5900 3850
Wire Wire Line
	5750 3950 5900 3950
Wire Wire Line
	5750 4050 5900 4050
Wire Wire Line
	5750 4150 5900 4150
Wire Wire Line
	5750 4250 5900 4250
Text Label 5900 4150 0    50   ~ 0
SW_2
Text Label 5900 4250 0    50   ~ 0
SW_3
Text Label 4450 4650 2    50   ~ 0
LED_3
Wire Wire Line
	4550 4650 4450 4650
Text Label 5900 4450 0    50   ~ 0
SCL
Text Label 5900 4550 0    50   ~ 0
SDA
Text Label 5900 4950 0    50   ~ 0
VALVE_2_CTRL
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 617FE0A6
P 1100 5850
F 0 "J3" H 1180 5842 50  0000 L CNN
F 1 "KK100-2" H 900 5650 50  0000 L CNN
F 2 "H_pin_headers:1x2_254_socket_H" H 1100 5850 50  0001 C CNN
F 3 "~" H 1100 5850 50  0001 C CNN
	1    1100 5850
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR02
U 1 1 617FE0C0
P 1550 5800
F 0 "#PWR02" H 1550 5650 50  0001 C CNN
F 1 "+12V" H 1565 5973 50  0000 C CNN
F 2 "" H 1550 5800 50  0001 C CNN
F 3 "" H 1550 5800 50  0001 C CNN
	1    1550 5800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1300 5850 1400 5850
Text Notes 900  6000 2    50   ~ 10
VALVE2
$Comp
L Transistor_FET:DMG2302U Q2
U 1 1 617FE0CC
P 2200 5950
F 0 "Q2" H 2404 5996 50  0000 L CNN
F 1 "DMG2302U" H 1850 5800 50  0000 L CNN
F 2 "H_SOT:SOT-23" H 2400 5875 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/DMG2302U.pdf" H 2200 5950 50  0001 L CNN
	1    2200 5950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 5800 1400 5800
Wire Wire Line
	1400 5800 1400 5850
Wire Wire Line
	1300 5950 1400 5950
Wire Wire Line
	1400 5950 1400 6250
$Comp
L power:GND #PWR09
U 1 1 617FE0DA
P 2100 6450
F 0 "#PWR09" H 2100 6200 50  0001 C CNN
F 1 "GND" H 2105 6277 50  0000 C CNN
F 2 "" H 2100 6450 50  0001 C CNN
F 3 "" H 2100 6450 50  0001 C CNN
	1    2100 6450
	-1   0    0    -1  
$EndComp
$Comp
L H_passives:R R2
U 1 1 617FE0E4
P 2600 6200
F 0 "R2" H 2750 6200 40  0000 R CNN
F 1 "220k" H 2800 6100 40  0000 R CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 2530 6200 30  0001 C CNN
F 3 "" H 2600 6200 30  0000 C CNN
	1    2600 6200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 6250 1850 5700
Wire Wire Line
	1850 5700 2100 5700
Wire Wire Line
	2100 5700 2100 5750
Wire Wire Line
	2100 6450 2100 6400
Wire Wire Line
	2600 6400 2100 6400
Connection ~ 2100 6400
Wire Wire Line
	2100 6400 2100 6150
Wire Wire Line
	2400 5950 2600 5950
Wire Wire Line
	2600 5950 2600 6000
Wire Wire Line
	2600 5950 2800 5950
Connection ~ 2600 5950
Text Label 3300 5950 0    50   ~ 0
VALVE_2_CTRL
Wire Wire Line
	3300 5950 3200 5950
$Comp
L Diode:MBR0530 D2
U 1 1 617FE105
P 1550 6000
F 0 "D2" V 1650 6000 50  0000 L CNN
F 1 "MBR0530" H 1350 5900 50  0000 L CNN
F 2 "H_diodes:D_SOD-123" H 1550 5825 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 1550 6000 50  0001 C CNN
	1    1550 6000
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 6250 1550 6250
Wire Wire Line
	1550 5850 1550 5800
Connection ~ 1550 5800
Wire Wire Line
	1550 6150 1550 6250
Connection ~ 1550 6250
Wire Wire Line
	1550 6250 1400 6250
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 61810DB4
P 4800 7150
F 0 "H1" H 4900 7199 50  0000 L CNN
F 1 "MountingHole_Pad" H 4500 7350 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 4800 7150 50  0001 C CNN
F 3 "~" H 4800 7150 50  0001 C CNN
	1    4800 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 61811124
P 4800 7450
F 0 "H2" H 4900 7499 50  0000 L CNN
F 1 "MountingHole_Pad" H 4500 7650 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380_Pad" H 4800 7450 50  0001 C CNN
F 3 "~" H 4800 7450 50  0001 C CNN
	1    4800 7450
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 61811753
P 5500 7150
F 0 "H3" H 5600 7199 50  0000 L CNN
F 1 "MountingHole_Pad" H 5200 7350 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380_Pad" H 5500 7150 50  0001 C CNN
F 3 "~" H 5500 7150 50  0001 C CNN
	1    5500 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 6181175D
P 5500 7450
F 0 "H4" H 5600 7499 50  0000 L CNN
F 1 "MountingHole_Pad" H 5200 7650 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380_Pad" H 5500 7450 50  0001 C CNN
F 3 "~" H 5500 7450 50  0001 C CNN
	1    5500 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 7250 5500 7300
Wire Wire Line
	5500 7300 5150 7300
Wire Wire Line
	4800 7300 4800 7250
Connection ~ 5500 7300
Wire Wire Line
	5500 7300 5500 7350
Wire Wire Line
	4800 7300 4800 7350
Connection ~ 4800 7300
$Comp
L power:GND #PWR018
U 1 1 6184F227
P 5150 7300
F 0 "#PWR018" H 5150 7050 50  0001 C CNN
F 1 "GND" H 5155 7127 50  0000 C CNN
F 2 "" H 5150 7300 50  0001 C CNN
F 3 "" H 5150 7300 50  0001 C CNN
	1    5150 7300
	1    0    0    -1  
$EndComp
Connection ~ 5150 7300
Wire Wire Line
	5150 7300 4800 7300
$Comp
L Transistor_FET:DMG2302U Q4
U 1 1 61850314
P 2250 2850
F 0 "Q4" H 2200 3150 50  0000 L CNN
F 1 "DMG2302U" H 1900 3050 50  0000 L CNN
F 2 "H_SOT:SOT-23" H 2450 2775 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/DMG2302U.pdf" H 2250 2850 50  0001 L CNN
	1    2250 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1750 2600 2150 2600
Wire Wire Line
	2150 2600 2150 2650
Wire Wire Line
	2150 3050 2150 3100
Wire Wire Line
	2450 2850 2600 2850
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 6160C5CB
P 1100 4800
F 0 "J2" H 1180 4792 50  0000 L CNN
F 1 "KK100-2" H 900 4600 50  0000 L CNN
F 2 "H_pin_headers:1x2_254_socket_H" H 1100 4800 50  0001 C CNN
F 3 "~" H 1100 4800 50  0001 C CNN
	1    1100 4800
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 6160C5E5
P 1550 4750
F 0 "#PWR01" H 1550 4600 50  0001 C CNN
F 1 "+12V" H 1565 4923 50  0000 C CNN
F 2 "" H 1550 4750 50  0001 C CNN
F 3 "" H 1550 4750 50  0001 C CNN
	1    1550 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1300 4800 1400 4800
Text Notes 950  4900 2    50   ~ 10
VALVE3 
$Comp
L Transistor_FET:DMG2302U Q1
U 1 1 6160C5F1
P 2200 4900
F 0 "Q1" H 2404 4946 50  0000 L CNN
F 1 "DMG2302U" H 1800 4750 50  0000 L CNN
F 2 "H_SOT:SOT-23" H 2400 4825 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/DMG2302U.pdf" H 2200 4900 50  0001 L CNN
	1    2200 4900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 4750 1400 4750
Wire Wire Line
	1400 4750 1400 4800
Wire Wire Line
	1300 4900 1400 4900
Wire Wire Line
	1400 4900 1400 5200
$Comp
L power:GND #PWR08
U 1 1 6160C5FF
P 2100 5400
F 0 "#PWR08" H 2100 5150 50  0001 C CNN
F 1 "GND" H 2105 5227 50  0000 C CNN
F 2 "" H 2100 5400 50  0001 C CNN
F 3 "" H 2100 5400 50  0001 C CNN
	1    2100 5400
	-1   0    0    -1  
$EndComp
$Comp
L H_passives:R R1
U 1 1 6160C609
P 2700 5150
F 0 "R1" H 2630 5188 40  0000 R CNN
F 1 "220k" H 2630 5112 40  0000 R CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 2630 5150 30  0001 C CNN
F 3 "" H 2700 5150 30  0000 C CNN
	1    2700 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 5200 1850 4650
Wire Wire Line
	1850 4650 2100 4650
Wire Wire Line
	2100 4650 2100 4700
Wire Wire Line
	2100 5400 2100 5350
Wire Wire Line
	2700 5350 2100 5350
Connection ~ 2100 5350
Wire Wire Line
	2100 5350 2100 5100
Wire Wire Line
	2400 4900 2700 4900
Wire Wire Line
	2700 4900 2700 4950
Connection ~ 2700 4900
Text Label 3300 5850 0    50   ~ 0
VALVE_3_CTRL
Wire Wire Line
	3300 5850 3200 5850
$Comp
L Diode:MBR0530 D1
U 1 1 6160C62A
P 1550 4950
F 0 "D1" V 1650 4950 50  0000 L CNN
F 1 "MBR0530" H 1350 4850 50  0000 L CNN
F 2 "H_diodes:D_SOD-123" H 1550 4775 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 1550 4950 50  0001 C CNN
	1    1550 4950
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 5200 1550 5200
Wire Wire Line
	1550 4800 1550 4750
Connection ~ 1550 4750
Wire Wire Line
	1550 5100 1550 5200
Connection ~ 1550 5200
Wire Wire Line
	1550 5200 1400 5200
Text Label 5900 3950 0    50   ~ 0
VALVE_3_CTRL
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 6162274E
P 4100 4750
F 0 "J5" H 4179 4700 50  0000 L CNN
F 1 "Conn_01x01" H 4179 4791 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 4100 4750 50  0001 C CNN
F 3 "~" H 4100 4750 50  0001 C CNN
	1    4100 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 4750 4550 4750
$Comp
L H_passives:R_PACK4_SMD RP2
U 1 1 616CFFF5
P 3000 6200
F 0 "RP2" H 3000 6742 40  0000 C CNN
F 1 "470R" H 3000 6666 40  0000 C CNN
F 2 "H_smd_passives:R_Array_Convex_4x0603" H 3000 6200 60  0001 C CNN
F 3 "" H 3000 6200 60  0000 C CNN
	1    3000 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5850 2700 5850
Wire Wire Line
	2700 5850 2700 5450
Wire Wire Line
	2700 5450 2950 5450
Wire Wire Line
	2950 5450 2950 4900
Wire Wire Line
	2700 4900 2950 4900
Wire Wire Line
	2800 6050 2700 6050
Wire Wire Line
	2700 6050 2700 6950
NoConn ~ 2800 6150
NoConn ~ 3200 6150
$Comp
L Connector_Generic:Conn_01x04 J13
U 1 1 617C2794
P 6950 5850
F 0 "J13" H 7030 5842 50  0000 L CNN
F 1 "Conn_01x04" H 7030 5751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6950 5850 50  0001 C CNN
F 3 "~" H 6950 5850 50  0001 C CNN
	1    6950 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR029
U 1 1 617C3AEB
P 6700 5700
F 0 "#PWR029" H 6700 5550 50  0001 C CNN
F 1 "+5V" H 6715 5873 50  0000 C CNN
F 2 "" H 6700 5700 50  0001 C CNN
F 3 "" H 6700 5700 50  0001 C CNN
	1    6700 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5750 6700 5750
Wire Wire Line
	6700 5750 6700 5700
$Comp
L power:GND #PWR030
U 1 1 617D3C8F
P 6700 6100
F 0 "#PWR030" H 6700 5850 50  0001 C CNN
F 1 "GND" H 6705 5927 50  0000 C CNN
F 2 "" H 6700 6100 50  0001 C CNN
F 3 "" H 6700 6100 50  0001 C CNN
	1    6700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 6100 6700 5850
Wire Wire Line
	6700 5850 6750 5850
Wire Wire Line
	6750 5950 6600 5950
Wire Wire Line
	6750 6050 6600 6050
Text Label 6600 5950 2    50   ~ 0
TX
Text Label 6600 6050 2    50   ~ 0
RX
$Comp
L Connector_Generic:Conn_01x04 J14
U 1 1 618249C4
P 8500 5900
F 0 "J14" H 8580 5892 50  0000 L CNN
F 1 "Conn_01x04" H 8450 5600 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8500 5900 50  0001 C CNN
F 3 "~" H 8500 5900 50  0001 C CNN
	1    8500 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR031
U 1 1 618249E6
P 8250 5250
F 0 "#PWR031" H 8250 5100 50  0001 C CNN
F 1 "+5V" H 8265 5423 50  0000 C CNN
F 2 "" H 8250 5250 50  0001 C CNN
F 3 "" H 8250 5250 50  0001 C CNN
	1    8250 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5800 8250 5800
Wire Wire Line
	8250 5800 8250 5300
$Comp
L power:GND #PWR032
U 1 1 618249F2
P 8250 6150
F 0 "#PWR032" H 8250 5900 50  0001 C CNN
F 1 "GND" H 8255 5977 50  0000 C CNN
F 2 "" H 8250 6150 50  0001 C CNN
F 3 "" H 8250 6150 50  0001 C CNN
	1    8250 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 6150 8250 5900
Wire Wire Line
	8250 5900 8300 5900
Wire Wire Line
	8300 6100 8150 6100
Text Label 7850 6000 2    50   ~ 0
SCL
Text Label 7850 6100 2    50   ~ 0
SDA
Text Label 3150 2850 0    50   ~ 0
TCA0_WO3_PWM
$Comp
L H_passives:R R4
U 1 1 618804A2
P 9600 3600
F 0 "R4" H 9671 3638 40  0000 L CNN
F 1 "2k2" H 9671 3562 40  0000 L CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 9530 3600 30  0001 C CNN
F 3 "" H 9600 3600 30  0000 C CNN
	1    9600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3400 9800 3400
Connection ~ 9800 3400
Wire Wire Line
	9900 3700 9900 3850
Wire Wire Line
	9900 3850 9600 3850
Wire Wire Line
	9600 3850 9600 3800
Wire Wire Line
	9900 3700 10250 3700
Text Label 7650 3150 2    50   ~ 0
AIN1_SPEED_POT
$Comp
L H_passives:CAP_NP C12
U 1 1 61BCB79B
P 3450 1600
F 0 "C12" H 3553 1638 40  0000 L CNN
F 1 "10u" H 3553 1562 40  0000 L CNN
F 2 "H_smd_passives:Hx_C_0805_2012Metric" H 3488 1450 30  0001 C CNN
F 3 "" H 3450 1600 60  0000 C CNN
	1    3450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1450 3450 1350
Wire Wire Line
	3450 1350 3100 1350
Wire Wire Line
	3100 1850 3450 1850
Wire Wire Line
	3450 1850 3450 1750
Connection ~ 3100 1850
$Comp
L H_passives:CAP_NP C13
U 1 1 61BF9CBE
P 9850 2500
F 0 "C13" H 9953 2538 40  0000 L CNN
F 1 "10u" H 9953 2462 40  0000 L CNN
F 2 "H_smd_passives:Hx_C_0805_2012Metric" H 9888 2350 30  0001 C CNN
F 3 "" H 9850 2500 60  0000 C CNN
	1    9850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2350 9850 2200
Connection ~ 9850 2200
Wire Wire Line
	9850 2200 9750 2200
Wire Wire Line
	9850 2650 10200 2650
Connection ~ 10200 2650
Wire Wire Line
	10200 2650 10200 2400
$Comp
L H_passives:R R5
U 1 1 61C48F50
P 7900 5550
F 0 "R5" H 7971 5588 40  0000 L CNN
F 1 "2k2" H 7971 5512 40  0000 L CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 7830 5550 30  0001 C CNN
F 3 "" H 7900 5550 30  0000 C CNN
	1    7900 5550
	1    0    0    -1  
$EndComp
$Comp
L H_passives:R R6
U 1 1 61C49557
P 8150 5550
F 0 "R6" H 8250 5600 40  0000 L CNN
F 1 "2k2" H 8250 5500 40  0000 L CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 8080 5550 30  0001 C CNN
F 3 "" H 8150 5550 30  0000 C CNN
	1    8150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5350 8150 5300
Wire Wire Line
	7900 5300 7900 5350
Text Label 4450 4750 2    50   ~ 0
PC3
Connection ~ 8150 6100
Wire Wire Line
	8150 6100 7850 6100
Wire Wire Line
	7900 6000 8300 6000
Wire Wire Line
	7900 5750 7900 6000
Wire Wire Line
	7900 5300 8150 5300
Wire Wire Line
	8150 5300 8250 5300
Connection ~ 8150 5300
Connection ~ 8250 5300
Wire Wire Line
	8250 5300 8250 5250
Wire Wire Line
	8150 5750 8150 6100
Wire Wire Line
	7850 6000 7900 6000
Connection ~ 7900 6000
Text Notes 8300 6900 0    168  Italic 34
VacuumPick
Connection ~ 9250 2300
Wire Wire Line
	9250 2300 9350 2300
Wire Wire Line
	9250 1800 9250 2300
$Comp
L H_passives:R R18
U 1 1 61A9403E
P 8650 2050
F 0 "R18" H 8721 2088 40  0000 L CNN
F 1 "220k" H 8721 2012 40  0000 L CNN
F 2 "H_smd_passives:Hx_R_0805_2012Metric" V 8580 2050 30  0001 C CNN
F 3 "" H 8650 2050 30  0000 C CNN
	1    8650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1700 8650 1850
Wire Wire Line
	8650 2250 8650 2300
Wire Wire Line
	9750 1650 9750 1700
$Comp
L Diode:BAT54J D5
U 1 1 61C192A0
P 9500 2300
F 0 "D5" H 9500 2083 50  0000 C CNN
F 1 "MBR0530" H 9500 2174 50  0000 C CNN
F 2 "H_diodes:D_SOD-123" H 9500 2125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54J.pdf" H 9500 2300 50  0001 C CNN
	1    9500 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9150 2300 9250 2300
Wire Wire Line
	9650 2300 10250 2300
Wire Wire Line
	7650 2300 8150 2300
Text Label 9950 2300 0    50   ~ 0
TBTN
Wire Wire Line
	9250 1800 10250 1800
Connection ~ 9750 1700
Wire Wire Line
	9750 1700 9750 2200
Wire Wire Line
	8650 1700 9750 1700
$Comp
L H_schm_symbols:Pushbutton #SW1
U 1 1 61B038A0
P 10650 1850
F 0 "#SW1" H 10650 1850 50  0001 C CNN
F 1 "Pushbutton" H 10650 1850 50  0001 C CNN
F 2 "" H 10650 1850 50  0001 C CNN
F 3 "" H 10650 1850 50  0001 C CNN
	1    10650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4850 5750 4850
Wire Wire Line
	5900 4950 5750 4950
Text Label 1850 7150 1    50   ~ 0
VALVE_1
Text Label 1850 6100 1    50   ~ 0
VALVE_2
Text Notes 4350 5850 0    50   ~ 0
NMOS alternatives:\nDMN2056U\nId = min 350mA\nVds = min 20V\nPackage: SOT23 GSD
Wire Notes Line
	3250 4250 3250 5500
Wire Notes Line
	3250 5500 4050 5500
Wire Notes Line
	4050 5500 4050 7750
Wire Notes Line
	4050 7750 550  7750
Wire Notes Line
	550  4250 4050 4250
Wire Notes Line
	4050 2150 550  2150
Wire Notes Line
	4050 750  550  750 
Wire Notes Line
	4050 750  4050 4250
Wire Notes Line
	550  750  550  7750
Wire Notes Line
	7550 4850 7550 6400
Wire Notes Line
	6450 6400 6450 4850
Wire Notes Line
	6450 4850 8950 4850
Wire Notes Line
	8950 4850 8950 6400
Wire Notes Line
	6450 6400 8950 6400
Text Notes 3200 4400 2    50   ~ 10
VALVE DRIVERS
Text Notes 1100 2300 2    50   ~ 10
PUMP DRIVER
Text Notes 850  900  2    50   ~ 10
POWER
Wire Notes Line
	9050 6400 11100 6400
Wire Notes Line
	11100 6400 11100 1300
Wire Notes Line
	11100 1300 6750 1300
Wire Notes Line
	6750 1300 6750 4750
Wire Notes Line
	6750 4750 9050 4750
Wire Notes Line
	9050 4750 9050 6400
Text Notes 7500 5000 2    50   ~ 10
5V UART
Text Notes 8850 5000 2    50   ~ 10
I2C
Text Notes 7400 1450 2    50   ~ 10
COTROL INPUTS
$EndSCHEMATC
