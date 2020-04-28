/// @description Insert description here
// You can write your code in this editor
x = view_xview + view_wview * 0.5;
y = view_yview + view_hview * 0.5;
depth = -20;

left_x = view_xview+100;
right_x = view_xview+view_wview-100;
up_y = view_yview+70;

ini_open("data.ini");
if(global.is_normal_mode)
	normal_highscore = ini_read_real("data", "normal_highscore" + room_get_name(room), 0);
else
	speedrun_highscore = ini_read_real("data", "speedrun_highscore" + room_get_name(room), 0);
ini_close();

secs = global.start_time;
global.start_time = 0;