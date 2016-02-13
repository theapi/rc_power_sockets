#include <RCSwitch.h>

#define PIN_RADIO_OUT 10
#define PIN_RADIO_IN  8
#define PIN_MOTION_IN 9

RCSwitch mySwitch = RCSwitch();

void setup() {
  
  Serial.begin(115200);
  
  pinMode(PIN_MOTION_IN, INPUT);

  // Transmitter is connected to Arduino Pin
  mySwitch.enableTransmit(PIN_RADIO_OUT);
    
    
}

void loop() {

  if (digitalRead(PIN_MOTION_IN)) {
    mySwitch.switchOn(1, 1);
    Serial.println("ON");
    
    // Wait a bit
    delay(1000);
    
  } else {
    mySwitch.switchOff(1, 1);
    
    Serial.println("OFF");
    
    // Wait a bit
    delay(1000);
    
  }
  
  /*
  // Switch on:
  // The first parameter represents the setting of the first rotary switch. 
  // In this example it's switched to "1" or "A" or "I". 
  // 
  // The second parameter represents the setting of the second rotary switch. 
  // In this example it's switched to "4" or "D" or "IV". 
  mySwitch.switchOn(1, 1);

  // Wait a bit
  delay(2000);
  
  // Switch off
  mySwitch.switchOff(1, 1);
  
  // Wait a bit
  delay(2000);
  */
}

