/// @description Code for main menu adapted from Easy Menu System - GameMaker 2 asset pack
/// Created by Conradical Games; all comments in code below are theirs
/// https://conradical-games.itch.io/ezmenu


// Menu element names. This will be what is actually drawn
menu[0] = "Play";
menu[1] = "Instructions";
menu[2] = "Credits";
menu[3] = "Exit";


// cursorLevitate will be used to keep a variable that
// oscillates and moves the cursor back and forth
cursorLevitate = 0;


// cursorTime will be used as the "angle" of a sin function
// in conjunction with cursorlevitate to oscillate the cursor
cursorTime = 0;

// The rate at which the cursor oscillates. Higher value means faster
leviRate = 1.5;


// Holds what menu element is selected. Ex: if selected = 1, 
// then the selected element is Options.
selected = 0;
selectLerp = 0; // Same as previous line but for lerp (smooth movement)
lerpAmt = 0.2; // Higher number -> faster cursor (between 0 and 1)


// Spacing between each menu element when drawn
spacing = 50;


// Color of the menu element when selected
selectedCol = c_gray;

// Color of the menu element when not selected
notSelectedCol = c_black;

// Game title color
titleCol = c_white;


// Title of your game
gameTitle = "Lonesome Rider";

// Size of the title
titleSize = 2;


// Button to move up the menu
upButt = vk_up;

// Button to move down the menu
downButt = vk_down;

// Button to confirm menu choice
confirmButt = vk_enter;

if(!audio_is_playing(snd_backgound)) audio_play_sound(snd_backgound,5,true)