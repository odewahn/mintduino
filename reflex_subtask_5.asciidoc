Now that you’ve got the mini breadboard circuit wired up properly and connected to the MintDuino, all that’s left is to upload the sketch that will allow two players to see who is the fastest button pusher on the planet.  
The MintDuino Reflex Game will require the following components:

* Qty-1 MintDuino - assembled [URL link to assembly instructions here]
* Qty-1 LED (red LED included with Survival Pack but yellow is used in figures)*
* Qty-1 9V battery
* Qty-1 FTDI adapter [URL link here]
* Qty-1 USB cable (A to mini-B type)
* Qty-1 Mini breadboard *
* Qty-1 9V battery connector (included with the MintDuino)
* Qty-2 Resistor 100ohm *
* Qty-6 Jumper Wires 
* Qty-1 Pushbutton *

*indicates a component that can be found in the Mintronics: Survival Pack.

The game will execute with the MintDuino and the mini breadboard plus components as follows:

. Turn on the MintDuino – use either a 9V battery or USB power via the FTDI Adapter.
. Both player LEDs will light up and stay lit.
. Press the Player 2 button to start the game; both player LEDs will turn off.
. The Game Light (center LED on the mini breadboard) will blink three times.
. After the Game Light blinks three times, a random amount of time will pass before it lights again. 
. When the Game Light blinks again, each player will try to push his or her button before the other player.
. The fastest player’s LED will light up to indicate the winner.
. Pressing a button before the delay is over will not light an LED.
. Press the Player 2 button to start a new game.

You can download the program for the MintDuino Reflex Game at [URL here] or simply enter the code below into the Arduino IDE:
