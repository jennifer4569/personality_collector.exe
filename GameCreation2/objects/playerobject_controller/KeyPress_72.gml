/// @description Insert description here
// You can write your code in this editor
if(!in_help){
	var inst = instance_create_depth(0,0,-10,help);
	inst.index = help_index;
	help_index++;
	if (help_index == 2) help_index = 0;
	in_help = true;
}
else{
	instance_destroy(help);
	in_help = false;	
}