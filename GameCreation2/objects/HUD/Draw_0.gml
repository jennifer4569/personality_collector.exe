/// @description Insert description here
// You can write your code in this editor
//draw_set_colour(make_color_rgb(212, 255, 107));
draw_set_font(font1);
draw_text(x,up_y, room_get_name(room));

draw_set_font(font0);

if(global.is_normal_mode){
	draw_text(left_x+30,up_y,"High Score:");
	if(normal_highscore != 0)
		draw_text(left_x+30,up_y+30,normal_highscore);
	else
		draw_text(left_x+30,up_y+30,"-");
	draw_text(right_x,up_y,"Moves:");
	draw_text(right_x,up_y+30,playerobject_controller.num_moves);
}
else{
	
	draw_text(left_x+30,up_y,"Fastest Time:");
	draw_text(left_x+30,up_y+30,ms_to_string(speedrun_highscore));
	
	draw_text(right_x-30,up_y,"Time:");
	draw_text(right_x-30,up_y+30, ms_to_string(secs));

	draw_text(right_x-30,up_y+90,"Total Time:");
	if(playerobject_controller.won || playerobject_controller.lost)
		draw_text(right_x-30,up_y+120,ms_to_string(global.total_time));
	else
		draw_text(right_x-30,up_y+120,ms_to_string(global.total_time + secs));
}