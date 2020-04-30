/// @description EM_INIT AND EM_ADD_SECTION
global.num_levels = 0;
while(room_exists(global.num_levels+2)){
	global.num_levels++;	
}
if(global.is_normal_mode){
	em_init(
	    5,
	    0,
	    32,
	    ">",
	    room_width/2,
	    room_height/2,
	    fa_center,
	    fa_top,
	    c_white,
	    "Paused",
	    100,
	    0,
	    0,
	    2,
	    2,
	    0
	);

	em_add_section("Resume",0);
	em_add_section("Restart",0);
	em_add_section("Help",0);
	em_add_section("Back to Main Menu",0);
	em_add_section("Exit",0);
}
else{
	em_init(
	    4,
	    0,
	    32,
	    ">",
	    room_width/2,
	    room_height/2,
	    fa_center,
	    fa_top,
	    c_white,
	    "Paused",
	    100,
	    0,
	    0,
	    2,
	    2,
	    0
	);

	em_add_section("Resume",0);
	em_add_section("Restart",0);
	em_add_section("Back to Main Menu",0);
	em_add_section("Exit",0);
}