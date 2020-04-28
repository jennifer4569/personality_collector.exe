return 0;
if(place_meeting(x,y,all)){
	is_sliding = false;	
}
return 0;
/// @description Insert description here
// You can write your code in this editor
hit_timer -= 1;
if(!is_sliding){
	movement_direction_x = 0;
	movement_direction_y = 0;
	if(keyboard_check(vk_down)){
		image_angle = 0;
		movement_direction_y = slide_speed;
		is_sliding = true;
	}
	if(keyboard_check(vk_right)){
		image_angle = 90;
		movement_direction_x = slide_speed;
		is_sliding = true;
	}
	if(keyboard_check(vk_up)){
		image_angle = 180;
		movement_direction_y = -slide_speed;
		is_sliding = true;
	}
	if(keyboard_check(vk_left)){
		image_angle = 270;
		movement_direction_x = -slide_speed;
		is_sliding = true;
	}
}

x += movement_direction_x;
y += movement_direction_y;

if(place_meeting(x,y,all)){
	is_sliding = false;	
}