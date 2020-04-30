/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(menubox,0,x,y,1.5,0.4,0,c_white,1);
draw_set_font(font0);
var rname = room_get_name(room);
if (rname == "Level1") moves = 1;
else if (rname == "Level2") moves = 2;
else if (rname == "Level3") moves = 7;
else if (rname == "Level4") moves = 7;
else if (rname == "Level5") moves = 7;
else if (rname == "Level6")moves = 7;
else if (rname == "Level7") moves = 4;
else if (rname == "Level8") moves = 7;
else if (rname == "Level9") moves = 7;
else if (rname == "Level10") moves = 12;
else if (rname == "Level11") moves = 4;
else if (rname == "Level12") moves = 21;
else if (rname == "Level13") moves = 6;
else if (rname == "Level14") moves = 15;
else if (rname == "Level15") moves = 4;
else if (rname == "Level16") moves = 22;
else if (rname == "Level17") moves = 17;
else if (rname == "Level18") moves = 14;
else if (rname == "Level19") moves = 10;
else if (rname == "Level20") moves = 36;
else if (rname == "Level21") moves = 12;
else if (rname == "Level22") moves = 17;



draw_text(x,y-90,"Hinted number of moves : " +  string(moves) );
if (index == 2) index = 0;
if (index == 0) draw_text(x,y-30,"If you get stuck or lost,\n you can restart from the pause menu.");
else if (index == 1) draw_text(x,y-30,"Remember to check for walls that\n stick out to keep a player in place.");
show_tip = true;
	


