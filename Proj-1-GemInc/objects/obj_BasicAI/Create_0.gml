/// @description Initialize (current state and timeline)
// You can write your code in this editor

// Inherit the parent event
event_inherited();

currentState = noone;
dir = 1;

//timeline works by changing current state according to certain time.
timeline_index = startRoutine; //timeline index is the index of that timeline, like id?
//start timeline
timeline_position = 0;
timeline_running = false;
timeline_loop = false;

//initialization script for each State Machine, run here.
script_execute(initScript);


//Change any of these initializations by putting a new definition under event_inherited();
//Note: for any following implemented AI enemies, make sure to init your enum and states under the event_inherited();