# ScopeKeypad
This project is to create a traditional oscilloscope interface to use with the PicoScope software (or more generally other usb scopes).
It's useful for people who are more comfortable with traditional oscilloscope buttons and dials.


![image](ScopeKeypad_low_quality.JPG)
https://youtu.be/zDIKAT928zg

It uses an STM32 (arduino 'bluepill') as the main processor. It acts as a keyboard, so pressing buttons or rotating dials just sends keyboard shortcuts to the PC over USB.

To use:

Make circuit

	- get the 'main_pcb' made. (in the Hardware\gerbers folder)
	
	- get one of the 'front_panels' made. There is one for 7mm buttons, and one for 12mm buttons.
	
	- Solder all the components on
	
	- Solder JP1 and JP2 depending on if you brought Sparkfun or Worldsemi LEDs (they have different pinouts -_- ).
	
	
upload firmware

	- Install Arduino_STM32 ( https://github.com/rogerclarkmelbourne/Arduino_STM32 )
	
	- Open ScopeKeypad\Firmware\ScopeKeypad_Firmware\ScopeKeypad_Firmware.ino
	
	- Upload firmware with settings:
	
		- Board: "Generic STM32F103C"
		
		- Variant: "STM32F103C8 (20k RAM, 65k Flash)"
		
		- Upload method: "STLink"
		
		- CPU Speed(MHz): "72Mhz (normal)"
		
		- Optimize: "Smallest (default)"
		
		
upload shortcut settings to PicoScope software

	- Open PicoScope
	
	- Click 'Tools'
	
	- Click 'Preferences...'
	
	- Open the 'Keyboard' tab
	
	- Under 'Select keyboard map.', select 'import'
	
	- Open 'Software\picoscope_shortcuts.pskeys'
	


TODO:

	- change keyboard shortcuts from using 'Alt', as this sometimes causes issues. Use 'Ctrl' and 'Shift' only.

How it all works:

	The encoders are connected to hardware interrupts, which keep track of the position.
	
	The buttons are connected in a matrix.
	
	The firmware then checks for any changes, and sends keyboard shortcuts.
