#include <Adafruit_ssd1306syp.h>
#include <SPI.h>
#include <SdFat.h>
#include <MD_MIDIFile.h>
#include <Bounce2.h>
#include <EEPROM.h>

#define SERIAL_RATE 57600 //use for printing to serial monitor

//Output pins from the Teensy
#define SCL_PIN 3   //Display I2C 
#define SDA_PIN 4   //Display I2C 
#define encButton 1 //Encoder button
#define encoderA 0  //Encoder rotate left
#define encoderB 9  //Encoder rotate right

#define SRclockPin 26       //Driver clock
#define SRenablePin 25      //Driver enable
#define SRdataPin 27        //Driver data
#define SRSELclockPin 32    //Selection shift reg clock
#define SRSELenablePin 29   //Selection shift reg enable
#define SRSELdataPin 28     //Selection shift reg data
#define SRSELlatchPin_1 31  //Selection shift reg latchA
#define SRSELlatchPin_2 30  //Selection shift reg latchB

#define loopButton 11 //Loop button
#define playButton 10 //Play button
#define stopButton 2  //Stop button

//Input pins from the Teensy
#define Gate_1 7    //Gate 1
#define CV_1 20     //Potentiometer control
#define Gate_2 6    //rGate 2
#define CV_2 21     //no input
#define Gate_3 8    //Gate 3
#define CV_3 22     //no input
#define Gate_4 5    //Gate 4
#define CV_4 23     //true CV input

//Setting required display and MIDI variables
Adafruit_ssd1306syp display(SDA_PIN, SCL_PIN);
SdFatSdio sd; //Teensy 3.6
SdFile file;
MD_MIDIFile SMF;

//Setting debounce variables
Bounce debounceLoop = Bounce();
Bounce debouncePlay = Bounce();
Bounce debounceStop = Bounce();
Bounce debounceEnc = Bounce();

int numberOfFiles;    //number of files on SD card
char currentFileName[13] = {};    //holds file name for display
const char loopOn[13] = {'L', 'o', 'o', 'p', 'O', 'N'}; //For loop on indication
//For mode of operation indication
const char modeText[15] = {'M', 'I', 'D', 'I', 'C', 'V', '/', 'G', 'a', 't', 'e', 'M', 'o', 'd', 'e'};
int encCounter = 0;   //dial position of encoder
int encState;         //current state of encoder dial
int encLastState;     //previous state of encoder dial
byte midiStatus = 0;  //0_default
                      //1/2_play/pause
                      //3_stop
byte loopStatus = 0;  //0_off
                      //1_on
byte modeStatus = 0;  //0_MIDI//
                      //1_CV/Gate                 
int wasPaused = 0;    //Goes high when paused
int solenoidCount = 0; //number of active solenoids
const int maxSolenoid = 15; //max number of active solenoids
unsigned long buttonPressTimeStamp; //Time of button press
int offAry[24] = {0}; //For deactivation of all solenoids
int CVAry1_2[24] = {0};  //Octave1_2 solenoid statuses
int CVAry3_4[24] = {0};  //Octave3_4 solenoid statuses
int CVAry5_6[24] = {0};  //Octave5_6 solenoid statuses
int CVAry7_8[24] = {0};  //Octave7 solenoid statuses
int Note1;  //CV1 note
int Note2;  //CV2 note
int Note3;  //CV3 note
int Note4;  //CV4 note
float CV1min; //min used CV1 value
float CV1inc; //change in CV1 per note
float CV2min; //min used CV2 value
float CV2inc; //change in CV2 per note
float CV3min; //min used CV3 value
float CV3inc; //change in CV3 per note
float CV4min; //min used CV4 value
float CV4inc; //change in CV4 per note

//values of for each note
int octaves1_2[24] = {0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f,
                     0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b};
int octaves3_4[24] = {0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47,
                     0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53};
int octaves5_6[24] = {0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f,
                     0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b};
int octaves7_8[24] = {0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77,
                     0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83};

int latchAry1[8] = {1, 1, 1, 1, 1, 1, 1, 1}; //initial latchA values
int latchAry2[8] = {1, 1, 1, 1, 1, 1, 1, 1}; //initial latchB values

/**************************************************************************/
void setup() {
  //delay for display initialization. Just safety precaution
  delay(1000);
  display.initialize();

  //set pin mode for outputs
  pinMode(SRclockPin, OUTPUT); 
  pinMode(SRdataPin, OUTPUT);
  pinMode(SRSELclockPin, OUTPUT);
  pinMode(SRSELdataPin, OUTPUT);
  pinMode(SRSELlatchPin_1, OUTPUT);
  pinMode(SRSELlatchPin_2, OUTPUT);
  pinMode(SRSELenablePin, OUTPUT);
  midiSilence(); //Ensure solendoids begin off
  pinMode(SRenablePin, OUTPUT);

  //set pin mode for inputs
  pinMode (encoderA, INPUT);
  pinMode (encoderB, INPUT);
  attachInterrupt(digitalPinToInterrupt(encButton), ISR_encoderSW, RISING);
  attachInterrupt(digitalPinToInterrupt(playButton), ISR_play_pause, RISING);
  attachInterrupt(digitalPinToInterrupt(stopButton), ISR_stop, RISING);
  attachInterrupt(digitalPinToInterrupt(loopButton), ISR_loop, RISING);
  pinMode (CV_1, INPUT);
  pinMode (CV_2, INPUT);
  pinMode (CV_3, INPUT);
  pinMode (CV_4, INPUT);

  analogReadResolution(13); //set ADC read resolution

  //Pull CV1 calibration values from EEPROM
  union
  {
    byte b[sizeof(CV1min)];
    float f;
  } temp;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    temp.b[i] = EEPROM.read(i);
  }
  CV1min = temp.f;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    temp.b[i] = EEPROM.read(4 + i);
  }
  CV1inc = temp.f;
  CV1min = CV1min - (CV1inc/2);
  
  //Pull CV2 calibration values from EEPROM
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    temp.b[i] = EEPROM.read(8 + i);
  }
  CV2min = temp.f;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    temp.b[i] = EEPROM.read(12 + i);
  }
  CV2inc = temp.f;
  CV2min = CV2min - (CV2inc/2);

  //Pull CV3 calibration values from EEPROM
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    temp.b[i] = EEPROM.read(16 + i);
  }
  CV3min = temp.f;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    temp.b[i] = EEPROM.read(20 + i);
  }
  CV3inc = temp.f;
  CV3min = CV3min - (CV3inc/2);

  //Pull CV4 calibration values from EEPROM
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    temp.b[i] = EEPROM.read(24 + i);
  }
  CV4min = temp.f;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    temp.b[i] = EEPROM.read(28 + i);
  }
  CV4inc = temp.f;
  CV4min = CV4min - (CV4inc/2);

  //Set button debouncing
  debouncePlay.attach(loopButton);
  debouncePlay.interval(50);
  debouncePlay.attach(playButton);
  debouncePlay.interval(50);
  debounceStop.attach(stopButton);
  debounceStop.interval(50);
  debounceEnc.attach(encButton);
  debounceEnc.interval(50);

  //initialize encoder
  encLastState = digitalRead(encoderA);
  sdInitAndExtract();
  
  //Fill the currentFileName array with first file on card on power on or reset
  sd.vwd()->rewind();
  if (file.openNext(sd.vwd(), O_READ)) {
    file.close();
    if (file.openNext(sd.vwd(), O_READ)) {
      file.getName(currentFileName, 13);
      file.close();
    }
  }

  //Using the Serial.begin() while using the display slows things down
  //Toggle use for testing
  Serial.begin(SERIAL_RATE);

  //initialize MIDI
  SMF.begin(&sd);
  SMF.setMidiHandler(midiCallback);
}

