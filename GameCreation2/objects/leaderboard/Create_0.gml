/// @description Insert description here
// You can write your code in this editor
x = view_xview + view_wview * 0.5;
y = view_yview + view_hview * 0.5;
ini_open("data.ini");
lb = ini_read_string("data", "leaderboard", "");
string_to_leaderboard(lb);
ini_close();