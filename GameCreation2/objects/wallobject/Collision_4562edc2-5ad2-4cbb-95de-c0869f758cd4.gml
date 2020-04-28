/// @description Insert description here
// You can write your code in this editor
set_idle(playerobject_sin);
if (instance_exists(playerobject_virtue) and instance_exists(playerobject_sin)) {
if(playerobject_sin.hit_timer <= 0){
	playerobject_sin.hit_timer = 100;
	if (playerobject_virtue.hit_timer <= 0){
		audio_play_sound(hit_wall, 10, false);
	}
}
	
	
}
