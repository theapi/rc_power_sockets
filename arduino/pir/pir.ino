
/**
 * Use Attiny85 core from here:
 * https://github.com/SpenceKonde/ATTinyCore
 * 
 * Install with the boards manager:
 * http://drazzy.com/package_drazzy.com_index.json
 *
 */

#if defined( __AVR_ATtiny85__ )
  #define __AVR_ATtinyX5__ 1 // For RCSwitch
#endif

// RC Switch library form https://github.com/sui77/rc-switch
#include <RCSwitch.h>
#include <avr/sleep.h>    // Sleep Modes
#include <avr/power.h>    // Power management
#include <avr/wdt.h>      // Watchdog

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

//#define WD_DO_STUFF 225 // How many watchdog interupts before doing real work: 225 * 8 / 60 = 30 minutes.
//const int WD_DO_STUFF = 110; // ~15 minutes
const int WD_DO_STUFF = 4; // ~30

byte count = 0;
byte num_transmissions = 2; // How many times to send the command.
byte state = 0; // 0 = off, 1 = on

volatile int wd_isr = WD_DO_STUFF; // Start in do stuff mode.


RCSwitch mySwitch = RCSwitch();

/**
 * Wake up by watchdog
 */
ISR(WDT_vect) {
  ++wd_isr;
}

/**
 * Wake up by motion stopped.
 */
void isr_motion() { 
  wd_isr = 0; // Reset the timer
}

void setup() {
  
  // Turn off everything but timers
  ADCSRA = 0;  // disable ADC
  power_all_disable();
  power_timer0_enable();
  power_timer1_enable();
  //power_timer2_enable();
  
  pinMode(PIN_MOTION_IN, INPUT);
  pinMode(PIN_POWER, OUTPUT);
  pinMode(PIN_DEBUG, OUTPUT);
  pinMode(PIN_STATUS, OUTPUT);
  
  // Keep the power on.
  digitalWrite(PIN_POWER, HIGH);
  
  digitalWrite(PIN_DEBUG, HIGH);

  watchdog_setup();

  // Transmitter enable
  mySwitch.enableTransmit(PIN_RADIO_OUT);
  
}

void loop() {
  // Tell watchdog all is ok.
  wdt_reset();

  if (wd_isr < WD_DO_STUFF) {
    // Carry on sleeping.
    goToSleep();
  } else {
    if (digitalRead(PIN_MOTION_IN)) {
      // Movement happening.
      if (state == 0) {
        // "Rising edge" of motion sensor.
        state = 1;

        // For when powered by mains & the actual power does not get disconnected.
        // due to a bunch of hardware, mosfets etc not being installed.
        // but good to still have a power status indicator.
        digitalWrite(PIN_POWER, HIGH);

        wd_isr = 0; // Reset the timer

        // Turn on the indicator leds
        digitalWrite(PIN_STATUS, HIGH);

        for (int i = 0; i < num_transmissions; i++) {
          mySwitch.switchOn(1, 1);
          // Allow time for transmission
          delay(250);
        }
      }
    } else {
      // No movement.
      if (state == 1) {
        // "Falling edge" of motion sensor.
        state = 0;

        // Turn off the indicator leds
        digitalWrite(PIN_STATUS, LOW);

        for (int i = 0; i <= num_transmissions; i++) {
          mySwitch.switchOff(1, 1);
          // Allow time for transmission
          delay(250);
        }
      }
      // power down 
      digitalWrite(PIN_POWER, LOW);
    }
    
    goToSleep();
  }

}

void goToSleep() {
  digitalWrite(PIN_DEBUG, LOW);

  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  power_all_disable();

  MCUSR = 0; // clear the reset register 
  noInterrupts();           // timed sequence follows
  attachInterrupt(0, isr_motion, FALLING);
  sleep_enable();
                      
  #if defined( __AVR_ATtiny85__ )
    // no brown out
  #else
    // turn off brown-out enable in software
    MCUCR = bit (BODS) | bit (BODSE);
    MCUCR = bit (BODS); 
  #endif
  
  interrupts();             // guarantees next instruction executed
  sleep_cpu();  
  
  // cancel sleep as a precaution
  sleep_disable();  

  power_timer0_enable();
  power_timer1_enable();
  //power_timer2_enable();
  

  //power_all_enable();

  digitalWrite(PIN_DEBUG, HIGH);
}

/**
 * Watchdog to sleep for maximum time (8 seconds).
 */
void watchdog_setup() {
  // Clear any previous watchdog interupt
  MCUSR = 0;

  #if defined( __AVR_ATtiny85__ )
    // allow changes, disable reset
    WDTCR = bit (WDCE) | bit (WDE);
    // set interrupt mode and an interval 
    WDTCR = bit (WDIE) | bit (WDP3) | bit (WDP0);    // set WDIE, and 8 seconds delay
  #else
    // allow changes, disable reset
    WDTCSR = bit (WDCE) | bit (WDE);
    // set interrupt mode and an interval 
    WDTCSR = bit (WDIE) | bit (WDP3) | bit (WDP0);    // set WDIE, and 8 seconds delay
  #endif

  wdt_reset();
}

