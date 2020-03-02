///@description chase after the player, with flight.

//this is all you need to step towards the player.
mp_potential_step_object(target.x, target.y, moveSpeed, obj_wall);

if beh_detect_player_vision() == noone then currentState = chaseEnum.wait;