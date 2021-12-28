# VacuumPick
### DIY vacuum pick up project for hand SMT assembly. 
The hardware is based around an inexpensive air pump, 3 valves and a controller board utilizing the ATTINY806 microcontroller.  
Firmware is available as PlatformIO project (sources) and a precompiled hex file.  
The enclosure and the handle was reused from a damaged Ayoue932 vacuum pick up.

![alt text][pic8]  

--- 
### Operation
* vacuum activated using a touch button on the handle or a footswitch
*  Button 1: Vacuum mode
*  Button 2: Clean/air blow mode for cleaning the nozzle
*  Button 3: pump always on mode
*  0-100% pump speed control using a potentiometer

![alt text][pic11]
![alt text][pic9]
![alt text][pic10]
   ___   
### Electronics  
* ATTINY806 MCU  
* 3 x open drain MOSFET outputs for valve controls
* 3 x illuminated button inputs
* Footswitch or handle button input (incl. 5V power for touch sensors)
* Pot input as motor speed control
* UART TX/RX for debugging purposes
* I2C header for future expansion
* UPDI programmer input
* 12V DC 1A input power requirement  

Board is designed in **KiCad 6.0**, available as project and generated gerber files.   
### [Schematic]

![alt text][pic7]  
![alt text][pic2]  

   ---   
### Mechanical design  
Design is done using FreeCAD:  

![alt text][pic3]      
![alt text][pic4]
![alt text][pic6] 

The main parts are:  
* Base plate used to mount the pump holder and the rest of the assembly (see [MountingPlates])
* Top plate used to mount the valves
* 2 part 3D printed pump holder (step files are available)
* Valve holder - 3D printed part
* Various hardware: M3 standoffs, screws, locknuts, etc.  
 
---  
### System  

![alt text][pic12] 

---  
### Handle  

![alt text][pic14]

Pump can be controlled using either a footswitch or a button installed directly on the handle. The latter is my preferred method which i'm quite used to. I decided to install a capacitive touch button near the hole on the handle achieve two things:
* a slight move of the finger covering the hole enables the pump and increases the suction force
* to release the part all i need to do is to move the finger out of hole, this stops the pump and releases the part.  
  
The touch sensor is made of a piece of thin copper clad and uses the TTP223D-MA6 capacitive touch button IC. There are a few variants of the TTP223 chip, some having an option for open drain or push-pull output. The one i have has one control pin only (momentary/toggle operation) and an open drain output. The board is designed to work with this type of the output, so in case you are using a different model, make sure it's properly configured.  

![alt text][pic13]  

This is a small board i designed for the TTP223-MA6 chip. Important feature is the touch sensor sensitivity adjustment using a small 0 - 51pF 0603 capacitor placed in parallel with the input. Experiment with a value to get a desired button response. In my case (handle made of metal) i had to add a 47pf cap to make it work reliably. Otherwise even touching the handle would enable the pump.  

![alt text][pic15]  

Once installed everything was secured using a heat shrink tube.  

--- 
VacuumPick in action:  

[![VacuumPick](http://img.youtube.com/vi/vpaEpUIYMoU/0.jpg)](http://www.youtube.com/watch?v=vpaEpUIYMoU)

----  
Copyright 2021 by Piotr Zapart  
www.hexefx.com

[pic1]: pics/vacuum3.jpg "VaccumPick"
[pic2]: pics/vpick_rnd4.jpg "VaccumPick"
[pic3]: pics/vpick_rnd1.jpg "VaccumPick"
[pic4]: pics/vpick_rnd2.jpg "VaccumPick"
[pic5]: pics/vpick_rnd3.jpg "VaccumPick"
[pic6]: pics/vpick_parts.jpg "VaccumPick"
[pic7]: pics/vpick_pcb_kicad.gif "VaccumPick"
[pic8]: pics/vpick1.jpg "VaccumPick"
[pic9]: pics/vpick2.jpg "VaccumPick"
[pic10]: pics/vpick3.jpg "VaccumPick"
[pic11]: pics/vpick4.jpg "VaccumPick"
[pic12]: Hardware/VacuumPick_system.gif "VaccumPick"
[pic13]: pics/handle1.jpg "VaccumPick-Handle"
[pic14]: pics/handle2.jpg "VaccumPick-Handle"
[pic15]: pics/handle3.jpg "VaccumPick-Handle"

[Schematic]: /Hardware/VacuumPick_schm.pdf "Schematic"
[MountingPlates]: /Hardware/VacuumPick_MountingPlates.pdf "Plates mech. drawings"