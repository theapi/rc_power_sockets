#include <RCSwitch.h>

#define PIN_RADIO_OUT 11
#define PIN_MOTION_IN 1
#define PIN_POWER 7

byte count = 0;
byte num_transmissions = 10; // How many times to send the command.
byte state = 0; // 0 = off, 1 = on

RCSwitch mySwitch = RCSwitch();


void setup() {

  pinMode(PIN_MOTION_IN, INPUT);
  pinMode(PIN_POWER, OUTPUT);
  
  // Keep the power on.
  digitalWrite(PIN_POWER, HIGH);

  // Transmitter is connected to Arduino Pin
  mySwitch.enableTransmit(PIN_RADIO_OUT);

}

void loop() {

  if (digitalRead(PIN_MOTION_IN)) {
    if (state == 0) {
      // Just started turning on so reset the counter.
      count = 0;
    }
    
    state = 1;
    if (count <= num_transmissions) {
      mySwitch.switchOn(1, 1);
      count++;
      // Allow time for transmission
      delay(500);
    }

  } else {
    if (state == 1) {
      // Just started turning off so reset the counter.
      count = 0;
    }
    
    state = 0;
    if (count <= num_transmissions) {
      mySwitch.switchOff(1, 1);
      count++;
      // Allow time for transmission
      delay(500);
    } else {
      // power down 
      digitalWrite(PIN_POWER, LOW);
    }
    
  }

}

