

#include <RCSwitch.h>
#include <avr/sleep.h>    // Sleep Modes
#include <avr/power.h>    // Power management


#define PIN_MOTION_IN 2
#define PIN_POWER 6
#define PIN_RADIO_OUT 7
#define PIN_DEBUG 1

byte count = 0;
byte num_transmissions = 10; // How many times to send the command.
byte state = 0; // 0 = off, 1 = on


RCSwitch mySwitch = RCSwitch();

void ISR_motion() {
  // Wake  up!
  // cancel sleep as a precaution
  sleep_disable();
  detachInterrupt(0);
}

void setup() {

  // Turn off everything but timers
  ADCSRA = 0;  // disable ADC
  power_all_disable();
  power_timer0_enable();
  power_timer1_enable();
  power_timer2_enable();
  
  pinMode(PIN_MOTION_IN, INPUT);
  pinMode(PIN_POWER, OUTPUT);
  pinMode(PIN_DEBUG, OUTPUT);
  
  // Keep the power on.
  digitalWrite(PIN_POWER, HIGH);
  
  digitalWrite(PIN_DEBUG, HIGH);

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
    if (count < num_transmissions) {
      mySwitch.switchOn(1, 1);
      count++;
      // Allow time for transmission
      delay(500);
    } else {
      // Go back to sleep until motion change interrupt.
      goToSleep();
    }

  } else {
    
    
    
    if (state == 1) {
      // Just started turning off so reset the counter.
      count = 0;
    }
    
    state = 0;
    if (count < num_transmissions) {
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

void goToSleep()
{
  digitalWrite(PIN_DEBUG, LOW);

  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  power_all_disable();

  MCUSR = 0; // clear the reset register 
  noInterrupts();           // timed sequence follows
  attachInterrupt(0, ISR_motion, CHANGE);
  sleep_enable();
                      
  // turn off brown-out enable in software
  MCUCR = bit (BODS) | bit (BODSE);
  MCUCR = bit (BODS); 
  interrupts();             // guarantees next instruction executed
  sleep_cpu();  
  
  // cancel sleep as a precaution
  sleep_disable();  
  
  
  
  power_timer0_enable();
  power_timer1_enable();
  power_timer2_enable();
  

  //power_all_enable();

  digitalWrite(PIN_DEBUG, HIGH);
}

