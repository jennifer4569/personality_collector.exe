
/// @description Insert description here
// You can write your code in this editor

if(!playerobject_virtue.is_sliding && !playerobject_sin.is_sliding){
	playerobject_virtue.movement_direction_x = 0;
	playerobject_virtue.movement_direction_y = 0;
	playerobject_sin.movement_direction_x = 0;
	playerobject_sin.movement_direction_y = 0;
	if(keyboard_check(vk_down)){
		playerobject_virtue.image_angle = 0;
		playerobject_virtue.movement_direction_y = playerobject_virtue.slide_speed;
		playerobject_virtue.is_sliding = true;
		playerobject_sin.image_angle = 0;
		playerobject_sin.movement_direction_y = playerobject_sin.slide_speed;
		playerobject_sin.is_sliding = true;
	}
	if(keyboard_check(vk_right)){
		playerobject_virtue.image_angle = 90;
		playerobject_virtue.movement_direction_x = playerobject_virtue.slide_speed;
		playerobject_virtue.is_sliding = true;
		playerobject_sin.image_angle = 270;
		playerobject_sin.movement_direction_x = -playerobject_sin.slide_speed;
		playerobject_sin.is_sliding = true;
	}
	if(keyboard_check(vk_up)){
		playerobject_virtue.image_angle = 180;
		playerobject_virtue.movement_direction_y = -playerobject_virtue.slide_speed;
		playerobject_virtue.is_sliding = true;
		playerobject_sin.image_angle = 180;
		playerobject_sin.movement_direction_y = -playerobject_sin.slide_speed;
		playerobject_sin.is_sliding = true;
	}
	if(keyboard_check(vk_left)){
		playerobject_virtue.image_angle = 270;
		playerobject_virtue.movement_direction_x = -playerobject_virtue.slide_speed;
		playerobject_virtue.is_sliding = true;
		playerobject_sin.image_angle = 90;
		playerobject_sin.movement_direction_x = playerobject_sin.slide_speed;
		playerobject_sin.is_sliding = true;
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
	if(place_meeting(x,y,wallobject))
		is_sliding = false;	
	if(place_meeting(x,y,breakablewall_virtueobj))
		is_sliding = false;
	if(place_meeting(x,y,breakablewall_sinobj))
		is_sliding = false;
	if(place_meeting(x,y,playerobject_sin))
		is_sliding = false;		
	/*if(place_meeting(x,y,goalobject_sin))
		is_sliding = false;
	*/	
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
	if(place_meeting(x,y,wallobject))
		is_sliding = false;	
	if(place_meeting(x,y,breakablewall_virtueobj))
		is_sliding = false;
	if(place_meeting(x,y,breakablewall_sinobj))
		is_sliding = false;
	if(place_meeting(x,y,playerobject_virtue))
		is_sliding = false;
	/*if(place_meeting(x,y,goalobject_virtue))
		is_sliding = false;
	*/
	
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