"Cloak of Darkness" by Alex Proudfoot

Book - The Game

[ ... allows the player to score a maximum of two points ... ]

Use scoring. The maximum score is 2.

[ ... has an introduction ... ]

When play begins:
	say "Hurrying through the rainswept November night, you're glad to see the bright lights of the Opera House. It's surprising that there aren't more people about but, hey, what do you expect in a cheap demo game...?";


Part - Cast

Section - Player Character

[ The player character is wearing a cloak which must be left in the cloakroom to light the foyer bar. A clue to this is provided in the description. ]

The player wears a velvet cloak with description "A handsome cloak, of velvet trimmed with satin, and slightly splattered with raindrops. Its blackness is so deep that it almost seems to suck light from the room." Understand "handsome", "dark", "black" and "satin" as the velvet cloak.


Part - Setting

Section - Foyer of the Opera House

[ The player character starts here. Exits are south to the foyer bar and west to the cloakroom. ]

The Foyer of the Opera House is a room. "You are standing in a spacious hall, splendidly decorated in red and gold, with glittering chandeliers overhead. The entrance from the street is to the north, and there are doorways south and west."

Instead of going nowhere when going north in the foyer of the opera house, say "You've only just arrived, and besides, the weather outside seems to be getting worse."


Section - Foyer Bar

[ The foyer bar contains a message which must be read to finish the game but the room is not lighted at the start of the game. ]

The Foyer bar is south of Foyer of the Opera House with description "The bar, much rougher than you'd have guessed after the opulence of the foyer to the north, is completely empty. There seems to be some sort of message scrawled in the sawdust on the floor."

A scrawled message is here. It is scenery. Understand "sawdust" and "floor" as the scrawled message.


Section - Cloakroom

[ The cloakroom contains a hook for hanging the player character's cloak. This is the only room where the cloak can be left. ]

The Cloakroom is west of Foyer of the Opera House. "The walls of this small room were clearly once lined with hooks, though now only one remains. The exit is a door to the east."

A small brass hook is here. It is a scenery supporter. Understand "peg" as the small brass hook.

Instead of examining the small brass hook:
	say "It's just a small brass hook, ";
	if the cloak is on the hook:
		say "with a cloak hanging on it.";
	otherwise:
		say "screwed to the wall.";


Part - Plot

Section - Blundering Around in the Dark

[ While the player is in darkness, in the foyer bar, this game gives strikes which count towards losing. Two strikes are given for going in any direction other than north and one strike is given for doing anything other than going. ]

The strikes are initially 0.

Before going while the location is the foyer bar:
	if not going north and the foyer bar is dark:
		increase the strikes by 2;
		say "Blundering around in the dark isn't a good idea!" instead;

Before doing something other than going while the location is the foyer bar:
	if the foyer bar is dark:
		increase the strikes by 1;
		say "In the dark? You could easily disturb something!" instead;


Section - Bringing Light to the Darkness (1 point)

[ The foyer bar is only lighted when the player is neither wearing nor carrying the velvet cloak. ]

[ Putting the velvet cloak on the small brass hook lights the foyer bar. One point is awarded for doing it the first time. ]

Before putting the velvet cloak on the small brass hook:
	if the velvet cloak has not been on the brass hook:
		increase the score by 1;
	now the foyer bar is lighted;

[ Dropping the velvet cloak in the cloakroom lights the foyer bar. Dropping it elsewhere is not allowed. ]

Before dropping the velvet cloak:
	if the location is the cloakroom:
		now the foyer bar is lighted;
	otherwise:
		say "This isn't the best place to leave a smart cloak lying around." instead ;

[ Picking up the velvet cloak makes the foyer bar dark again. ]

Before taking the velvet cloak:
	now the foyer bar is dark;


Section - Reading the Scrawled Message (1 point)

[ The goal is to read the scrawled message in the foyer bar with the maximum score of two points and fewer than two strikes. Any action on the message results in reading the message. ]

[ One point is awarded and the game is won for reading the message with fewer than two strikes. The game is lost for reading the message with two strikes or more. ]

Before doing something with the scrawled message:
	if the strikes are less than 2:
		increase the score by 1;
		say "The message, neatly marked in the sawdust, reads...[no line break]";
		end the story saying "You have won";
	otherwise:
		say "The message has been carelessly trampled, making it difficult to read. You can just distinguish the words...[no line break]";
		end the story saying "You have lost";


Book - The Mechanics

Part - Interaction

Section - Hanging

Understand "hang [other things] on/onto [something]" as putting it on.


Part - Behaviour

[ Nothing to see here. ]


Part - The Project

Section - Building

Use no deprecated features.


Section - Testing (not for release)

The release number is 0. Include (- Serial "000000"; -).


Section - Releasing (for release only)

The story headline is "A rewrite of the Roger Firth IF Demonstration".

The story description is "The 'Cloak of Darkness' specification ...

The Foyer of the Opera House is where the game begins. This empty room has doors to the south and west, also an unusable exit to the north. There is nobody else around.

The Bar lies south of the Foyer, and is initially unlit. Trying to do anything other than return northwards results in a warning message about disturbing things in the dark.

On the wall of the Cloakroom, to the west of the Foyer, is fixed a small brass hook.

Taking an inventory of possessions reveals that the player is wearing a black velvet cloak which, upon examination, is found to be light-absorbent. The player can drop the cloak on the floor of the Cloakroom or, better, put it on the hook.

Returning to the Bar without the cloak reveals that the room is now lit. A message is scratched in the sawdust on the floor.

The message reads either 'You have won' or 'You have lost', depending on how much it was disturbed by the player while the room was dark.

The act of reading the message ends the game."

Release along with a website.
Release along with an interpreter.

