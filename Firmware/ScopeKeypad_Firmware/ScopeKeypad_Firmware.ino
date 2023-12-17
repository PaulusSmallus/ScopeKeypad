/*-----------------------NOTES-----------------------
 * requires: https://github.com/rogerclarkmelbourne/Arduino_STM32
 * 
 * TODO:  Change keyboard shortcuts from using 'Alt', as this sometimes causes issues. Use 'Ctrl' and 'Shift' only.
 *        Redo firmware, but with better way of selecting different options.
 *---------------------------------------------------
 */


//**************************************************************
//* include one of these options, depending on software
//**************************************************************

#include "Picoscope.h"
//#include "Pulseview.h"

//*************************************************************


#include <USBComposite.h>
#include <WS2812B.h>

USBHID HID;
HIDKeyboard Keyboard(HID);
USBCompositeSerial CompositeSerial;

#define NUM_LEDS 18
WS2812B strip = WS2812B(NUM_LEDS);
int lo_led[][3] = {{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,2,0},{0,0,0},{0,0,0},{0, 0, 51},{0, 51, 0},{51, 0, 0},{51, 51, 0},{10, 10, 10},{0, 25, 51},{10, 10, 10},{51, 0, 51},{0, 51, 25},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0}};
int hi_led[][3] = {{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,30,0},{0,0,0},{0,0,0},{0, 0,102},{0,102,0},{102,0, 0},{102,102,0},{30, 30, 30},{0, 51, 102},{30, 30, 30},{102,0,102},{0,102, 51},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0}};

int output_buttons[5] = {PB0, PB1, PB3, PB4, PB5};
int input_buttons[5] = {PB6, PB7, PB8, PB9, PB10};
int encoderA_inputs[6] = {PA0, PA2, PA4, PA6, PA8, PA10};
int encoderB_inputs[6] = {PA1, PA3, PB12, PB11, PA9, PA15};

bool channelEnabled [9] = {0,0,0,0,0,0,0,0,0};
char channelSelected = 0; //0 is nothing selected

int8_t buttonToLed[26] = {0,0,0,0,0,0,3,0,0,17,16,15,14,13,12,11,10,9,0,0,0,0,0,0,0,0};
int8_t encoderToLed[6] = {0,0,0,0,0,0};
int8_t lookup_table[] = {0,-1,1,0,1,0,0,-1,-1,0,0,1,0,1,-1,0};
char prev_butt = '!';
int8_t instrumentMode = 0;

long enc_count[6] = {0,0,0,0,0,0};
long enc_count_old[6] = {0,0,0,0,0,0};
//volatile long enc_count = 0;
//volatile long enc_count_old = 0;

void encoder_isr_0() {
    //static int8_t lookup_table[] = {0,-1,1,0,1,0,0,-1,-1,0,0,1,0,1,-1,0};
    static uint8_t enc_val_0 = 0;
    
    enc_val_0 = enc_val_0 << 2;
    enc_val_0 = enc_val_0 | (digitalRead(encoderA_inputs[0])) | (digitalRead(encoderB_inputs[0])<<1);
    enc_count[0] = enc_count[0] + lookup_table[enc_val_0 & 0b1111];
}
void encoder_isr_1() {
    static uint8_t enc_val_1 = 0;
    enc_val_1 = enc_val_1 << 2;
    enc_val_1 = enc_val_1 | (digitalRead(encoderA_inputs[1])) | (digitalRead(encoderB_inputs[1])<<1);
    enc_count[1] = enc_count[1] + lookup_table[enc_val_1 & 0b1111];
}
void encoder_isr_2() {
    static uint8_t enc_val_2 = 0;
    enc_val_2 = enc_val_2 << 2;
    enc_val_2 = enc_val_2 | (digitalRead(encoderA_inputs[2])) | (digitalRead(encoderB_inputs[2])<<1);
    enc_count[2] = enc_count[2] + lookup_table[enc_val_2 & 0b1111];
}
void encoder_isr_3() {
    static uint8_t enc_val_3 = 0;
    enc_val_3 = enc_val_3 << 2;
    enc_val_3 = enc_val_3 | (digitalRead(encoderA_inputs[3])) | (digitalRead(encoderB_inputs[3])<<1);
    enc_count[3] = enc_count[3] + lookup_table[enc_val_3 & 0b1111];
}
void encoder_isr_4() {
    static uint8_t enc_val_4 = 0;
    enc_val_4 = enc_val_4 << 2;
    enc_val_4 = enc_val_4 | (digitalRead(encoderA_inputs[4])) | (digitalRead(encoderB_inputs[4])<<1);
    enc_count[4] = enc_count[4] + lookup_table[enc_val_4 & 0b1111];
}
void encoder_isr_5() {
    static uint8_t enc_val_5 = 0;
    enc_val_5 = enc_val_5 << 2;
    enc_val_5 = enc_val_5 | (digitalRead(encoderA_inputs[5])) | (digitalRead(encoderB_inputs[5])<<1);
    enc_count[5] = enc_count[5] + lookup_table[enc_val_5 & 0b1111];
}


