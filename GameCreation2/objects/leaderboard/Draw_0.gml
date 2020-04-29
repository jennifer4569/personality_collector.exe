/// @description Insert description here
// You can write your code in this editor

draw_sprite(menubox,0,x,y);

draw_set_font(font1);
draw_text(x,view_yview+200,"Leaderboard:");
draw_set_font(font0);

for(i = 0; i < 10; i++){
	if(i >= global.num_in_leaderboard)
		draw_text(x,view_yview+300 + i*30,string(i+1)+". --:--:--");
	else
		draw_text(x,view_yview+300 + i*30,string(i+1)+ ". " + ms_to_string(global.leaderboard[i]));
}