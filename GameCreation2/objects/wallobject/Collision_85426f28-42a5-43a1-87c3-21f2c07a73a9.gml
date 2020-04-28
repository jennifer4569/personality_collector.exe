/// @description Insert description here
// You can write your code in this editor
set_idle(playerobject_virtue);
if(playerobject_virtue.hit_timer <= 0){
	audio_play_sound(hit_wall, 10, false);
}else{
	playerobject_virtue.hit_timer -= 1;
}
playerobject_virtue.hit_timer = 5;