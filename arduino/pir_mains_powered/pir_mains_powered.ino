
/**
 * Use Attiny85 core from here:
 * https://github.com/SpenceKonde/ATTinyCore
 * 
 * Install with the boards manager:
 * http://drazzy.com/package_drazzy.com_index.json
 *
 */


#define CODE_NUMBER 1   // top dial
#define CHANNEL_NUMBER 2 // bottom dial

#if defined( __AVR_ATtiny85__ )
  #define __AVR_ATtinyX5__ 1 // For RCSwitch
#endif

// RC Switch library form https://github.com/sui77/rc-switch
#include <RCSwitch.h>

#define PIN_MOTION_IN 2

#if defined( __AVR_ATtiny85__ )
  #define PIN_POWER 1
  #define PIN_RADIO_OUT 4
  #define PIN_DEBUG 0
  #define PIN_STATUS 3 // Not using it as an analog input
#else
  #define PIN_POWER 6
  #define PIN_RADIO_OUT 7
  #define PIN_DEBUG 1
  #define PIN_STATUS 3
#endif

byte num_transmissions = 2; // How many times to send the command.
byte state = 0; // 0 = off, 1 = on


RCSwitch mySwitch = RCSwitch();

unsigned long previousMillis = 0;
const long interval = 30000; // How long to stay on


void setup() {
  
  // Turn off everything but timers
  ADCSRA = 0;  // disable ADC
  //power_all_disable();
  //power_timer0_enable();
  //power_timer1_enable();
  //power_timer2_enable();
  
  pinMode(PIN_MOTION_IN, INPUT);
  
  pinMode(PIN_DEBUG, OUTPUT);
  pinMode(PIN_STATUS, OUTPUT);

  // No power switch in this configuration
  pinMode(PIN_POWER, INPUT);
 
  
  digitalWrite(PIN_DEBUG, LOW);

  // Transmitter enable
  mySwitch.enableTransmit(PIN_RADIO_OUT);
  
}

void loop() {

 unsigned long currentMillis = millis();
 

  if (digitalRead(PIN_MOTION_IN)) {
    digitalWrite(PIN_DEBUG, HIGH);
    
    // reset the timer
    previousMillis = currentMillis;
    
    // Movement happening.
    if (state == 0) {
      // Previously there was no movement,
      // so change state and turn stuff on.
      state = 1;


      // Turn on the indicator leds
      digitalWrite(PIN_STATUS, HIGH);

      for (int i = 0; i < num_transmissions; i++) {
        mySwitch.switchOn(CODE_NUMBER, CHANNEL_NUMBER);
        // Allow time for transmission
        delay(250);
      }
    }
  } else {
    digitalWrite(PIN_DEBUG, LOW);

    if (currentMillis - previousMillis >= interval) {
      previousMillis = currentMillis;
      
      // No movement.
      if (state == 1) {
        // Previously there was movement,
        // so change state and turn stuff off.
        state = 0;
  
        // Turn off the indicator leds
        digitalWrite(PIN_STATUS, LOW);
  
        for (int i = 0; i < num_transmissions; i++) {
          mySwitch.switchOff(CODE_NUMBER, CHANNEL_NUMBER);
          // Allow time for transmission
          delay(250);
        }
      }
    }
    
  }

}