/**************************************************************************/
void loop() {
  switch (modeStatus) {
            //MIDI Mode of operation
    case 0: //MIDI Mode of operation
            //MIDI Mode of operation
      int error;
      switch (midiStatus) {
        case 0: //MIDI idle
          updateEncoder();
          updateDisplay();
          break;
        case 1: //MIDI play
          SMF.setFilename(currentFileName);
          error = SMF.load(); //load file check
          if (error != -1) {  //file not loaded
            display.clear();
            display.setTextSize(2);
            display.setTextColor(WHITE);
            display.setCursor(0, 0);
            display.print("Error:");
            display.setTextSize(1);
            display.setCursor(0, 16);
            display.print("File could not be \nloaded");
            display.update();
            delay(2000);
          }
          else {  //play loaded file
            while (!SMF.isEOF()) {
              if (SMF.getNextEvent()) {
                if (midiStatus == 2) { //if paused
                  midiOffTemp();
                  wasPaused = 1;
                  SMF.pause(true);
                }
                if (midiStatus == 3) { //if stopped
                  midiSilence();
                  solenoidCount = 0;
                  break;
                }
                updateEncoder();
                updateDisplay();
              }
              updateEncoder();
              updateDisplay();
            }
          }
          SMF.close(); //file ends
          solenoidCount = 0;
          midiStatus = 0;
          break;
        case 3: //MIDI stop
          SMF.restart();
          solenoidCount = 0;
          midiStatus = 0;
          wasPaused = 0;
          break;
      }
      break;
            //
    case 1: //CV/Gate Mode of operation
            //
      updateDisplay();
      break;
  }
}

/**************************************************************************/

/*  This function is an interrupt routine triggered by a positive pulse from
    the play button. It causes the value of midiStatus to toggle between 1
    and 2. These values are used in the switch/case in the main loop() to
    give this button both play and pause functionality.
*/
void ISR_play_pause() {
  if (midiStatus == 1) {
    midiStatus = 2;
  }
  else {
    midiStatus = 1;
    SMF.pause(false);
  }
}

/*  Works the same as the play/pause interrupt routine except it uses the stop
     button.
*/
void ISR_stop() {
  midiStatus = 3;
  buttonPressTimeStamp = millis();
  SMF.pause(false);
  attachInterrupt(digitalPinToInterrupt(stopButton), ISR_mode, FALLING);
}

/*  Works the same as the play/pause interrupt routine except it uses the loop
    button.
*/
void ISR_loop()
{
  if (modeStatus == 0)
  {
    if (loopStatus == 0)
    {
      SMF.looping(true);
      loopStatus = 1;
    }
    else
    {
      SMF.looping(false);
      loopStatus = 0;
    }
  }
}

/*  Interupt that is triggered when the stop button is released.
    Determines if the button was held long enough to go into
    CV calibration (30 seconds) or switch modes of operation (3 seconds).
*/
void ISR_mode()
{
  buttonPressTimeStamp = millis()-buttonPressTimeStamp;
  if (buttonPressTimeStamp > 30000) //run CV calibration
  {
    runCalibration();
  }
  else if (buttonPressTimeStamp > 3000) //change operating mode
  {
    if (modeStatus == 0) //CV/Gate mode on
    {
      attachInterrupt(digitalPinToInterrupt(Gate_1), ISR_Gate_1_ON, HIGH);
      attachInterrupt(digitalPinToInterrupt(Gate_2), ISR_Gate_2_ON, HIGH);
      attachInterrupt(digitalPinToInterrupt(Gate_3), ISR_Gate_3_ON, HIGH);
      attachInterrupt(digitalPinToInterrupt(Gate_4), ISR_Gate_4_ON, HIGH);
      modeStatus = 1;
    }
    else //MIDI mode on
    {
      detachInterrupt(digitalPinToInterrupt(Gate_1));
      detachInterrupt(digitalPinToInterrupt(Gate_2));
      detachInterrupt(digitalPinToInterrupt(Gate_3));
      detachInterrupt(digitalPinToInterrupt(Gate_4));
      modeStatus = 0;
      midiSilence();
    }
  }
  attachInterrupt(digitalPinToInterrupt(stopButton), ISR_stop, RISING);
}

