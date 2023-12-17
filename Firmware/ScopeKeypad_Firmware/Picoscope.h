char enableChan[9] = {'1','2','3','4','9','5','6','7','8'};
char disableChan[9] = {'q','w','e','r','o','t','y','u','i'};
char resetChan[9] = {'a','s','d','f','l','g','h','j','k'};
//char buttonToModifier [26] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
char encoderLeftToChar[6] = {'A','B','C','D','E','F'};
char encoderRightToChar[6] = {'G','H','I','J','K','L'};

void loopy() {
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
