#include <RCSwitch.h>

#define PIN_POWER 6

RCSwitch mySwitch = RCSwitch();

void setup() {

  // Transmitter is connected to Arduino Pin
  mySwitch.enableTransmit(7);
  
  // Optional set pulse length.
  // mySwitch.setPulseLength(320);
  
  pinMode(PIN_POWER, OUTPUT);
  digitalWrite(PIN_POWER, HIGH);
}

void loop() {

  // Switch on:
  // The first parameter represents the setting of the first rotary switch. 
  // In this example it's switched to "1" or "A" or "I". 
  // 
  // The second parameter represents the setting of the second rotary switch. 
  // In this example it's switched to "4" or "D" or "IV". 
  mySwitch.switchOn(1, 1);

  // Wait a bit
  delay(5000);
  
  // Switch off
  mySwitch.switchOff(1, 1);
  
  // Wait a bit
  delay(5000);
  
}

