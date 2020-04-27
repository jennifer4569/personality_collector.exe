
/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_released(vk_escape)){
	if(!in_pause){
		instance_create_depth(0,0,-10,pause_menu);
		in_pause = true;
	}
	else{
		instance_destroy(pause_menu);
		in_pause = false;	
	}
}
if(in_pause)
return;

if(!playerobject_virtue.is_sliding && !playerobject_sin.is_sliding){
	with(playerobject_virtue){
		movement_direction_x = 0;
		movement_direction_y = 0;
		if(keyboard_check(vk_down) || keyboard_check(vk_right) || keyboard_check(vk_left) || keyboard_check(vk_up))
			is_sliding = true;
			
		if(keyboard_check(vk_right)){
			movement_direction_x = slide_speed;
			sprite_index = virtue_roll_right;
		}
		else if(keyboard_check(vk_up)){
			movement_direction_y = -slide_speed;
			sprite_index = virtue_roll_up;
		}
		else if(keyboard_check(vk_left)){
			movement_direction_x = -slide_speed;
			sprite_index = virtue_roll_left;
		}
		else if(keyboard_check(vk_down)){
			movement_direction_y = slide_speed;
			sprite_index = virtue_roll_down;
		}
	}
	with(playerobject_sin){
		movement_direction_x = 0;
		movement_direction_y = 0;
		if(keyboard_check(vk_down) || keyboard_check(vk_right) || keyboard_check(vk_left) || keyboard_check(vk_up))
			is_sliding = true;
			
		if(keyboard_check(vk_left)){
			movement_direction_x = slide_speed;
			sprite_index = sin_roll_right;
		}
		else if(keyboard_check(vk_up)){
			movement_direction_y = -slide_speed;
			sprite_index = sin_roll_up;
		}
		else if(keyboard_check(vk_right)){
			movement_direction_x = -slide_speed;
			sprite_index = sin_roll_left;
		}
		else if(keyboard_check(vk_down)){
			movement_direction_y = slide_speed;
			sprite_index = sin_roll_down;
		}
	}
}
else{
	with (playerobject_virtue){
		if(!is_sliding){
			movement_direction_x = 0;
			movement_direction_y = 0;
		}
	}
	with (playerobject_sin){
		if(!is_sliding){
			movement_direction_x = 0;
			movement_direction_y = 0;
		}
	}	
}

with (playerobject_virtue){
	x += movement_direction_x;
	y += movement_direction_y;
	//this checks if it is completely overlapping (that way, the player cannot just slide past the goal)
	if(instance_place(x+32,y+32,goalobject_virtue) &&
	instance_place(x+32,y-32,goalobject_virtue) &&
	instance_place(x-32,y+32,goalobject_virtue) &&
	instance_place(x-32,y-32,goalobject_virtue))
		on_goal = true;
	else
		on_goal = false;
}
with (playerobject_sin){
	x += movement_direction_x;
	y += movement_direction_y;
	
	//this checks if it is completely overlapping (that way, the player cannot just slide past the goal)
	if(instance_place(x+32,y+32,goalobject_sin) &&
	instance_place(x+32,y-32,goalobject_sin) &&
	instance_place(x-32,y+32,goalobject_sin) &&
	instance_place(x-32,y-32,goalobject_sin))
		on_goal = true;
	else
		on_goal = false;
}

if(playerobject_virtue.on_goal && playerobject_sin.on_goal && 
!playerobject_virtue.is_sliding && !playerobject_sin.is_sliding){
	if(room_next(room))
		room_goto_next();
	else
		room_goto(room_first);
}