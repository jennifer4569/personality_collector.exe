/// @description Insert description here
// You can write your code in this editor

if(won || lost || in_pause) return;

if(!playerobject_virtue.is_sliding && !playerobject_sin.is_sliding){
	with(playerobject_virtue){
		movement_direction_x = 0;
		movement_direction_y = 0;
		is_sliding = true;
		movement_direction_x = -slide_speed;
		sprite_index = virtue_roll_left;
	}
	with(playerobject_sin){
		movement_direction_x = 0;
		movement_direction_y = 0;
		is_sliding = true;
		movement_direction_x = slide_speed;
		sprite_index = sin_roll_right;
	}
	if(!check_idle(playerobject_virtue) || !check_idle(playerobject_sin))
		num_moves++;
}