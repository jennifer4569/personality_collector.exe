if(argument0 == playerobject_virtue){
	with(playerobject_virtue){
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
