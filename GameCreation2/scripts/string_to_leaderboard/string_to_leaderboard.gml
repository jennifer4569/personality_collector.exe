str = argument0;
sub_str = "";
global.num_in_leaderboard = 0;
if(str == "" || str == " ") return;
for(var i = 1; i < string_length(str)+1; i++){
    var next_char = string_char_at(str,i);
    if (next_char != " ")
        sub_str += next_char;
	else{
		global.leaderboard[global.num_in_leaderboard] = real(sub_str);
		sub_str = "";
		global.num_in_leaderboard++;
	}
}
if(global.num_in_leaderboard > 10) global.num_in_leaderboard = 10;