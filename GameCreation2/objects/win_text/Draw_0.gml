/// @description Insert description here
// You can write your code in this editor
//if(win_countdown != 0)
draw_sprite(textbox,0,x,y);
draw_set_font(font0);
if(is_win){
	if(room_next(room))
		draw_text(x,y-30,"Success! Initiating next level...");
	else
		draw_text(x,y-30,"Success! Acquired all material!");
	draw_text(x,y,round(countdown));
}
if(is_lose){
	draw_text(x,y-30,"Fatal Error! Rebooting program...");
	draw_text(x,y,round(countdown));	
}