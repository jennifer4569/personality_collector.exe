/// @description Insert description here
// You can write your code in this editor
countdown -= 0.02;
if(round(countdown) <= 0){
	if(is_win){
		if(room_next(room))
			room_goto_next();
		else
			room_goto(room_first);
	}
	if(is_lose){
		room_restart();
	}
}