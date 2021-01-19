/*-----------------------NOTES-----------------------
 * requires: https://github.com/rogerclarkmelbourne/Arduino_STM32
 * 
 * TODO: change keyboard shortcuts from using 'Alt', as this sometimes causes issues. Use 'Ctrl' and 'Shift' only.
 *---------------------------------------------------
 */

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
char enableChan[9] = {'1','2','3','4','9','5','6','7','8'};
char disableChan[9] = {'q','w','e','r','o','t','y','u','i'};
char resetChan[9] = {'a','s','d','f','l','g','h','j','k'};
char buttonToModifier [26] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
char encoderLeftToChar[6] = {'A','B','C','D','E','F'};
char encoderRightToChar[6] = {'G','H','I','J','K','L'};
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
  int8_t butt = buttons();
  //CompositeSerial.println(buttonToChar[butt]);

  if ((prev_butt!=butt)&&(butt)){
    CompositeSerial.println(butt);
    /*
     * 9 to 17 are channel 1 to 8 + sig-gen
     *    acquire run/stop = 21
     *    acquire auto = 20
     *    Trigger mode = 19
     *    Trigger set source = 18
     * Trigger level = 4
     *    print = 22
     * intensity = 6
     * vertical position = 1
     * vertical scale = 2
     * Horizontal position = 5
     * Horizontal scale = 3
     */
    if (butt == 1 && channelSelected){ //veritcal position (zero)
      Keyboard.press(KEY_LEFT_SHIFT);
      Keyboard.write(resetChan[channelSelected-9]);
      Keyboard.release(KEY_LEFT_SHIFT);
    }
    if (butt == 2){ //vertical scale (zoom)
      
    }
    if (butt == 3){ //Horizontal scale (zoom)
      
    }
    if (butt == 4){ //Trigger zero
      Keyboard.write('c');
    }
    if (butt == 5){ //Horizontal position (zero)
      
    }
    if (butt == 6){ //intensity (mode)
      /*
       * this button will change between 'persisence' and 'scope' mode
       * Persistance mode = Ctrl + Shift + z
       * Scope mode = Ctrl + Shift + x
       */
       Keyboard.press(KEY_LEFT_SHIFT);
       Keyboard.press(KEY_LEFT_CTRL);
       if(instrumentMode == 0){
        instrumentMode = 1;
        Keyboard.write('z');
       }
       else{
        instrumentMode = 0;
        Keyboard.write('x');
       }
       Keyboard.release(KEY_LEFT_CTRL);
       Keyboard.release(KEY_LEFT_SHIFT);
       if(instrumentMode){
        strip.setPixelColor(buttonToLed[butt], strip.Color(hi_led[butt][0],hi_led[butt][1],hi_led[butt][2]));
       }
       else {
        strip.setPixelColor(buttonToLed[butt], strip.Color(lo_led[butt][0],lo_led[butt][1],lo_led[butt][2]));
       }
       strip.show();
    }
    if (butt == 19){
      Keyboard.write('z');
    }
    if (butt == 18){
      Keyboard.write('x');
    }
    if (butt == 22){
      Keyboard.press(KEY_LEFT_CTRL);
      Keyboard.press(KEY_LEFT_SHIFT);
      Keyboard.write(KEY_F12);
      Keyboard.release(KEY_LEFT_CTRL);
      Keyboard.release(KEY_LEFT_SHIFT);
    }
    if (butt == 21){
      Keyboard.write(' ');
    }
    if (butt == 20){
      Keyboard.write(KEY_F2);
    }
    if (butt >=9 && butt <= 17){ //channel button pressed
      if(channelEnabled[butt-9] == 0){ //if channel is disabled...
        channelEnabled[butt-9] = 1; //...enable channel
        channelSelected = butt;
        Keyboard.press(KEY_LEFT_ALT);
        Keyboard.press(KEY_LEFT_SHIFT);
        Keyboard.write(enableChan[butt-9]);
        Keyboard.release(KEY_LEFT_SHIFT);
        Keyboard.release(KEY_LEFT_ALT);
      }
      else if(channelSelected == butt){ //if channel is selected...
        channelEnabled[butt-9] = 0; // ...disable channel
        channelSelected = 0;
        Keyboard.press(KEY_LEFT_ALT);
        Keyboard.press(KEY_LEFT_SHIFT);
        Keyboard.write(disableChan[butt-9]);
        Keyboard.release(KEY_LEFT_SHIFT);
        Keyboard.release(KEY_LEFT_ALT);
      }
      else{ //if channel is enabled and not selected...
        channelSelected = butt;// ...select channel
      }
      for (int j=9;j<18;j++){
        if(channelSelected == j){ //if channel is selected...
          strip.setPixelColor(buttonToLed[j], strip.Color(hi_led[j][0],hi_led[j][1],hi_led[j][2])); //...turn that LED on full brightness
        }
        else if(channelEnabled[j-9]){ //if the channel is enabled...
          strip.setPixelColor(buttonToLed[j], strip.Color(lo_led[j][0]/2,lo_led[j][1]/2,lo_led[j][2]/2)); //...set LED to low brightness
        }
        else{
          strip.setPixelColor(buttonToLed[j], strip.Color(0,0,0));
        }
      }
      //delay(250);
      strip.show();
    }
    delay(250);
  }
  /*
   * Vertical position = 0
   * Vertical scale = 1
   * Horizontal position = 4
   * Horizontal scale = 2
   * Intensity = 5
   * trigger level = 3
   */
  for (int j=0;j<6;j++) //encoders
  {
    if(abs(enc_count_old[j] - enc_count[j]) >= 2){
      CompositeSerial.println(j);
      if(j==0 && channelSelected){ //Vertical position
        Keyboard.press(KEY_LEFT_SHIFT);
        if(enc_count[j] < enc_count_old[j]){
          Keyboard.write(enableChan[channelSelected-9]);
        }
        else {
          Keyboard.write(disableChan[channelSelected-9]);
        }
        Keyboard.release(KEY_LEFT_SHIFT);
      }
      else if(j==1 && channelSelected){ //Vertical scale
        if(enc_count[j] < enc_count_old[j]){
          Keyboard.write(enableChan[channelSelected-9]);
        }
        else {
          Keyboard.write(disableChan[channelSelected-9]);
        }
      }
      if(j==2){ //Horizontal scale
        Keyboard.press(KEY_LEFT_CTRL);
        if(enc_count[j] < enc_count_old[j]){
          Keyboard.write(KEY_F3);
        }
        else{
          Keyboard.write(KEY_F2);
        }
        Keyboard.release(KEY_LEFT_CTRL);
      }
      if(j==3){ //trigger level
        if(enc_count[j] < enc_count_old[j]){
          Keyboard.write('b');
        }
        else{
          Keyboard.write('v');
        }
      }
      if(j==4){ //Horizontal position
        if(enc_count[j] < enc_count_old[j]){
          Keyboard.write('n');
        }
        else{
          Keyboard.write('m');
        }
      }
      if(j==5){ //Intensity
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.press(KEY_LEFT_SHIFT);
        if(enc_count[j] < enc_count_old[j]){
          Keyboard.write('-');
        }
        else{
          Keyboard.write('=');
        }
        Keyboard.release(KEY_LEFT_SHIFT);
        Keyboard.release(KEY_LEFT_CTRL);
      }
      enc_count_old[j] = enc_count[j];
    }
  }
  prev_butt=butt;
}
