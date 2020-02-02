/// @description Initialize (current state and timeline)
// You can write your code in this editor

// Inherit the parent event
event_inherited();

currentState = "wait";
dir = 1;

//timeline works by changing current state according to certain time.
timeline_index = startRoutine; //timeline index is the index of that timeline, like id?
//start timeline
timeline_position = 0;
timeline_running = false;
timeline_loop = false;


//Change any of these initializations by putting a new definition under event_inherited();