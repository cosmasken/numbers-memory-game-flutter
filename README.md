# App name: Unlock Seal
# Technical specifications:
- operating system (OS): Android (flutter)
- screen orientation: vertical
- number of screens: 6
- number of languages: English, German, French


# 1. Main Menu screen:
On the main menu you can add a header with the name of the application (you may not
add it) in a stony style with gold on the side.
- "Play" button (when clicked, takes you to the "Gameplay" screen)
- "Settings" button (brings me to the "Settings" screen when clicked)
- "Best Result" button (click to take you to the "Best Result" screen)


![Main Page](https://github.com/cosmasken/numbers-memory-game-flutter/blob/master/mainpage.PNG "Main Page")

# 2. Settings screen:
This screen adjusts the sound and language settings of the app. Sound is the sound
effects (button clicks. getting 1 point, wrong selection and the like). Music is the
background music that plays when the app is on. The language has three types (each
language is marked with a different flag).
- “Back” button (when clicked, it returns to the Main Menu screen)
- “Sound" button (changes to grey/red on/off button when pressed)
- “Music” button (changes to grey/red on/off when pressed)
- "Language selection" button (the language changes when you click on a flag, the
flag is changed and the current language is set)

![Settings Screen](https://github.com/cosmasken/numbers-memory-game-flutter/blob/master/settings.PNG "Settings Screen")


# 3. Best Result screen:
Here the user can view his achievements for the game sessions. After each game session,
the best result (higher or lower from this list) is put at its number. The best result (the
maximum number of points per game session) is placed under number 1.
- The "Back" button (which, when clicked, returns to the "Main Menu" screen)
- “Achievements" window (the list is displayed, distributed according to the number
of points gained for the game sessions)
- “Reset All Points" button (when clicked, a confirmation pops up that you agree to
delete all current achievements in the game (yes/no))


![Best Scores](https://github.com/cosmasken/numbers-memory-game-flutter/blob/master/bestscores.PNG "Best Scores")


# 4. “Gameplay" screen:
The numbers on the stone board (illuminated in red) light up on the screen in turn. There
are a total of 12 buttons on the screen. The player must press the digits in the correct order
for the time in the timer. When a button is tapped, it turns yellow (right) or red (wrong).
The number of buttons to press increases by 1 for every 3 points gained (the starting set of
buttons is 5). The difficulty of the game lies in the change of button style: initially, the user
is shown Arabic numerals, but as the game progresses after the order of buttons is shown,
the numerals change either to point style or to sticks (for example, the player was shown
the buttons 1/6/5, at the start of the timer button 6 changed its style to dots (6 dots on the
button).
The default timer is set for 30 seconds, it is re-set after each 1 point received. If correct, the
player receives 1 point (1 coin). On an incorrect score the game session ends, and the
session also ends if the timer reaches 00:00.
- Tablet with current score
- Pause button (when clicked, it moves to the Pause screen)
- Window with a score display (coins)
- Window with timer
- Game buttons

![GamePlay](https://github.com/cosmasken/numbers-memory-game-flutter/blob/master/gamescreen.PNG "GamePlay")


# 5. Pause screen:
The standard screen that stops the current game session.
- "Continue" button (when clicked, returns to the current game session)
- Reboot Button (click to start the game session again, resetting your current
achievements for the session)
- "Main Menu" button (when clicked, returns to the "Main Menu" screen, ends the
current game session without saving your score)

![Pause screen](https://github.com/cosmasken/numbers-memory-game-flutter/blob/master/pause.PNG "Pause screen")


# 6. End of Game screen:
At the end of the game session, the screen displays the points gained (if the best score is
achieved, this figure will be displayed on the "Best Score" screen.
- A window showing the points/coins gained in the current session ("You have
unlocked 000")
- The "Restart" button (starts the game session over again when clicked)
- Main Menu button (returns to the Main Menu screen when clicked)

![Game Over screen](https://github.com/cosmasken/numbers-memory-game-flutter/blob/master/gameover.PNG "Game Over screen")

Please star this repository if it helps