/*  This function calibrates the CV inputs to function properly
    with the intended audio controlling device.
*/
void runCalibration()
{ 
  //Turn off interupts
  detachInterrupt(digitalPinToInterrupt(encButton));
  detachInterrupt(digitalPinToInterrupt(playButton));
  detachInterrupt(digitalPinToInterrupt(stopButton));
  detachInterrupt(digitalPinToInterrupt(loopButton));
  detachInterrupt(digitalPinToInterrupt(Gate_1));
  detachInterrupt(digitalPinToInterrupt(Gate_2));
  detachInterrupt(digitalPinToInterrupt(Gate_3));
  detachInterrupt(digitalPinToInterrupt(Gate_4));

  int playState = 0;  //Denotes when play is pressed
  int stopState = 0;  //Denotes when stop is pressed
  int sampleFlag = 0; //Exits while loop after button press
  float CVLow = 0;    //Lower control voltage
  float CVHigh = 0;   //Upper control voltage
  float CVperNote;    //Change in CV/note
  union
  {
    byte b[sizeof(CVLow)];
    float f;
  } temp;             //variable can be used as float or byte

  //First prompt to continue calibration
  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(0, 16);
  display.print("CAUTION:Press STOP to");
  display.setCursor(0, 24);
  display.print("return. Calibration");
  display.setCursor(0, 32);
  display.print("must be completed");
  display.setCursor(0, 40);
  display.print("once begun. Press");
  display.setCursor(0, 48);
  display.print("PLAY to continue");
  display.update();
  delay(1000);

  //Wait for button press
  while (!sampleFlag)
  {
    playState = digitalRead(playButton);
    stopState = digitalRead(stopButton);
    if (stopState) //Return from calibration
    {
      attachInterrupt(digitalPinToInterrupt(encButton), ISR_encoderSW, RISING);
      attachInterrupt(digitalPinToInterrupt(playButton), ISR_play_pause, RISING);
      attachInterrupt(digitalPinToInterrupt(stopButton), ISR_stop, RISING);
      attachInterrupt(digitalPinToInterrupt(loopButton), ISR_loop, RISING);
      attachInterrupt(digitalPinToInterrupt(Gate_1), ISR_Gate_1_ON, HIGH);
      attachInterrupt(digitalPinToInterrupt(Gate_2), ISR_Gate_2_ON, HIGH);
      attachInterrupt(digitalPinToInterrupt(Gate_3), ISR_Gate_3_ON, HIGH);
      attachInterrupt(digitalPinToInterrupt(Gate_4), ISR_Gate_4_ON, HIGH);
      return;
    }
    if (playState) //Continue calibration
    {
      sampleFlag = 1;
    }
  }

  sampleFlag = 0; //reset flag

  //Second prompt to continue calibration
  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(0, 16);
  display.print("Are you sure you wish");
  display.setCursor(0, 24);
  display.print("to continue?  THIS IS");
  display.setCursor(0, 32);
  display.print("YOUR FINAL CHANCE");
  display.setCursor(0, 40);
  display.print("TO RETURN. Press PLAY");
  display.setCursor(0, 48);
  display.print("to continue");
  display.setCursor(0, 56);
  display.print("calibration");
  display.update();
  delay(1000);

  //Wait for button press
  while (!sampleFlag)
  {
    playState = digitalRead(playButton);
    stopState = digitalRead(stopButton);
    if (stopState)
    {
      attachInterrupt(digitalPinToInterrupt(encButton), ISR_encoderSW, RISING);
      attachInterrupt(digitalPinToInterrupt(playButton), ISR_play_pause, RISING);
      attachInterrupt(digitalPinToInterrupt(stopButton), ISR_stop, RISING);
      attachInterrupt(digitalPinToInterrupt(loopButton), ISR_loop, RISING);
      attachInterrupt(digitalPinToInterrupt(Gate_1), ISR_Gate_1_ON, HIGH);
      attachInterrupt(digitalPinToInterrupt(Gate_2), ISR_Gate_2_ON, HIGH);
      attachInterrupt(digitalPinToInterrupt(Gate_3), ISR_Gate_3_ON, HIGH);
      attachInterrupt(digitalPinToInterrupt(Gate_4), ISR_Gate_4_ON, HIGH);
      return;
    }
    if (playState)
    {
      sampleFlag = 1;
    }
  }

  sampleFlag = 0; //reset flag

  //Prompt for lower CV on input 1
  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(0, 20);
  display.print("Apply 2V to CV1 and");
  display.setCursor(0, 28);
  display.print("press Play");
  display.update();
  delay(1000);

  //Wait for button press
  while (!sampleFlag)
  {
    sampleFlag = digitalRead(playButton);
  }

  //Sample CV input and get average
  for (int i = 0; i < 100; i++)
  {
    CVLow = CVLow + (analogRead(CV_1)*3.3/8192)*10000;
  }
  CVLow = CVLow/100;
  CV1min = CVLow;
  temp.f = CVLow;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    EEPROM.write(i, temp.b[i]);
  }
  
  sampleFlag = 0; //Reset flag

  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(30, 20);
  display.print("WAIT");
  display.update();
  delay(2000);

  //Prompt for upper CV on input 1
  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(0, 20);
  display.print("Apply 4V to CV1 and");
  display.setCursor(0, 28);
  display.print("press Play");
  display.update();

  //Wait for button press
  while (!sampleFlag)
  {
    sampleFlag = digitalRead(playButton);
  }

  //Sample CV input and get average
  for (int i = 0; i < 100; i++)
  {
    CVHigh = CVHigh + (analogRead(CV_1)*3.3/8192)*10000;
  }
  CVHigh = CVHigh/100;
  CVperNote = (CVHigh - CVLow)/24;
  CV1inc = CVperNote;
  CV1min = CV1min - (CV1inc/2);
  temp.f = CVperNote;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    EEPROM.write(4+i, temp.b[i]);
  }

  //Reset values
  sampleFlag = 0;
  CVLow = 0;
  CVHigh = 0;

  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(30, 20);
  display.print("WAIT");
  display.update();
  delay(2000);

  //Prompt for lower CV on input 2
  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(0, 20);
  display.print("Apply 2V to CV2 and");
  display.setCursor(0, 28);
  display.print("press Play");
  display.update();
  delay(1000);

  //Wait for button press
  while (!sampleFlag)
  {
    sampleFlag = digitalRead(playButton);
  }

  //Sample CV input and get average
  for (int i = 0; i < 100; i++)
  {
    CVLow = CVLow + (analogRead(CV_2)*3.3/8192)*10000;
  }
  CVLow = CVLow/100;
  CV2min = CVLow;
  temp.f = CVLow;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    EEPROM.write(8+i, temp.b[i]);
  }
  
  sampleFlag = 0; //reset flag

  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(30, 20);
  display.print("WAIT");
  display.update();
  delay(2000);

  //Prompt for upper CV on input 2
  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(0, 20);
  display.print("Apply 4V to CV2 and");
  display.setCursor(0, 28);
  display.print("press Play");
  display.update();

  //Wait for button press
  while (!sampleFlag)
  {
    sampleFlag = digitalRead(playButton);
  }

  //Sample CV input and get average
  for (int i = 0; i < 100; i++)
  {
    CVHigh = CVHigh + (analogRead(CV_2)*3.3/8192)*10000;
  }
  CVHigh = CVHigh/100;
  CVperNote = (CVHigh - CVLow)/24;
  CV2inc = CVperNote;
  CV2min = CV2min - (CV2inc/2);
  temp.f = CVperNote;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    EEPROM.write(12+i, temp.b[i]);
  }

  //Reset values
  sampleFlag = 0;
  CVLow = 0;
  CVHigh = 0;

  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(30, 20);
  display.print("WAIT");
  display.update();
  delay(2000);

  //Prompt for lower CV on input 3
  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(0, 20);
  display.print("Apply 2V to CV3 and");
  display.setCursor(0, 28);
  display.print("press Play");
  display.update();
  delay(1000);

  //Wait for button press
  while (!sampleFlag)
  {
    sampleFlag = digitalRead(playButton);
  }

  //Sample CV input and get average
  for (int i = 0; i < 100; i++)
  {
    CVLow = CVLow + (analogRead(CV_3)*3.3/8192)*10000;
  }
  CVLow = CVLow/100;
  CV3min = CVLow;
  temp.f = CVLow;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    EEPROM.write(16+i, temp.b[i]);
  }
  
  sampleFlag = 0; //reset flag

  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(30, 20);
  display.print("WAIT");
  display.update();
  delay(2000);

  //Prompt for upper CV on input 3
  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(0, 20);
  display.print("Apply 4V to CV3 and");
  display.setCursor(0, 28);
  display.print("press Play");
  display.update();

  //Wait for button press
  while (!sampleFlag)
  {
    sampleFlag = digitalRead(playButton);
  }

  //Sample CV input and get average
  for (int i = 0; i < 100; i++)
  {
    CVHigh = CVHigh + (analogRead(CV_3)*3.3/8192)*10000;
  }
  CVHigh = CVHigh/100;
  CVperNote = (CVHigh - CVLow)/24;
  CV3inc = CVperNote;
  CV3min = CV3min - (CV3inc/2);
  temp.f = CVperNote;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    EEPROM.write(20+i, temp.b[i]);
  }

  //reset values
  sampleFlag = 0;
  CVLow = 0;
  CVHigh = 0;

  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(30, 20);
  display.print("WAIT");
  display.update();
  delay(2000);

  //Prompt for lower CV on input 4
  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(0, 20);
  display.print("Apply 2V to CV4 and");
  display.setCursor(0, 28);
  display.print("press Play");
  display.update();
  delay(1000);

  //Wait for button press
  while (!sampleFlag)
  {
    sampleFlag = digitalRead(playButton);
  }

  //Sample CV input and get average
  for (int i = 0; i < 100; i++)
  {
    CVLow = CVLow + (analogRead(CV_4)*3.3/8192)*10000;
  }
  CVLow = CVLow/100;
  CV4min = CVLow;
  temp.f = CVLow;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    EEPROM.write(24+i, temp.b[i]);
  }
  
  sampleFlag = 0; //reset flag

  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(30, 20);
  display.print("WAIT");
  display.update();
  delay(2000);

  //Prompt for upper CV on input 4
  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(0, 20);
  display.print("Apply 4V to CV4 and");
  display.setCursor(0, 28);
  display.print("press Play");
  display.update();

  //Wait for button press
  while (!sampleFlag)
  {
    sampleFlag = digitalRead(playButton);
  }

  //Sample CV input and get average
  for (int i = 0; i < 100; i++)
  {
    CVHigh = CVHigh + (analogRead(CV_4)*3.3/8192)*10000;
  }
  CVHigh = CVHigh/100;
  CVperNote = (CVHigh - CVLow)/24;
  CV4inc = CVperNote;
  CV4min = CV4min - (CV4inc/2);
  temp.f = CVperNote;
  for (unsigned int i = 0; i < sizeof(temp); i++)
  {
    EEPROM.write(28+i, temp.b[i]);
  }

  display.clear();
  display.setCursor(0, 0);
  display.print("CV CALIBRATION");
  display.setCursor(30, 20);
  display.print("Calibration");
  display.setCursor(40, 30);
  display.print("Complete");
  display.update();
  delay(3000);

  //Reactivate interupts
  attachInterrupt(digitalPinToInterrupt(encButton), ISR_encoderSW, RISING);
  attachInterrupt(digitalPinToInterrupt(playButton), ISR_play_pause, RISING);
  attachInterrupt(digitalPinToInterrupt(stopButton), ISR_stop, RISING);
  attachInterrupt(digitalPinToInterrupt(loopButton), ISR_loop, RISING);
  attachInterrupt(digitalPinToInterrupt(Gate_1), ISR_Gate_1_ON, HIGH);
  attachInterrupt(digitalPinToInterrupt(Gate_2), ISR_Gate_2_ON, HIGH);
  attachInterrupt(digitalPinToInterrupt(Gate_3), ISR_Gate_3_ON, HIGH);
  attachInterrupt(digitalPinToInterrupt(Gate_4), ISR_Gate_4_ON, HIGH);
}

