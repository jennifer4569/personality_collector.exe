/// @description EM_INIT AND EM_ADD_SECTION
global.num_levels = 0;
while(room_exists(global.num_levels+3)){
	global.num_levels++;	
}
global.lvls_inpage = 5;
global.start_lvl = 0;
init_lvl_select();