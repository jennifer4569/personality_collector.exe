/// @description Insert description here
// You can write your code in this editor
instance_destroy(playerobject_virtue);
set_idle(playerobject_sin);
playerobject_controller.lost = true;
instance_create_depth(0,0,-10,countdown_timer);
countdown_timer.is_lose = true;