/* This interupt samples the voltage of CV1 and determines
 *  the note to be played
 */
void ISR_Gate_1_ON()
{
  float notef = 0;
  unsigned long CVTimeStamp = micros();
  unsigned long delayTimeStamp = 0;
  do{
    delayTimeStamp = micros() - CVTimeStamp;
  }while (delayTimeStamp < 2000);
  for (int i = 0; i < 100; i++)
  {
    notef = notef + (analogRead(CV_1)*3.3/8192)*10000;
  }
  notef = notef/100;
  notef = notef - CV1min;
  notef = notef/CV1inc;
  Note1 = int(notef) + 60;
  
  for (int i = 0; i < 24; i++) {
    if (octaves1_2[i] == Note1) {
      CVAry1_2[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry1_2, 0);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry1_2, 1);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry1_2, 2);
    }
    else if (octaves3_4[i] == Note1) {
      CVAry3_4[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry3_4, 3);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry3_4, 4);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry3_4, 5);
    }
    else if (octaves5_6[i] == Note1) {
      CVAry5_6[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry5_6, 6);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry5_6, 7);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry5_6, 8);
    }
    else if (octaves7_8[i] == Note1) {
      CVAry7_8[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry7_8, 9);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry7_8, 10);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry7_8, 11);
    }
  } 
  attachInterrupt(digitalPinToInterrupt(Gate_1), ISR_Gate_1_OFF, LOW);
}

