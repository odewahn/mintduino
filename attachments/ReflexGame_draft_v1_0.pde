// MintDuino NoteBook 1 – Reflex Game version 3.0
int ledGameLight = 7;  //Digital Pin 7 for LED anode connection
int ledPlayer1 = 1;    //Digital Pin 1 for Player 1 LED
int ledPlayer2 = 2;    //Digital Pin 2 for Player 2 LED
int button1 = 4;       //Digital Pin 4 for Player 1 button
int button2 = 5;       //Digital Pin 5 for Player 2 button
int state2 = 0;
int state1 = 0;
int ledWait = 5000;    //Wait time will be a minimum of 5 seconds

void setup() {
	 pinMode(ledGameLight, OUTPUT);
	 pinMode(ledPlayer1, OUTPUT);
	 pinMode(ledPlayer2, OUTPUT);
         pinMode(button1, INPUT); // is this needed?
         pinMode(button2, INPUT); // is this needed?
         randomSeed(analogRead(1)); //use Analog Pin 1 to generate a random number
}

void loop(){
  state2 = digitalRead(button2);    // Read the state of the pushbutton value
  
  if (state2 == HIGH) {     // Check if the pushbutton is pressed
  digitalWrite(ledPlayer1, LOW);    // Turn LED off    
  digitalWrite(ledPlayer2, LOW);    // Turn LED off    
delay (2000);
        beginGame();     

  } 
  else {

  digitalWrite(ledPlayer1, HIGH);    // Turn LED on
  digitalWrite(ledPlayer2, HIGH);    // Turn LED on    
  }
}
void beginGame(){     //Only called when the button state is HIGH (pressed)
      digitalWrite(ledGameLight, HIGH);  //Flash Game Light 3 times
      delay(500);
      digitalWrite(ledGameLight, LOW);
      delay(500);
      digitalWrite(ledGameLight, HIGH);
      delay(500);
      digitalWrite(ledGameLight, LOW);
      delay(500);
      digitalWrite(ledGameLight, HIGH);
      delay(500);
      digitalWrite(ledGameLight, LOW);
      delay(500);
      
      // Now generate a wait time before Game Light turns on
      ledWait = 5000;  //reset value to minimum of 5 seconds
      ledWait = ledWait + random(5000); //add random value 0-5000 milliseconds//generate a random wait time between 5 and 10 seconds
      
      //Turn on Game Light after Wait Time expires
      delay(ledWait);
      digitalWrite(ledGameLight, HIGH);
      delay(100);
      digitalWrite(ledGameLight, LOW);
      
      //determine which player button was pressed first
      while (digitalRead(button1) == LOW && digitalRead(button2) == LOW) {
        if (digitalRead(button1) == HIGH) {
          Player1Win();
      }
        else if (digitalRead(button2) == HIGH){
          Player2Win();
    }

  }

}

//light winning LED

void Player1Win() {
  digitalWrite(ledPlayer1, HIGH);
  digitalWrite(ledPlayer2, LOW);
  delay(4000);
  digitalWrite(ledPlayer1, LOW);
}


void Player2Win() {
  digitalWrite(ledPlayer2, HIGH);
  digitalWrite(ledPlayer1, LOW);
  delay(4000);
  digitalWrite(ledPlayer2, LOW);
}


//Start game over
      


