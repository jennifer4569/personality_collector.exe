str_leaderboard = "";

for(var i = 0; i < global.num_in_leaderboard; i++){
	str_leaderboard += string(global.leaderboard[i]) +" ";
	//if(i+1 < global.num_in_leaderboard)
	//	str_leaderboard += " ";
}

ini_open("data.ini");
ini_write_string("data", "leaderboard", str_leaderboard);
ini_close();