/// @description Insert description here
// You can write your code in this editor
instance_destroy(playerobject_sin);
set_idle(playerobject_virtue);
playerobject_controller.lost = true;
instance_create_depth(view_xview + view_wview * 0.5,view_yview + view_hview * 0.5,-10,countdown_timer);
countdown_timer.is_lose = true;