/* This interupt disables the note that was played when
 *  Gate1 was previously high
 */
void ISR_Gate_1_OFF()
{
  for (int i = 0; i < 24; i++) {
    if (octaves1_2[i] == Note1) {
      CVAry1_2[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry1_2, 0);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry1_2, 1);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry1_2, 2);
    }
    else if (octaves3_4[i] == Note1) {
      CVAry3_4[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry3_4, 3);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry3_4, 4);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry3_4, 5);
    }
    else if (octaves5_6[i] == Note1) {
      CVAry5_6[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry5_6, 6);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry5_6, 7);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry5_6, 8);
    }
    else if (octaves7_8[i] == Note1) {
      CVAry7_8[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry7_8, 9);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry7_8, 10);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry7_8, 11);
    }
  }
  attachInterrupt(digitalPinToInterrupt(Gate_1), ISR_Gate_1_ON, HIGH);
}

/* This interupt samples the voltage of CV2 and determines
 *  the note to be played
 */
void ISR_Gate_2_ON()
{
  float notef = 0;
  unsigned long CVTimeStamp = micros();
  unsigned long delayTimeStamp = 0;
  do{
    delayTimeStamp = micros() - CVTimeStamp;
  }while (delayTimeStamp < 2000);
  for (int i = 0; i < 100; i++)
  {
    notef = notef + (analogRead(CV_2)*3.3/8192)*10000;
  }
  notef = notef/100;
  notef = notef - CV2min;
  notef = notef/CV2inc;
  Note2 = int(notef) + 60;
  
  for (int i = 0; i < 24; i++) {
    if (octaves1_2[i] == Note2) {
      CVAry1_2[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry1_2, 0);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry1_2, 1);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry1_2, 2);
    }
    else if (octaves3_4[i] == Note2) {
      CVAry3_4[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry3_4, 3);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry3_4, 4);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry3_4, 5);
    }
    else if (octaves5_6[i] == Note2) {
      CVAry5_6[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry5_6, 6);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry5_6, 7);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry5_6, 8);
    }
    else if (octaves7_8[i] == Note2) {
      CVAry7_8[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry7_8, 9);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry7_8, 10);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry7_8, 11);
    }
  }
  attachInterrupt(digitalPinToInterrupt(Gate_2), ISR_Gate_2_OFF, LOW);
}

/* This interupt disables the note that was played when
 *  Gate2 was previously high
 */
void ISR_Gate_2_OFF()
{
  for (int i = 0; i < 24; i++) {
    if (octaves1_2[i] == Note2) {
      CVAry1_2[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry1_2, 0);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry1_2, 1);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry1_2, 2);
    }
    else if (octaves3_4[i] == Note2) {
      CVAry3_4[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry3_4, 3);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry3_4, 4);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry3_4, 5);
    }
    else if (octaves5_6[i] == Note2) {
      CVAry5_6[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry5_6, 6);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry5_6, 7);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry5_6, 8);
    }
    else if (octaves7_8[i] == Note2) {
      CVAry7_8[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry7_8, 9);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry7_8, 10);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry7_8, 11);
    }
  }
  attachInterrupt(digitalPinToInterrupt(Gate_2), ISR_Gate_2_ON, HIGH);
}

/* This interupt samples the voltage of CV3 and determines
 *  the note to be played
 */
void ISR_Gate_3_ON()
{
  float notef = 0;
  unsigned long CVTimeStamp = micros();
  unsigned long delayTimeStamp = 0;
  do{
    delayTimeStamp = micros() - CVTimeStamp;
  }while (delayTimeStamp < 2000);
  for (int i = 0; i < 100; i++)
  {
    notef = notef + (analogRead(CV_3)*3.3/8192)*10000;
  }
  notef = notef/100;
  notef = notef - CV3min;
  notef = notef/CV3inc;
  Note3 = int(notef) + 60;
  
  for (int i = 0; i < 24; i++) {
    if (octaves1_2[i] == Note3) {
      CVAry1_2[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry1_2, 0);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry1_2, 1);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry1_2, 2);
    }
    else if (octaves3_4[i] == Note3) {
      CVAry3_4[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry3_4, 3);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry3_4, 4);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry3_4, 5);
    }
    else if (octaves5_6[i] == Note3) {
      CVAry5_6[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry5_6, 6);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry5_6, 7);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry5_6, 8);
    }
    else if (octaves7_8[i] == Note3) {
      CVAry7_8[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry7_8, 9);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry7_8, 10);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry7_8, 11);
    }
  }
  attachInterrupt(digitalPinToInterrupt(Gate_3), ISR_Gate_3_OFF, LOW);
}

