/// @description Insert description here
// You can write your code in this editor
if (!playerobject_controller.in_pause){
	instance_create_depth(0,0,-10,pause_menu);
	playerobject_controller.in_pause = true;
	
}
playerobject_controller.in_help = false;
instance_destroy(help);