int buttons()
{  
  for (int j=0;j<5;j++)
  {
    digitalWrite(output_buttons[0], HIGH);
    digitalWrite(output_buttons[1], HIGH);
    digitalWrite(output_buttons[2], HIGH);
    digitalWrite(output_buttons[3], HIGH);
    digitalWrite(output_buttons[4], HIGH);
    digitalWrite(output_buttons[j], LOW);
    for (int i=0;i<5;i++){
      if(digitalRead(input_buttons[i])==LOW)return(5*i+j+1);
    }
  }
  digitalWrite(output_buttons[0], HIGH);
  digitalWrite(output_buttons[1], HIGH);
  digitalWrite(output_buttons[2], HIGH);
  digitalWrite(output_buttons[3], HIGH);
  digitalWrite(output_buttons[4], HIGH);
  return 0;
}


void setup() {
  disableDebugPorts();
  for (int j=0;j<5;j++) //buttons
  {
    pinMode(output_buttons[j], OUTPUT);
    pinMode(input_buttons[j], INPUT_PULLUP);
  }
  for (int j=0;j<6;j++) //encoders
  {
    pinMode(encoderA_inputs[j], INPUT);
    //attachInterrupt(encoderA_inputs[j],encoder_isr,CHANGE);
    pinMode(encoderB_inputs[j], INPUT);
    //attachInterrupt(encoderB_inputs[j],encoder_isr,CHANGE);
  }
  attachInterrupt(encoderA_inputs[0],encoder_isr_0,CHANGE);
  attachInterrupt(encoderB_inputs[0],encoder_isr_0,CHANGE);
  attachInterrupt(encoderA_inputs[1],encoder_isr_1,CHANGE);
  attachInterrupt(encoderB_inputs[1],encoder_isr_1,CHANGE);
  attachInterrupt(encoderA_inputs[2],encoder_isr_2,CHANGE);
  attachInterrupt(encoderB_inputs[2],encoder_isr_2,CHANGE);
  attachInterrupt(encoderA_inputs[3],encoder_isr_3,CHANGE);
  attachInterrupt(encoderB_inputs[3],encoder_isr_3,CHANGE);
  attachInterrupt(encoderA_inputs[4],encoder_isr_4,CHANGE);
  attachInterrupt(encoderB_inputs[4],encoder_isr_4,CHANGE);
  attachInterrupt(encoderA_inputs[5],encoder_isr_5,CHANGE);
  attachInterrupt(encoderB_inputs[5],encoder_isr_5,CHANGE);
  //pinMode(PC13, INPUT);
  strip.begin();// Sets up the SPI
  strip.show();// Clears the strip, as by default the strip data is set to all LED's off.
  
  //HID.begin(HID_KEYBOARD);
  HID.begin(CompositeSerial, HID_KEYBOARD);
  while (!USBComposite);
  Keyboard.begin(); // useful to detect host capslock state and LEDs
  CompositeSerial.println("hi");
  
}

void loop() {
  loopy();
}
