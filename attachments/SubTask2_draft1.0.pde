// MintDuino NoteBook 1 – Sub-Task 2

int ledPin = 7;  //Digital Pin 7 for LED anode connection
int ledWait = 2000;  //Set wait time to 2000 milliseconds

void setup() {
	randomSeed(analogRead(1)); //use Analog Pin 1 to generate a random number
	pinMode(ledPin, OUTPUT);
}
void loop() {
  	ledWait = ledWait + random(5000); //add random value 0-5000 milliseconds
	digitalWrite(ledPin, HIGH);
	delay(250);
	digitalWrite(ledPin, LOW);
	delay(250);
        	digitalWrite(ledPin, HIGH);
	delay(250);
	digitalWrite(ledPin, LOW);
	delay(250); 
        	digitalWrite(ledPin, HIGH);
        	delay(250);
        	digitalWrite(ledPin, LOW); // three fast blinks

        	delay(ledWait);  //random amount of time passes
        	digitalWrite(ledPin, HIGH);

       	 delay(2000); //wait 2 seconds after random lighting
        	digitalWrite(ledPin, LOW);
	delay(5000); //wait 5 seconds before resetting
                	ledWait = 2000; // reset Wait to a minimum of 2 seconds;
}

