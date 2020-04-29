/// @description Insert description here
// You can write your code in this editor
if(won || lost || in_pause)
	return;

/*
if(check_player_collision(playerobject_sin)) || check_player_collision(playerobject_virtue)){
	set_idle(playerobject_virtue);
	set_idle(playerobject_sin);
}*/
if(check_player_collision(playerobject_sin))
	set_idle(playerobject_sin);
	
if(check_player_collision(playerobject_virtue))
	set_idle(playerobject_virtue);


with (playerobject_virtue){
	if(!is_sliding){
		movement_direction_x = 0;
		movement_direction_y = 0;
	}
	/*
	if(check_idle(playerobject_virtue)){
		set_idle(playerobject_virtue);
		if(check_player_collision(playerobject_virtue))
			set_idle(playerobject_sin);
	}*/
}
with (playerobject_sin){
	if(!is_sliding){
		movement_direction_x = 0;
		movement_direction_y = 0;
	}/*
	if(check_idle(playerobject_sin)){
		set_idle(playerobject_sin);
		if(check_player_collision(playerobject_sin)){
			set_idle(playerobject_virtue);
		}
	}*/
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

//win condition
if(playerobject_virtue.on_goal && playerobject_sin.on_goal && 
!playerobject_virtue.is_sliding && !playerobject_sin.is_sliding){
	instance_create_depth(x,y,-10,countdown_timer);
	won = true;
	countdown_timer.is_win = true;
	
	if(global.is_normal_mode && (HUD.normal_highscore > num_moves || HUD.normal_highscore == 0)){
		ini_open("data.ini");
		ini_write_real("data", "normal_highscore" + room_get_name(room), num_moves);
		ini_close();
	}
	if(!global.is_normal_mode){
		global.total_time += HUD.secs;
		if(HUD.speedrun_highscore > HUD.secs || HUD.speedrun_highscore == 0){
			ini_open("data.ini");
			ini_write_real("data", "speedrun_highscore" + room_get_name(room), HUD.secs);
			ini_close();
		}
		countdown_timer.countdown = 1;
		if(room == room_last)
			insert_to_leaderboard(global.total_time);
	}	
}