/* This interupt disables the note that was played when
 *  Gate3 was previously high
 */
void ISR_Gate_3_OFF()
{
  for (int i = 0; i < 24; i++) {
    if (octaves1_2[i] == Note3) {
      CVAry1_2[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry1_2, 0);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry1_2, 1);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry1_2, 2);
    }
    else if (octaves3_4[i] == Note3) {
      CVAry3_4[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry3_4, 3);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry3_4, 4);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry3_4, 5);
    }
    else if (octaves5_6[i] == Note3) {
      CVAry5_6[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry5_6, 6);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry5_6, 7);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry5_6, 8);
    }
    else if (octaves7_8[i] == Note3) {
      CVAry7_8[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry7_8, 9);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry7_8, 10);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry7_8, 11);
    }
  }
  attachInterrupt(digitalPinToInterrupt(Gate_3), ISR_Gate_3_ON, HIGH);
}

/* This interupt samples the voltage of CV4 and determines
 *  the note to be played
 */
void ISR_Gate_4_ON()
{
  float notef = 0;
  unsigned long CVTimeStamp = micros();
  unsigned long delayTimeStamp = 0;
  do{
    delayTimeStamp = micros() - CVTimeStamp;
  }while (delayTimeStamp < 2000);
  for (int i = 0; i < 100; i++)
  {
    notef = notef + (analogRead(CV_4)*3.3/8192)*10000;
  }
  notef = notef/100;
  notef = notef - CV4min;
  notef = notef/CV4inc;
  Note4 = int(notef) + 60;
  
  for (int i = 0; i < 24; i++) {
    if (octaves1_2[i] == Note4) {
      CVAry1_2[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry1_2, 0);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry1_2, 1);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry1_2, 2);
    }
    else if (octaves3_4[i] == Note4) {
      CVAry3_4[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry3_4, 3);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry3_4, 4);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry3_4, 5);
    }
    else if (octaves5_6[i] == Note4) {
      CVAry5_6[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry5_6, 6);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry5_6, 7);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry5_6, 8);
    }
    else if (octaves7_8[i] == Note4) {
      CVAry7_8[i] = HIGH;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry7_8, 9);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry7_8, 10);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry7_8, 11);
    }
  }
  attachInterrupt(digitalPinToInterrupt(Gate_4), ISR_Gate_4_OFF, LOW);
}

/* This interupt disables the note that was played when
 *  Gate4 was previously high
 */
void ISR_Gate_4_OFF()
{
  for (int i = 0; i < 24; i++) {
    if (octaves1_2[i] == Note4) {
      CVAry1_2[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry1_2, 0);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry1_2, 1);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry1_2, 2);
    }
    else if (octaves3_4[i] == Note4) {
      CVAry3_4[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry3_4, 3);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry3_4, 4);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry3_4, 5);
    }
    else if (octaves5_6[i] == Note4) {
      CVAry5_6[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry5_6, 6);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry5_6, 7);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry5_6, 8);
    }
    else if (octaves7_8[i] == Note4) {
      CVAry7_8[i] = LOW;
      if (i > -1 && i < 8)
        midiNoteMod(CVAry7_8, 9);
      else if (i > 7 && i < 16)
        midiNoteMod(CVAry7_8, 10);
      else if (i > 15 && i < 24)
        midiNoteMod(CVAry7_8, 11);
    }
  }
  attachInterrupt(digitalPinToInterrupt(Gate_4), ISR_Gate_4_ON, HIGH);
}

