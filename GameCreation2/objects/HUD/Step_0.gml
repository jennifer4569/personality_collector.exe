/// @description Insert description here
// You can write your code in this editor
if(playerobject_controller.won || playerobject_controller.in_pause || playerobject_controller.lost)
	return;
secs+= (delta_time/1000000)*room_speed 