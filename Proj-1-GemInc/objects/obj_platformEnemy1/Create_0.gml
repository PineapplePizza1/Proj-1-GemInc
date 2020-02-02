/// @description Initialize (current state and timeline)
// You can write your code in this editor

// Inherit the parent event
event_inherited();

currentState = "wait";

//timeline works by changing current state according to certain time.
timeline_index = startRoutine; //timeline index is the index of that timeline, like id?
//start timeline
timeline_position = 0;
timeline_running = true;
timeline_loop = true;