/*  Called by the MIDIFile library when a file event needs to be processed
    thru the midi communications interface.
    This callback is set up in the setup() function.
    As of now, if the message being processed is a note on or a note off, it checks the 
    byte message directly after it to determine the note, or key. Once it knows the pitch,
    it checks to see what octave array that note belongs in, writes in either a note on
    or note off into the STATIC tempAry (static so the array doesn't get reset back to zeros 
    on callback) and sent through the shift register. Remember, the shift register needs
    the latch pin to go high to shift in bits an then low again to shift them out.
*/
void midiCallback(midi_event *pev) {
  byte note;
  static int tempAry1_2[24] = {0};
  static int tempAry3_4[24] = {0};
  static int tempAry5_6[24] = {0};
  static int tempAry7_8[24] = {0};
  for (uint8_t i = 0; i < pev->size; i++) {
    /*Note OFF MIDI message routine*/
    if (pev->data[i] == 0x80) {
      note = pev->data[i + 1];
      solenoidCount--;
      for (int i = 0; i < 24; i++) {
        if (octaves1_2[i] == note) {
          tempAry1_2[i] = LOW;
          if (i > -1 && i < 8)
            midiNoteMod(tempAry1_2, 0);
          else if (i > 7 && i < 16)
            midiNoteMod(tempAry1_2, 1);
          else if (i > 15 && i < 24)
            midiNoteMod(tempAry1_2, 2);
        }
        else if (octaves3_4[i] == note) {
          tempAry3_4[i] = LOW;
          if (i > -1 && i < 8)
            midiNoteMod(tempAry3_4, 3);
          else if (i > 7 && i < 16)
            midiNoteMod(tempAry3_4, 4);
          else if (i > 15 && i < 24)
            midiNoteMod(tempAry3_4, 5);
        }
        else if (octaves5_6[i] == note) {
          tempAry5_6[i] = LOW;
          if (i > -1 && i < 8)
            midiNoteMod(tempAry5_6, 6);
          else if (i > 7 && i < 16)
            midiNoteMod(tempAry5_6, 7);
          else if (i > 15 && i < 24)
            midiNoteMod(tempAry5_6, 8);
        }
        else if (octaves7_8[i] == note) {
          tempAry7_8[i] = LOW;
          if (i > -1 && i < 8)
            midiNoteMod(tempAry7_8, 9);
          else if (i > 7 && i < 16)
            midiNoteMod(tempAry7_8, 10);
          else if (i > 15 && i < 24)
            midiNoteMod(tempAry7_8, 11);
        }
      }
      if (solenoidCount < 0) {
        solenoidCount = 0;
      }
    }
    /*Note ON MIDI message routine*/
    if (pev->data[i] == 0x90) {
      note = pev->data[i + 1];
      if (solenoidCount < maxSolenoid) {
        solenoidCount++;
        for (int i = 0; i < 24; i++) {
          if (octaves1_2[i] == note) {
            tempAry1_2[i] = HIGH;
            if (i > -1 && i < 8)
              midiNoteMod(tempAry1_2, 0);
            else if (i > 7 && i < 16)
              midiNoteMod(tempAry1_2, 1);
            else if (i > 15 && i < 24)
              midiNoteMod(tempAry1_2, 2);
          }
          else if (octaves3_4[i] == note) {
            tempAry3_4[i] = HIGH;
            if (i > -1 && i < 8)
              midiNoteMod(tempAry3_4, 3);
            else if (i > 7 && i < 16)
              midiNoteMod(tempAry3_4, 4);
            else if (i > 15 && i < 24)
              midiNoteMod(tempAry3_4, 5);
          }
          else if (octaves5_6[i] == note) {
            tempAry5_6[i] = HIGH;
            if (i > -1 && i < 8)
              midiNoteMod(tempAry5_6, 6);
            else if (i > 7 && i < 16)
              midiNoteMod(tempAry5_6, 7);
            else if (i > 15 && i < 24)
              midiNoteMod(tempAry5_6, 8);
          }
          else if (octaves7_8[i] == note) {
            tempAry7_8[i] = HIGH;
            if (i > -1 && i < 8)
              midiNoteMod(tempAry7_8, 9);
            else if (i > 7 && i < 16)
              midiNoteMod(tempAry7_8, 10);
            else if (i > 15 && i < 24)
              midiNoteMod(tempAry7_8, 11);
          }
        }
      }
    }
    /*Note return from pause routine*/
    if (wasPaused != 0)
    {
      midiNoteMod(tempAry1_2, 0);
      midiNoteMod(tempAry1_2, 1);
      midiNoteMod(tempAry1_2, 2);
      midiNoteMod(tempAry3_4, 3);
      midiNoteMod(tempAry3_4, 4);
      midiNoteMod(tempAry3_4, 5);
      midiNoteMod(tempAry5_6, 6);
      midiNoteMod(tempAry5_6, 7);
      midiNoteMod(tempAry5_6, 8);
      midiNoteMod(tempAry7_8, 9);
      midiNoteMod(tempAry7_8, 10);
      midiNoteMod(tempAry7_8, 11);
    }
  }
}

/* This function takes an octave array and latch position
   and turns the appropriate notes on or off accordingly by
   loading the octave array onto the appropriate driver
   chip.
*/
void midiNoteMod(int octaveAry[], int latchPos) {
  int SR[8] = {};
  if (latchPos < 8) {
    latchAry1[latchPos] = LOW;
    digitalWrite(SRSELlatchPin_1, 0);
    shiftOut(SRSELdataPin, SRSELclockPin, MSBFIRST, array2dec(latchAry1));
    digitalWrite(SRSELlatchPin_1, 1);
    switch (latchPos){
      case 0:
      case 3:
      case 6:
        shiftOut(SRdataPin, SRclockPin, MSBFIRST, array2dec(octaveAry)); 
        break;
      case 1:
      case 4:
      case 7:
        for (int i = 0; i < 8; i++) {
         SR[i] = octaveAry[i+8];
        }
        shiftOut(SRdataPin, SRclockPin, MSBFIRST, array2dec(SR));
        break;
      case 2:
      case 5:
        for (int i = 0; i < 8; i++) {
          SR[i] = octaveAry[i+16];
        }
        shiftOut(SRdataPin, SRclockPin, MSBFIRST, array2dec(SR));
        break;
    }
    latchAry1[latchPos] = HIGH;
    digitalWrite(SRSELlatchPin_1, 0);
    shiftOut(SRSELdataPin, SRSELclockPin, MSBFIRST, array2dec(latchAry1));
    digitalWrite(SRSELlatchPin_1, 1);
  }
  else {
    latchAry2[latchPos - 8] = LOW;
    digitalWrite(SRSELlatchPin_2, 0);
    shiftOut(SRSELdataPin, SRSELclockPin, MSBFIRST, array2dec(latchAry2));
    digitalWrite(SRSELlatchPin_2, 1);
    switch (latchPos){
      case 9:
        shiftOut(SRdataPin, SRclockPin, MSBFIRST, array2dec(octaveAry)); 
        break;
      case 10:
        for (int i = 0; i < 8; i++) {
         SR[i] = octaveAry[i+8];
        }
        shiftOut(SRdataPin, SRclockPin, MSBFIRST, array2dec(SR));
        break;
      case 8:
      case 11:
        for (int i = 0; i < 8; i++) {
          SR[i] = octaveAry[i+16];
        }
        shiftOut(SRdataPin, SRclockPin, MSBFIRST, array2dec(SR));
        break;
    }
    latchAry2[latchPos - 8] = HIGH;
    digitalWrite(SRSELlatchPin_2, 0);
    shiftOut(SRSELdataPin, SRSELclockPin, MSBFIRST, array2dec(latchAry2));
    digitalWrite(SRSELlatchPin_2, 1);
  }
}

/*This function is used in the MidiCallback function. It was just a little 
 * data type restriction on the fourth parameter of shiftOut. 
 */
int array2dec(int *ary) {
  int total = 0;
  for (int i = 0; i < 8; i++) {
    if (ary[i] == true) {
      total = total + pow(2, i);
    }
  }
  return total;
}

/*The function below increments the encCounter by 2 allowing
  the user to scroll through files.
*/
void updateEncoder() {
  encState = digitalRead(encoderA);
  if (encState != encLastState) {
    if (digitalRead(encoderB) != encState) {
      encCounter ++;
    }
    else {
      encCounter --;
    }
  }
  encLastState = encState;
  if (encCounter >= (numberOfFiles * 2)) {
    encCounter = ((numberOfFiles - 1) * 2);
  }
  if (encCounter < 0) {
    encCounter = 0;
  }
}

