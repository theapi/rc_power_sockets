#include <RCSwitch.h>
#include <avr/sleep.h>    // Sleep Modes
#include <avr/power.h>    // Power management


#define PIN_MOTION_IN 2
#define PIN_POWER 7
#define PIN_RADIO_OUT 6
#define PIN_DEBUG 3

byte count = 0;
byte num_transmissions = 10; // How many times to send the command.
byte state = 0; // 0 = off, 1 = on


RCSwitch mySwitch = RCSwitch();

void ISR_motion() {
  // Just wake  up!
}

void setup() {

  // Turn off everything but timers
  power_all_disable();
  power_timer0_enable();
  power_timer1_enable();
  power_timer2_enable();
  
  pinMode(PIN_MOTION_IN, INPUT);
  pinMode(PIN_POWER, OUTPUT);
  pinMode(PIN_DEBUG, OUTPUT);
  
  // Keep the power on.
  digitalWrite(PIN_POWER, HIGH);

  // Transmitter is connected to Arduino Pin
  mySwitch.enableTransmit(PIN_RADIO_OUT);
  
  attachInterrupt(PIN_MOTION_IN, ISR_motion, CHANGE);

}

void loop() {

  if (digitalRead(PIN_MOTION_IN)) {
    
    digitalWrite(PIN_DEBUG, HIGH);
    
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
    } else {
      count = 0;
      // Go back to sleep until motion change interrupt.
      goToSleep();
    }

  } else {
    
    digitalWrite(PIN_DEBUG, LOW);
    
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
      count = 0;
      // power down 
      digitalWrite(PIN_POWER, LOW);
    }
    
  }

}

void goToSleep()
{
  
  cli();

  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  power_all_disable();

  sleep_enable();
  sei();
  
  // turn off brown-out enable in software
  MCUCR = bit (BODS) | bit (BODSE);  // turn on brown-out enable select
  MCUCR = bit (BODS);        // this must be done within 4 clock cycles of above
  sleep_cpu();              // sleep within 3 clock cycles of above
                      
  sleep_disable();  
  MCUSR = 0; // clear the reset register 
  
  power_timer0_enable();
  power_timer1_enable();
  power_timer2_enable();

}

