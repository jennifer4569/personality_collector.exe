curr_score = argument0;

ini_open("data.ini");
lb = ini_read_string("data", "leaderboard", "");
string_to_leaderboard(lb);
ini_close();

in_leaderboard = false;
if(global.num_in_leaderboard == 0){
	global.leaderboard[0] = curr_score;
	global.num_in_leaderboard++;
}
else{
	for(i = 0; i < global.num_in_leaderboard; i++){
		if(!in_leaderboard){
			if(curr_score < global.leaderboard[i]){
				in_leaderboard = true;
				prev = global.leaderboard[i];
				global.leaderboard[i] = curr_score;
				if(global.num_in_leaderboard < 10)
					global.num_in_leaderboard++;
			}
		}
		else if(i+1 < global.num_in_leaderboard){
			next = global.leaderboard[i];
			global.leaderboard[i] = prev;
			prev = next;
		}
	}
	if(!in_leaderboard && global.num_in_leaderboard < 10){
		global.leaderboard[global.num_in_leaderboard] = curr_score;
		global.num_in_leaderboard++;
	}
	if(in_leaderboard){
		global.leaderboard[global.num_in_leaderboard-1] = prev;
	}
}
save_to_leaderboard();