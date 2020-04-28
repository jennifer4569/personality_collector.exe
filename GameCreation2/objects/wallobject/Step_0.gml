/// @description Insert description here
// You can write your code in this editor
if (instance_exists(playerobject_virtue) and instance_exists(playerobject_sin)) {
	playerobject_virtue.hit_timer -= 1;
	playerobject_sin.hit_timer -= 1;
}