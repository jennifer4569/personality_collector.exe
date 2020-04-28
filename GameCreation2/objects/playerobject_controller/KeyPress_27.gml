/// @description Insert description here
// You can write your code in this editor

if(won || lost) return;

if(!in_pause){
	instance_create_depth(0,0,-10,pause_menu);
	in_pause = true;
}
else{
	instance_destroy(pause_menu);
	in_pause = false;	
}