/*This function uses the SdFat library methods to keep track
   of the current file that is displayed on the second row of the
   display. When the encoder switch is pushed, the file is stored
   in the global currentFileName array.
*/
void ISR_encoderSW() {
  int pos = encCounter / 2;
  int temp = 0;
  
  SMF.looping(false);
  loopStatus = 0;
  SMF.close();
  
  sd.vwd()->rewind();
  while (file.openNext(sd.vwd(), O_READ)) {
    file.close();
    if (temp == pos) {
      goto end;
    }
    temp++;
  }
  end:
  
  if (file.openNext(sd.vwd(), O_READ)) {
    file.getName(currentFileName, 13);
    file.close();
  }
}

/*
  Function is called once in setup() to both initialize the SD card
  and extract the number of files to be used in later functions (updateEncoder()).
*/
void sdInitAndExtract() {
  //checking for successful initialization
  if (!sd.begin()) {
    sd.initErrorHalt();
    display.print("Error in loading SD card");
  }
  
  //Extracting the number of files
  //::rewind returns "cursor" to beginning of file
  sd.vwd()->rewind();
  while (file.openNext(sd.vwd(), O_READ)) {
    numberOfFiles++;
    file.close();
  }
  //There is a hidden file called SYSTEM which is a 
  //directory name. Next line is just subtracting that off to 
  //store the correct number of files. 
  numberOfFiles -= 1;
}

//Display loop for the MIDI mode of operation.
void updateDisplay() {
  //Check modeStatus and update display accordingly
  display.clear();
  if (modeStatus == 0) //update display for MIDI
  {
    display.setCursor(110, 16);
    display.print(modeText[0]);
    display.setCursor(110, 25);
    display.print(modeText[1]);
    display.setCursor(110, 34);
    display.print(modeText[2]);
    display.setCursor(110, 43);
    display.print(modeText[3]);
    display.setCursor(120, 21);
    display.print(modeText[11]);
    display.setCursor(120, 30);
    display.print(modeText[12]);
    display.setCursor(120, 40);
    display.print(modeText[13]);
    display.setCursor(120, 49);
    display.print(modeText[14]);
    
    int tempEncCounter = encCounter;
    char row1[13] = {};
    char row2[13] = {};
    char row3[13] = {};
    char row4[13] = {};
    int pos = tempEncCounter / 2;
    int temp = 0;
    
    sd.vwd()->rewind();
    while (file.openNext(sd.vwd(), O_READ)) {
      file.close();
      if (temp == pos) {
        goto end;         
      }
      temp++;
    }
    end:
    
    if (file.openNext(sd.vwd(), O_READ)) {
      file.getName(row1, 13);
      file.close();
    }
    if (file.openNext(sd.vwd(), O_READ)) {
      file.getName(row2, 13);
      file.close();
    }
    if (file.openNext(sd.vwd(), O_READ)) {
      file.getName(row3, 13);
      file.close();
    }
    if (file.openNext(sd.vwd(), O_READ)) {
      file.getName(row4, 13);
      file.close();
    }
    
    String newCurrent = formatFileName(currentFileName);
    String newRow1 = formatFileName(row1);
    String newRow2 = formatFileName(row2);
    String newRow3 = formatFileName(row3);
    String newRow4 = formatFileName(row4);
    
    display.setTextSize(1);
    display.setTextColor(WHITE);
    display.setCursor(0, 0);
    display.print(newCurrent);
    if (loopStatus == 1)
    {
      display.setCursor(90, 0);
      display.print(loopOn);
    }
    
    display.setCursor(0, 16);
    display.print("-> ");
    display.print(newRow1);
    display.print(" <-");
    display.setCursor(0, 28);
    display.print(newRow2);
    display.setCursor(0, 40);
    display.print(newRow3);
    display.setCursor(0, 52);
    display.print(newRow4);
    display.update();
  }
  if (modeStatus == 1) //update display for CV/Gate
  {
    display.setCursor(110, 16);
    display.print(modeText[4]);
    display.setCursor(110, 24);
    display.print(modeText[5]);
    display.setCursor(110, 30);
    display.print(modeText[6]);
    display.setCursor(110, 37);
    display.print(modeText[7]);
    display.setCursor(110, 43);
    display.print(modeText[8]);
    display.setCursor(110, 51);
    display.print(modeText[9]);
    display.setCursor(110, 57);
    display.print(modeText[10]);
    display.setCursor(120, 21);
    display.print(modeText[11]);
    display.setCursor(120, 30);
    display.print(modeText[12]);
    display.setCursor(120, 40);
    display.print(modeText[13]);
    display.setCursor(120, 49);
    display.print(modeText[14]);
    display.setCursor(0, 40);
    display.update();
  }
}

/*The current file that is dsplayed on the screen can overflow onto the next
   line if the long name convention is filled with 12 characters plus the null.
   Since the SdFat library methods don't allow Strings, this function does the
   necessary conversion and removes the '.mid' of any array of characters passed
   to it.
*/
String formatFileName(char fileName[13]) {
  String fil = fileName;
  int index = fil.indexOf(".");
  if (index != -1) {
    fil.remove(index, 4);
  }
  return (fil);
}

/* This funciton turns everything off on every channel.
   Some midi files are badly behaved and leave notes hanging,
   so between songs this turns off all the notes and sound
*/
void midiSilence(void)
{
  midi_event ev;
  
  // All sound off
  // When All Sound Off is received all oscillators will turn off, and their volume
  // envelopes are set to zero as soon as possible.
  ev.size = 1;
  ev.data[0] = 0x80;
  ev.data[1] = 0x24;
  
  for (int i = 0; i < 96; i++)
  {
    midiCallback(&ev);
    ev.data[1]++;
  }
}

/*This function will turn all somenoids to the off position when system is
  paused while retaining which solenoids were active and returning them to
  that state once play is resumed.
*/
void midiOffTemp(void)
{
  for (int i = 0; i < 12; i++)
  {
    midiNoteMod(offAry, i);
  }
}

