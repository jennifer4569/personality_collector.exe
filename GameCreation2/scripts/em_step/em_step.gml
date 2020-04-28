/// @description em_step(key_up,key_down,key_enter);
/// @param key_up
/// @param key_down
/// @param key_enter
//Place it on step event of the menu object
/*
**ARGUMENTS
* [0] key_up :: The key required to go up in the menu, you can bind whatever you want
* [1] key_down :: The key required to go down, same as previous argument
* [2] key_enter :: The key required to execute action
*/

em_key_up = argument0; //Initialize the bind of key_up
em_key_down = argument1; //Initialize the bind of key_down
em_key_enter = argument2; //Initialize the bind of key_enter

var actual_string = em_section_list[| em_position];
var cur = em_cursor;

//Switch positions based to keys
if (em_key_up) { //Go up
    if (string_char_at(em_section_list[| em_position],0)==cur)
        em_section_list[| em_position] = string_delete(em_section_list[| em_position],1,1);
    if (em_position==0) em_position = em_max_position-1;
    else em_position--;
    if (em_sound!=0) audio_play_sound(em_sound,10,0);
	audio_play_sound(menu,0,false)
}

if (em_key_down) { //Go down
    if (string_char_at(em_section_list[| em_position],0)==cur)
        em_section_list[| em_position] = string_delete(em_section_list[| em_position],1,1);
    if (em_position>=em_max_position-1) em_position = 0;
    else em_position++;
    if (em_sound!=0) audio_play_sound(em_sound,10,0);
	audio_play_sound(menu,0,false)
}

//Execute the right script when a button is activated
if (em_key_enter) {
    if (em_script_list[| em_position]!=0) script_execute(em_script_list[| em_position]);
	show_debug_message(actual_string);
	
	//main menu stuff
	if(em_title == "Main Menu" || em_title == "personality_\ncollector.exe"){
		//default menu
		if(actual_string == cur + "Play"){
			em_destroy();
			init_mode_select();
		}
		else if(actual_string == cur + "Exit") game_end();
		
		//mode selection menu
		else if(actual_string == cur + "Normal Mode"){
			em_destroy();
			init_normal_select();
			global.is_normal_mode = true;
		}
		else if(actual_string == cur + "Speedrun Mode"){
			em_destroy();
			init_speedrun_select();
			global.is_normal_mode = false;
			global.total_time = 0;
		}
		else if(actual_string == cur + "Back to Main Menu"){
			em_destroy();
			room_goto(0);
		}
		
		//
		else if(actual_string == cur + "Start Game") room_goto(2);
		else if(actual_string == cur + "Level Select") room_goto(1);

		else if(actual_string == cur + "Leaderboard") {
			//leaderboard stuff here	
		}
		
		else if(actual_string == cur + "Back"){
			em_destroy();
			init_mode_select();
		}
		
		audio_play_sound(menu,0,false)
	}
	//level select stuff
	else if(em_title == "Level Select"){
		if(actual_string == cur + "Back to Main Menu") room_goto(0);
		else if(actual_string == cur + "Previous Page"){
			global.start_lvl -= global.lvls_inpage;
			em_destroy();
			init_lvl_select();
		}
		else if(actual_string == cur + "Next Page"){
			global.start_lvl += global.lvls_inpage;
			em_destroy();
			init_lvl_select();
		}
		else{
			if(global.start_lvl + em_position <= global.num_levels) 
				room_goto(global.start_lvl+em_position+2);
		}
		audio_play_sound(menu,0,false)
	}
	//pause menu
	else if(em_title == "Paused"){
		if(actual_string == cur + "Resume"){
			instance_destroy(pause_menu);
			playerobject_controller.in_pause = false;
		}
		if(actual_string == cur + "Restart"){
			room_restart();
			global.total_time += HUD.secs;
			global.start_time = HUD.secs;
		}
		if(actual_string == cur + "Back to Main Menu") room_goto(0);
		if(actual_string == cur + "Exit") game_end();
		audio_play_sound(menu,0,false)
	}
}

//Places the cursor
if (string_char_at(actual_string,0)!=cur){
	em_section_list[| em_position] = cur + actual_string;
}