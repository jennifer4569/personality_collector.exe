if(argument0 == playerobject_virtue){
	with(playerobject_virtue){
		movement_direction_x = 0;
		movement_direction_y = 0;
		is_sliding = false;
		if(sprite_index == virtue_roll_down)
			sprite_index = virtue_idle_down;
		if(sprite_index == virtue_roll_up)
			sprite_index = virtue_idle_up;
		if(sprite_index == virtue_roll_right)
			sprite_index = virtue_idle_right;
		if(sprite_index == virtue_roll_left)
			sprite_index = virtue_idle_left;
	}
	
}
if(argument0 == playerobject_sin){
	with(playerobject_sin){
		movement_direction_x = 0;
		movement_direction_y = 0;
		is_sliding = false;
		if(sprite_index == sin_roll_down)
			sprite_index = sin_idle_down;
		if(sprite_index == sin_roll_up)
			sprite_index = sin_idle_up;
		if(sprite_index == sin_roll_right)
			sprite_index = sin_idle_right;
		if(sprite_index == sin_roll_left)
			sprite_index = sin_idle_left;
	}
}
