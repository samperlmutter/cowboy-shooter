/// @description Code adapted from Easy Menu System - GameMaker 2 asset pack
/// Created by Conradical Games; all comments in code below are theirs
/// https://conradical-games.itch.io/ezmenu


// cursorLevitate will be used to keep a variable that
// oscillates and moves the cursor back and forth
cursorLevitate = 0;

// cursorTime will be used as the "angle" of a sin function
// in conjunction with cursorlevitate to oscillate the cursor
cursorTime = 0;

// The rate at which the cursor oscillates. Higher value means faster
leviRate = 1.5;

selectLerp = 0; // Same as previous line but for lerp (smooth movement)

// Spacing between each menu element when drawn
spacing = 50;
