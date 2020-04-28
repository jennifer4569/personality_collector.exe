/// @description Insert description here
// You can write your code in this editor
instance_destroy(playerobject_sin);
set_idle(playerobject_virtue);
playerobject_controller.lost = true;
instance_create_depth(0,0,-10,countdown_timer);
countdown_timer.is_lose = true;
countdown_timer.countdown = 1;

global.total_time += HUD.secs;
global.start_time = HUD.secs;